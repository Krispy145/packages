import "package:authentication/data/models/review_model.dart";
import "package:authentication/data/models/user_model.dart";
import "package:authentication/data/sources/review/_source.dart";
import "package:authentication/utils/permissions_checker.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import "package:collection/collection.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/data/models/user_permissions_model.dart";
import "package:utilities/data/sources/firestore/source.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

abstract class SecuredFirestoreDataSource<U extends UserModel, T, Q> extends FirestoreDataSource<T, Q> {
  final U currentUser;
  final PermissionModel userPermissions;
  SecuredFirestoreDataSource(
    super.collectionName, {
    required this.currentUser,
    required this.userPermissions,
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  });

  late final FirestoreReviewDataSource<T> reviewDataSource = FirestoreReviewDataSource(
    collectionName,
    currentUserPermissions: userPermissions,
    convertDataTypeFromMap: convertDataTypeFromMap,
    convertDataTypeToMap: convertDataTypeToMap,
  );
  late final permissionChecker = PermissionChecker<T>(dataReference: collectionName, userPermissions: userPermissions);

  Future<RequestResponse> checkWritePermissions({
    required String? sourceId,
    required CRUD crud,
  }) {
    return permissionChecker.checkWritePermissions(
      sourceId: sourceId,
      crud: crud,
      user: currentUser,
    );
  }

  @override
  Future<Pair<RequestResponse, T?>> get(String id) async {
    final checkPermissions = permissionChecker.checkPermissionLevel(CRUD.read);
    final permissionsOverview = PermissionsSummary.fromPermissionLevel(checkPermissions);
    // final isCheckPermissionsNotEqualToId = !checkPermissions.any((element) => element.first.split("/").last == id);
    // final isCheckPermissionsNotEqualToAll = !checkPermissions.any((element) => element.first.split("/").last == "all");
    // if (isCheckPermissionsNotEqualToAll || isCheckPermissionsNotEqualToId) {
    if (permissionsOverview.all || permissionsOverview.include.contains(id)) {
      return super.get(id);
    }
    return const Pair(RequestResponse.denied, null);
  }

  @override
  Future<Pair<RequestResponse, List<T?>>> getAll() async {
    try {
      final checkPermissions = permissionChecker.checkPermissionLevel(CRUD.read);
      final permissionsOverview = PermissionsSummary.fromPermissionLevel(checkPermissions);
      final firestoreQuery = collectionReference.withPermissionsOverview(permissionsOverview);
      if (firestoreQuery == null) {
        return const Pair(RequestResponse.denied, []);
      }
      // if (checkPermissions.any((element) => element.first == "all")) {
      //   final _specificIDOverrideRemove = checkPermissions
      //       .where(
      //         (element) => element.first.split("/").last != "all" && element.second == PermissionLevel.no,
      //       )
      //       .map(
      //         (e) => e.first.split("/").last,
      //       )
      //       .toList();
      //   if (_specificIDOverrideRemove.isNotEmpty) {
      //     final query = collectionReference.where(
      //       "id",
      //       whereNotIn: _specificIDOverrideRemove,
      //     );
      final querySnapshot = await firestoreQuery.get();

      if (querySnapshot.docs.isEmpty) {
        return const Pair(RequestResponse.failure, []);
      }

      AppLogger.print(
        "Get All Success: ${querySnapshot.docs.length}",
        [UtilitiesLoggers.firestoreDataSource],
      );
      final result = querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList();
      return Pair(RequestResponse.success, result);
      //   }
      //   return const Pair(RequestResponse.denied, []);
      // } else {
      //   final _specificIDOverrideAdd = checkPermissions
      //       .where(
      //         (element) => element.first.split("/").last != "all" && element.second == PermissionLevel.yes,
      //       )
      //       .map(
      //         (e) => e.first.split("/").last,
      //       )
      //       .toList();
      //   if (_specificIDOverrideAdd.isEmpty) {
      //     return const Pair(RequestResponse.denied, []);
      //   }
      //   final query = collectionReference.where("id", whereIn: _specificIDOverrideAdd);
      //   final querySnapshot = await query.get();
      //   if (querySnapshot.docs.isEmpty) {
      //     return const Pair(RequestResponse.failure, []);
      //   }
      //   AppLogger.print(
      //     "Get All with Permissions Success: ${querySnapshot.docs.length}",
      //     [UtilitiesLoggers.firestoreDataSource],
      //   );
      //   final result = querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList();
      //   return Pair(RequestResponse.success, result);
      // }
    } catch (e) {
      AppLogger.print("Error: $e", [UtilitiesLoggers.firestoreDataSource]);
      return const Pair(RequestResponse.failure, []);
    }
  }

