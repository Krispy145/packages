import "package:authentication/data/models/review_model.dart";
import "package:authentication/data/models/user_model.dart";
import "package:authentication/data/sources/review/_source.dart";
import "package:authentication/domain/repositories/authentication.repository.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import "package:collection/collection.dart";
import "package:get_it/get_it.dart";
import "package:utilities/data/models/user_permissions_model.dart";
import "package:utilities/data/sources/firestore/source.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/typedefs.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

abstract class SecuredFirestoreDataSource<T, Q> extends FirestoreDataSource<T, Q> {
  SecuredFirestoreDataSource(
    super.collectionName, {
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  });

  final authRepo = GetIt.instance.get<AuthenticationRepository>();

  late final FirestoreReviewDataSource<T> reviewDataSource = FirestoreReviewDataSource(
    collectionName,
    authRepo: authRepo,
    convertDataTypeFromMap: convertDataTypeFromMap,
    convertDataTypeToMap: convertDataTypeToMap,
  );

  List<Pair<String, UserPermissionsModel?>>? get currentPermissionModel => authRepo.currentPermissionModelStream.value?.permissions.entries.map((e) => Pair(e.key, e.value)).toList();

  UserModel? get currentUser => authRepo.currentUserModelStream.value;

  Future<List<Pair<String, PermissionLevel>>> checkPermissionLevel(CRUD requestType) async {
    if (currentPermissionModel == null) {
      await getUserPermissions();
    }
    if (currentUser != null && currentUser?.role == "superAdmin") {
      return [Pair("$collectionName/all", PermissionLevel.yes)];
    }
    final results = currentPermissionModel?.map((path) {
      switch (requestType) {
        case CRUD.create:
          return Pair(path.first, path.second?.canCreate ?? PermissionLevel.no);
        case CRUD.read:
          return Pair(path.first, path.second?.canRead ?? PermissionLevel.no);
        case CRUD.update:
          return Pair(path.first, path.second?.canUpdate ?? PermissionLevel.no);
        case CRUD.delete:
          return Pair(path.first, path.second?.canDelete ?? PermissionLevel.no);
      }
    }).toList();
    return results ?? [];
  }

  /// [getUserPermissions] is a helper method that gets the user permissions for the current collection
  /// It returns a [Pair<String, UserPermissionsModel>] if the user has permissions for the collection
  Future<void> getUserPermissions() async {
    final initialPermissions = authRepo.currentPermissionModelStream.value;

    try {
      if (initialPermissions == null) return;

      final userPermissionsPairs = _evaluatePermissions(initialPermissions.permissions);
      final collectionPairs = _changePathToPairs("$collectionName/all");

      final foundPaths = <String>[];
      for (var i = 0; i < userPermissionsPairs.length; i++) {
        final isFirstEqual = collectionPairs.any((element) => element.first == userPermissionsPairs[i].first);
        if (isFirstEqual) {
          foundPaths.add("${userPermissionsPairs[i].first}/${userPermissionsPairs[i].second}");
        }
      }
      final results = foundPaths.map((path) {
        return Pair(path, initialPermissions.permissions[path]);
      }).toList();
      authRepo.setPermissionModel(results);
    } catch (e) {
      AppLogger.print("Error: $e", [UtilitiesLoggers.firestoreDataSource]);
    }
  }

  @override
  Future<T?> get(String id) async {
    final checkPermissions = await checkPermissionLevel(CRUD.read);
    final isCheckPermissionsNotEqualToId = !checkPermissions.any((element) => element.first.split("/").last == id);
    final isCheckPermissionsNotEqualToAll = !checkPermissions.any((element) => element.first.split("/").last == "all");
    if (isCheckPermissionsNotEqualToAll || isCheckPermissionsNotEqualToId) {
      return null;
    }
    return super.get(id);
  }

  @override
  Future<List<T?>> getAll() async {
    try {
      final checkPermissions = await checkPermissionLevel(CRUD.read);
      if (checkPermissions.any((element) => element.first == "all")) {
        final _specificIDOverrideRemove = checkPermissions
            .where((element) => element.first.split("/").last != "all" && element.second == PermissionLevel.no)
            .map(
              (e) => e.first.split("/").last,
            )
            .toList();
        final query = collectionReference.where("id", whereNotIn: _specificIDOverrideRemove);
        final querySnapshot = await query.get();
        AppLogger.print("Get All Success: ${querySnapshot.docs.length}", [UtilitiesLoggers.firestoreDataSource]);
        return querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList();
      } else {
        final _specificIDOverrideAdd = checkPermissions
            .where((element) => element.first.split("/").last != "all" && element.second == PermissionLevel.yes)
            .map(
              (e) => e.first.split("/").last,
            )
            .toList();
        final query = collectionReference.where("id", whereIn: _specificIDOverrideAdd);
        final querySnapshot = await query.get();
        AppLogger.print("Get All with Permissions Success: ${querySnapshot.docs.length}", [UtilitiesLoggers.firestoreDataSource]);
        return querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList();
      }
    } catch (e) {
      AppLogger.print("Error: $e", [UtilitiesLoggers.firestoreDataSource]);
      return [];
    }
  }