  @override
  Future<RequestResponse> delete(String id) async {
    final writeResult = await permissionChecker.checkWritePermissions(
      sourceId: id,
      crud: CRUD.delete,
      user: currentUser,
    );
    if (writeResult == RequestResponse.underReview) {
      final reviewData = await get(id);
      if (reviewData.second == null) {
        return RequestResponse.failure;
      }
      final result = await permissionChecker.addForReview(
        sourceId: id,
        dataSourceReference: collectionReference.doc(id).path,
        crud: CRUD.delete,
        dataMap: convertDataTypeToMap(reviewData.second as T),
        currentUser: currentUser,
        reviewDataSource: reviewDataSource,
      );

      if (result == RequestResponse.failure) {
        return RequestResponse.failure;
      }
    }

    if (writeResult != RequestResponse.success) {
      return writeResult;
    }
    return super.delete(id);
  }

  @override
  Future<RequestResponse> deleteAll() async {
    try {
      final checkPermissions = permissionChecker.checkPermissionLevel(CRUD.delete);
      if (checkPermissions.any((element) => element.first.getLastSection() == "all")) {
        final _specificIDOverrideRemove = checkPermissions
            .where(
              (element) => element.first.getLastSection() != "all" && element.second == PermissionLevel.no,
            )
            .map(
              (e) => e.first.getLastSection(),
            )
            .toList();
        final query = collectionReference.where(
          "id",
          whereNotIn: _specificIDOverrideRemove,
        );
        final querySnapshot = await query.get();
        final result = <String, dynamic>{};
        for (final doc in querySnapshot.docs) {
          await doc.reference.delete();
          result[doc.id] = true;
        }
        AppLogger.print(
          "Delete All Success: ${result.length}",
          [UtilitiesLoggers.firestoreDataSource],
        );
        return RequestResponse.success;
      } else {
        final _specificIDOverrideAdd = checkPermissions
            .where(
              (element) => element.first.getLastSection() != "all" && element.second == PermissionLevel.yes,
            )
            .map(
              (e) => e.first.getLastSection(),
            )
            .toList();
        final query = collectionReference.where("id", whereIn: _specificIDOverrideAdd);
        final querySnapshot = await query.get();
        final result = <String, dynamic>{};
        for (final doc in querySnapshot.docs) {
          await doc.reference.delete();
          result[doc.id] = true;
        }
        AppLogger.print(
          "Delete All with Permissions Success: ${result.length}",
          [UtilitiesLoggers.firestoreDataSource],
        );
        return RequestResponse.success;
      }
    } catch (e) {
      AppLogger.print("Error: $e", [UtilitiesLoggers.firestoreDataSource]);
      return RequestResponse.failure;
    }
  }