  @override
  Future<RequestResponse> delete(String id) async {
    final checkPermissions = await checkPermissionLevel(CRUD.delete);
    final writeResult = await _checkWritePermissions(checkPermissions, CRUD.delete, id: id);
    if (writeResult != RequestResponse.success) {
      return writeResult;
    }
    return super.delete(id);
  }

  @override
  Future<RequestResponse> deleteAll() async {
    try {
      final checkPermissions = await checkPermissionLevel(CRUD.delete);
      if (checkPermissions.any((element) => element.first == "all")) {
        final _specificIDOverrideRemove = checkPermissions
            .where((element) => element.first.split("/").last != "all" && element.second == PermissionLevel.no)
            .map(
              (e) => e.first.split("/").last,
            )
            .toList();
        final query = collectionReference.where("id", whereNotIn: _specificIDOverrideRemove);
        final querySnapshot = await query.get();
        final result = <String, dynamic>{};
        for (final doc in querySnapshot.docs) {
          await doc.reference.delete();
          result[doc.id] = true;
        }
        AppLogger.print("Delete All Success: ${result.length}", [UtilitiesLoggers.firestoreDataSource]);
        return RequestResponse.success;
      } else {
        final _specificIDOverrideAdd = checkPermissions
            .where((element) => element.first.split("/").last != "all" && element.second == PermissionLevel.yes)
            .map(
              (e) => e.first.split("/").last,
            )
            .toList();
        final query = collectionReference.where("id", whereIn: _specificIDOverrideAdd);
        final querySnapshot = await query.get();
        final result = <String, dynamic>{};
        for (final doc in querySnapshot.docs) {
          await doc.reference.delete();
          result[doc.id] = true;
        }
        AppLogger.print("Delete All with Permissions Success: ${result.length}", [UtilitiesLoggers.firestoreDataSource]);
        return RequestResponse.success;
      }
    } catch (e) {
      AppLogger.print("Error: $e", [UtilitiesLoggers.firestoreDataSource]);
      return RequestResponse.failure;
    }
  }

  @override
  Future<RequestResponse> update(String id, T data) async {
    final checkPermissions = await checkPermissionLevel(CRUD.update);
    final writeResult = await _checkWritePermissions(checkPermissions, CRUD.update, id: id, data: data);
    if (writeResult != RequestResponse.success) {
      return writeResult;
    }
    return super.update(id, data);
  }