  @override
  Future<RequestResponse> update(String id, T data) async {
    final writeResult = await permissionChecker.checkWritePermissions(
      sourceId: id,
      crud: CRUD.update,
      user: currentUser,
    );
    if (writeResult == RequestResponse.underReview) {
      final result = await permissionChecker.addForReview(
        sourceId: id,
        dataSourceReference: collectionReference.doc(id).path,
        crud: CRUD.update,
        dataMap: convertDataTypeToMap(data),
        currentUser: currentUser,
        reviewDataSource: reviewDataSource,
      );

      if (result == RequestResponse.failure) {
        return RequestResponse.failure;
      }
    }
    if (writeResult != RequestResponse.success) {
      return writeResult;
    }
    return super.update(id, data);
  }

  @override
  Future<RequestResponse> updateAll(Map<String, T> data) async {
    final checkPermissions = permissionChecker.checkPermissionLevel(CRUD.update);
    if (checkPermissions.any((element) => element.first.getLastSection() == "all")) {
      final _specificIDOverrideRemove = checkPermissions
          .where(
            (element) => element.first.getLastSection() != "all" && element.second == PermissionLevel.no,
          )
          .map(
            (e) => e.first.getLastSection(),
          )
          .toList();
      final result = <String, dynamic>{};
      final batch = firestore.batch();
      data.forEach((id, item) {
        final reference = collectionReference.doc(id);
        if (_specificIDOverrideRemove.contains(id)) {
          return;
        }
        batch.set(reference, convertDataTypeToMap(item));
        result[id] = true;
      });
      await batch.commit();
      AppLogger.print(
        "Update All Success: ${result.length}",
        [UtilitiesLoggers.firestoreDataSource],
      );
      return RequestResponse.success;
    } else {
      final result = <String, dynamic>{};
      final batch = firestore.batch();
      final permissableData = data.entries
          .where(
            (element) => checkPermissions.any(
              (permission) => permission.first == element.key && permission.second == PermissionLevel.yes,
            ),
          )
          .toList();

      permissableData.where((element) => element.key.isNotEmpty).forEach((element) {
        final reference = collectionReference.doc(element.key);
        batch.set(reference, convertDataTypeToMap(element.value));
        result[element.key] = true;
      });
      await batch.commit();
      AppLogger.print(
        "Update All with Permissions Success: ${result.length}",
        [UtilitiesLoggers.firestoreDataSource],
      );
      return RequestResponse.success;
    }
  }

  @override
  Future<Pair<RequestResponse, T?>> add(T data) async {
    final id = collectionReference.doc().id;
    final writeResult = await permissionChecker.checkWritePermissions(
      sourceId: id,
      crud: CRUD.create,
      user: currentUser,
    );
    if (writeResult == RequestResponse.underReview) {
      final result = await permissionChecker.addForReview(
        sourceId: id,
        dataSourceReference: collectionReference.doc(id).path,
        crud: CRUD.create,
        dataMap: convertDataTypeToMap(data),
        currentUser: currentUser,
        reviewDataSource: reviewDataSource,
      );

      if (result == RequestResponse.failure) {
        return const Pair(RequestResponse.failure, null);
      }
      return const Pair(RequestResponse.underReview, null);
    }

    if (writeResult == RequestResponse.success) {
      return super.add(data);
    }
    return Pair(writeResult, null);
  }

  @override
  Future<RequestResponse> addAll(List<T> data) async {
    final checkPermissions = permissionChecker.checkPermissionLevel(CRUD.create);

    final isCheckPermissionsNotEqualToAll = !checkPermissions.any((element) => element.first.getLastSection() == "all");
    if (isCheckPermissionsNotEqualToAll) {
      print("No permission to add all");
      return RequestResponse.denied;
    }
    return super.addAll(data);
  }

  @override
  Future<Pair<RequestResponse, T?>> search(Q query) async {
    try {
      final checkPermissions = permissionChecker.checkPermissionLevel(CRUD.read);
      final permissionsOverview = PermissionsSummary.fromPermissionLevel(checkPermissions);
      final firestoreQuery = buildQuery(query, collectionReference).withPermissionsOverview(permissionsOverview);
      if (firestoreQuery == null) {
        return const Pair(RequestResponse.denied, null);
      }
      // if (checkPermissions.any((element) => element.first == "all")) {
      //   final _specificIDOverrideRemove = checkPermissions
      //       .where(
      //         (element) => element.first.split("/").last != "all" && element.second == PermissionLevel.no,
      //       )
      //       .map(
      //         (e) => e.first.split("/").last,
      //       )
      //       .toList();
      //   if (_specificIDOverrideRemove.isNotEmpty) {
      //     final newQuery = buildQuery(query, collectionReference).where("id", whereNotIn: _specificIDOverrideRemove);
      final querySnapshot = await firestoreQuery.get();
      if (querySnapshot.docs.isEmpty) {
        return const Pair(RequestResponse.failure, null);
      }
      AppLogger.print(
        "Get All Success: ${querySnapshot.docs.length}",
        [UtilitiesLoggers.firestoreDataSource],
      );
      final result = querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList().firstOrNull;
      return Pair(RequestResponse.success, result);
      //   }
      //   return const Pair(RequestResponse.denied, null);
      // } else {
      //   var newQuery = buildQuery(query, collectionReference);
      //   final _specificIDOverrideAdd = checkPermissions
      //       .where(
      //         (element) => element.first.split("/").last != "all" && element.second == PermissionLevel.yes,
      //       )
      //       .map(
      //         (e) => e.first.split("/").last,
      //       )
      //       .toList();
      //   if (_specificIDOverrideAdd.isEmpty) {
      //     return const Pair(RequestResponse.denied, null);
      //   }
      //   newQuery = collectionReference.where("id", whereIn: _specificIDOverrideAdd);
      //   final querySnapshot = await newQuery.get();
      //   if (querySnapshot.docs.isEmpty) {
      //     return const Pair(RequestResponse.failure, null);
      //   }
      //   AppLogger.print(
      //     "Get All with Permissions Success: ${querySnapshot.docs.length}",
      //     [UtilitiesLoggers.firestoreDataSource],
      //   );
      //   final result = querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList().firstOrNull;
      //   return Pair(RequestResponse.success, result);
      // }
    } catch (e) {
      AppLogger.print("Error: $e", [UtilitiesLoggers.firestoreDataSource]);
      return const Pair(RequestResponse.failure, null);
    }
  }