  @override
  Future<RequestResponse> updateAll(Map<String, T> data) async {
    final checkPermissions = await checkPermissionLevel(CRUD.update);
    if (checkPermissions.any((element) => element.first == "all")) {
      final _specificIDOverrideRemove = checkPermissions
          .where((element) => element.first.split("/").last != "all" && element.second == PermissionLevel.no)
          .map(
            (e) => e.first.split("/").last,
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
      AppLogger.print("Update All Success: ${result.length}", [UtilitiesLoggers.firestoreDataSource]);
      return RequestResponse.success;
    } else {
      final result = <String, dynamic>{};
      final batch = firestore.batch();
      final permissableData = data.entries
          .where(
            (element) => checkPermissions.any((permission) => permission.first == element.key && permission.second == PermissionLevel.yes),
          )
          .toList();

      permissableData.where((element) => element.key.isNotEmpty).forEach((element) {
        final reference = collectionReference.doc(element.key);
        batch.set(reference, convertDataTypeToMap(element.value));
        result[element.key] = true;
      });
      await batch.commit();
      AppLogger.print("Update All with Permissions Success: ${result.length}", [UtilitiesLoggers.firestoreDataSource]);
      return RequestResponse.success;
    }
  }

  @override
  Future<Pair<RequestResponse, T?>> add(T data) async {
    final checkPermissions = await checkPermissionLevel(CRUD.create);
    final writeResult = await _checkWritePermissions(checkPermissions, CRUD.create, data: data);
    if (writeResult != RequestResponse.success || writeResult != RequestResponse.underReview) {
      return Pair(writeResult, null);
    }
    return super.add(data);
  }

  @override
  Future<RequestResponse> addAll(List<T> data) async {
    final checkPermissions = await checkPermissionLevel(CRUD.create);

    final isCheckPermissionsNotEqualToAll = !checkPermissions.any((element) => element.first.split("/").last == "all");
    if (isCheckPermissionsNotEqualToAll) {
      print("No permission to add all");
      return RequestResponse.denied;
    }
    return super.addAll(data);
  }

  @override
  Future<T?> search(Q query) async {
    try {
      final checkPermissions = await checkPermissionLevel(CRUD.read);
      if (checkPermissions.any((element) => element.first == "all")) {
        final _specificIDOverrideRemove = checkPermissions
            .where((element) => element.first.split("/").last != "all" && element.second == PermissionLevel.no)
            .map(
              (e) => e.first.split("/").last,
            )
            .toList();
        final newQuery = buildQuery(query, collectionReference).where("id", whereNotIn: _specificIDOverrideRemove);
        final querySnapshot = await newQuery.get();
        AppLogger.print("Get All Success: ${querySnapshot.docs.length}", [UtilitiesLoggers.firestoreDataSource]);
        return querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList().firstOrNull;
      } else {
        var newQuery = buildQuery(query, collectionReference);
        final _specificIDOverrideAdd = checkPermissions
            .where((element) => element.first.split("/").last != "all" && element.second == PermissionLevel.yes)
            .map(
              (e) => e.first.split("/").last,
            )
            .toList();
        newQuery = collectionReference.where("id", whereIn: _specificIDOverrideAdd);
        final querySnapshot = await newQuery.get();
        AppLogger.print("Get All with Permissions Success: ${querySnapshot.docs.length}", [UtilitiesLoggers.firestoreDataSource]);
        return querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList().firstOrNull;
      }
    } catch (e) {
      AppLogger.print("Error: $e", [UtilitiesLoggers.firestoreDataSource]);
      return null;
    }
  }

  @override
  Future<List<T?>> searchAll(Q query) async {
    try {
      final checkPermissions = await checkPermissionLevel(CRUD.read);
      if (checkPermissions.any((element) => element.first == "all")) {
        final _specificIDOverrideRemove = checkPermissions
            .where((element) => element.first.split("/").last != "all" && element.second == PermissionLevel.no)
            .map(
              (e) => e.first.split("/").last,
            )
            .toList();
        final newQuery = buildQuery(query, collectionReference).where("id", whereNotIn: _specificIDOverrideRemove);
        final querySnapshot = await newQuery.get();
        AppLogger.print("Get All Success: ${querySnapshot.docs.length}", [UtilitiesLoggers.firestoreDataSource]);
        return querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList();
      } else {
        var newQuery = buildQuery(query, collectionReference);
        final _specificIDOverrideAdd = checkPermissions
            .where((element) => element.first.split("/").last != "all" && element.second == PermissionLevel.yes)
            .map(
              (e) => e.first.split("/").last,
            )
            .toList();
        newQuery = collectionReference.where("id", whereIn: _specificIDOverrideAdd);
        final querySnapshot = await newQuery.get();
        AppLogger.print("Get All with Permissions Success: ${querySnapshot.docs.length}", [UtilitiesLoggers.firestoreDataSource]);
        return querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList();
      }
    } catch (e) {
      AppLogger.print("Error: $e", [UtilitiesLoggers.firestoreDataSource]);
      return [];
    }
  }

  Future<RequestResponse> _checkWritePermissions(List<Pair<String, PermissionLevel>> checkPermissions, CRUD crud, {UUID? id, T? data}) async {
    final isCheckPermissionsEqualToId =
        checkPermissions.firstWhereOrNull((element) => element.first.split("/").last == id && (element.second == PermissionLevel.yes || element.second == PermissionLevel.review));
    final isCheckPermissionsEqualToAll =
        checkPermissions.firstWhereOrNull((element) => element.first.split("/").last == "all" && (element.second == PermissionLevel.yes || element.second == PermissionLevel.review));
    if (!(isCheckPermissionsEqualToAll != null || isCheckPermissionsEqualToId != null)) {
      return RequestResponse.denied;
    }
    if (isCheckPermissionsEqualToAll?.second == PermissionLevel.review || isCheckPermissionsEqualToId?.second == PermissionLevel.review) {
      id ??= collectionReference.doc().id;
      final result = await reviewDataSource.updateReviewModel(
        id,
        ReviewModel(
          id: id,
          crud: crud,
          documentReference: collectionReference.doc(id).path,
          user: currentUser!.reference(),
          writeData: data != null ? convertDataTypeToMap(data) : null,
          createdAt: DateTime.now(),
        ),
      );
      if (result == RequestResponse.failure) {
        return RequestResponse.failure;
      }
      return RequestResponse.underReview;
    }
    return RequestResponse.success;
  }

  /// [_changePathToPairs] is a helper method that converts a list of strings
  /// to a list of [Pair<String, UUID>].
  /// This is used to change the path to a list of Collection and Document References
  List<Pair<String, UUID>> _changePathToPairs(String path) {
    final result = <Pair<String, UUID>>[];
    final pathList = path.split("/");
    if (pathList.length.isEven) {
      for (var i = 0; i < pathList.length; i += 2) {
        result.add(Pair(pathList[i], pathList[i + 1]));
      }
    }
    return result;
  }

  /// [_evaluatePermissions] is a helper method that evaluates the permissions of the user
  /// It looks for the mapped collection and document references in the user permissions
  List<Pair<String, UUID>> _evaluatePermissions(
    Map<String, UserPermissionsModel> userPermissions,
  ) {
    final result = <Pair<String, UUID>>[];
    for (final key in userPermissions.keys) {
      result.addAll(_changePathToPairs(key));
    }
    return result;
  }

  @override
  Query<Map<String, dynamic>> buildQuery(Q query, Query<Map<String, dynamic>> collectionReference);
}