  @override
  Future<Pair<RequestResponse, List<T?>>> searchAll(Q query) async {
    try {
      // var firestoreQuery = buildQuery(query, collectionReference);
      final checkPermissions = permissionChecker.checkPermissionLevel(CRUD.read);
      final permissionsOverview = PermissionsSummary.fromPermissionLevel(checkPermissions);
      final firestoreQuery = buildQuery(query, collectionReference).withPermissionsOverview(permissionsOverview);
      if (firestoreQuery == null) {
        return const Pair(RequestResponse.denied, []);
      }
      // if (permissionsOverview.all) {
      //   if (permissionsOverview.exclude.isNotEmpty) {
      //     firestoreQuery = firestoreQuery.where("id", whereNotIn: permissionsOverview.exclude);
      //   }
      // } else {
      //   if (permissionsOverview.include.isNotEmpty) {
      //     firestoreQuery = firestoreQuery.where("id", whereIn: permissionsOverview.include);
      //   } else {
      //     return const Pair(RequestResponse.denied, []);
      //   }
      // }

      final querySnapshot = await firestoreQuery.get();
      if (querySnapshot.docs.isEmpty) {
        return const Pair(RequestResponse.failure, []);
      }
      AppLogger.print("Get All Success: ${querySnapshot.docs.length}", [UtilitiesLoggers.firestoreDataSource]);
      final result = querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList();
      return Pair(RequestResponse.success, result);

      //   if (checkPermissions.any((element) => element.first.getLastSection() == "all")) {
      //     // CONTAINS ALL
      //     //
      //     // START - IDs to remove
      //     //
      //     final _specificIDOverrideRemove = checkPermissions
      //         .where((element) {
      //           return element.first.getLastSection() != "all" && element.second == PermissionLevel.no;
      //         })
      //         .map((e) => e.first.getLastSection())
      //         .toList();
      //     if (_specificIDOverrideRemove.isNotEmpty) {
      //       final newQuery = buildQuery(query, collectionReference).where("id", whereNotIn: _specificIDOverrideRemove);
      //       final querySnapshot = await newQuery.get();
      //       if (querySnapshot.docs.isEmpty) {
      //         return const Pair(RequestResponse.failure, []);
      //       }
      //       AppLogger.print(
      //         "Get All Success: ${querySnapshot.docs.length}",
      //         [UtilitiesLoggers.firestoreDataSource],
      //       );
      //       final result = querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList();
      //       return Pair(RequestResponse.success, result);
      //     }
      //     //
      //     // END - IDs to remove
      //     //
      //     return const Pair(RequestResponse.denied, []);
      //   } else {
      //     // DOESN'T CONTAIN ALL
      //     var newQuery = buildQuery(query, collectionReference);
      //     final _specificIDOverrideAdd = checkPermissions
      //         .where(
      //           (element) => element.first.getLastSection() != "all" && element.second == PermissionLevel.yes,
      //         )
      //         .map(
      //           (e) => e.first.split("/").last,
      //         )
      //         .toList();
      //     if (_specificIDOverrideAdd.isEmpty) {
      //       return const Pair(RequestResponse.denied, []);
      //     }
      //     newQuery = collectionReference.where("id", whereIn: _specificIDOverrideAdd);
      //     final querySnapshot = await newQuery.get();
      //     if (querySnapshot.docs.isEmpty) {
      //       return const Pair(RequestResponse.failure, []);
      //     }
      //     AppLogger.print(
      //       "Get All with Permissions Success: ${querySnapshot.docs.length}",
      //       [UtilitiesLoggers.firestoreDataSource],
      //     );
      //     final result = querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList();
      //     return Pair(RequestResponse.success, result);
      //   }
    } catch (e) {
      AppLogger.print("Error: $e", [UtilitiesLoggers.firestoreDataSource]);
      return const Pair(RequestResponse.failure, []);
    }
  }

  @override
  Query<Map<String, dynamic>> buildQuery(
    Q query,
    Query<Map<String, dynamic>> collectionReference,
  );
}

extension on String {
  String? getLastSection({String divider = "/"}) => split(divider).lastOrNull;
}

extension PermissionsQueryExtension on Query<Map<String, dynamic>> {
  Query<Map<String, dynamic>>? withPermissionsOverview(PermissionsSummary permissions) {
    if (permissions.all) {
      if (permissions.exclude.isNotEmpty) {
        return where("id", whereNotIn: permissions.exclude);
      } else {
        return this;
      }
    } else {
      if (permissions.include.isNotEmpty) {
        return where("id", whereIn: permissions.include);
      } else {
        return null;
      }
    }
  }
}

class PermissionsSummary {
  final bool all;
  final List<String> include;
  final List<String> exclude;

  PermissionsSummary({required this.all, required this.include, required this.exclude});

  factory PermissionsSummary.fromPermissionLevel(List<Pair<String, PermissionLevel>> permissions, {bool allowUnderReview = false}) {
    var all = false;
    final include = <String>[];
    final exclude = <String>[];
    final allowedPermissionLevels = [PermissionLevel.yes, if (allowUnderReview) PermissionLevel.review];
    for (final permission in permissions) {
      final lastSection = permission.first.getLastSection();
      if (lastSection == null) continue;
      if (lastSection == "all") {
        all = true;
      } else if (allowedPermissionLevels.contains(permission.second)) {
        include.add(lastSection);
      } else {
        exclude.add(lastSection);
      }
    }
    return PermissionsSummary(all: all, include: include, exclude: exclude);
  }
}
