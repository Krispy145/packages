import "package:authentication/data/models/review_model.dart";
import "package:authentication/data/models/user_model.dart";
import "package:authentication/data/sources/review/_source.dart";
import "package:authentication/utils/loggers.dart";
import "package:collection/collection.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/data/models/user_permissions_model.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/typedefs.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";

class PermissionChecker<T> {
  /// [userPermissions] is the user permissions model to check against
  final PermissionModel userPermissions;

  /// [dataReference] is the name of the data reference to check permissions for
  final String dataReference;

  /// [PermissionChecker] constructor
  PermissionChecker({
    required this.userPermissions,
    required this.dataReference,
  });

  late List<Pair<String, UserPermissionsModel?>>? currentUserPermissionModel = userPermissions.permissions.entries
      .map(
        (e) => Pair(e.key, e.value),
      )
      .toList();

  List<Pair<String, PermissionLevel>> checkPermissionLevel(
    CRUD requestType,
  ) {
    if (currentUserPermissionModel == null) {
      getUserPermissions();
    }
    if (userPermissions.role == "superAdmin") {
      return [Pair("$dataReference/all", PermissionLevel.yes)];
    }
    final results = currentUserPermissionModel?.map((path) {
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

  bool checkReadPermissions() {
    final permissionsList = checkPermissionLevel(CRUD.read);
    final isCheckPermissionsEqualToAll = permissionsList.firstWhereOrNull(
      (element) => element.first == "$dataReference/all" && element.second == PermissionLevel.yes,
    );
    return isCheckPermissionsEqualToAll?.second == PermissionLevel.yes;
  }

  /// [getUserPermissions] is a helper method that gets the user permissions for the current collection
  /// It returns a [Pair<String, UserPermissionsModel>] if the user has permissions for the collection
  void getUserPermissions() {
    try {
      final userPermissionsPairs = _evaluatePermissions(userPermissions.permissions);
      final collectionPairs = _changePathToPairs("$dataReference/all");

      final foundPaths = <String>[];
      for (var i = 0; i < userPermissionsPairs.length; i++) {
        final isFirstEqual = collectionPairs.any((element) => element.first == userPermissionsPairs[i].first);
        if (isFirstEqual) {
          foundPaths.add(
            "${userPermissionsPairs[i].first}/${userPermissionsPairs[i].second}",
          );
        }
      }
      final results = foundPaths.map((path) {
        return Pair(path, userPermissions.permissions[path]);
      }).toList();
      currentUserPermissionModel = results;
    } catch (e) {
      AppLogger.print("Error: $e", [AuthenticationLoggers.permission]);
    }
  }

  Pair<bool, bool> checkPermissionsForPage({
    required List<Pair<String, PermissionLevel>> checkedPermissions,
  }) {
    final referenceNameEqualsFirst = checkedPermissions.any(
      (element) => element.first.split("/").first == dataReference && element.second == PermissionLevel.yes,
    );
    final secondEqualsAll = checkedPermissions.any(
      (element) => element.second == PermissionLevel.yes && element.first.split("/").last == "all",
    );

    return Pair(referenceNameEqualsFirst, secondEqualsAll);
  }

  Future<RequestResponse> checkWritePermissions<U extends UserModel?>({
    UUID? sourceId,
    required CRUD crud,
    required U user,
    required String collectionName,
  }) async {
    final permissionsList = checkPermissionLevel(crud);
    final isCheckPermissionsEqualToId = permissionsList.firstWhereOrNull(
      (element) {
        final _collectionNameCheck = element.first.split("/").first == collectionName;
        return _collectionNameCheck && element.first.split("/").last == sourceId && (element.second == PermissionLevel.yes || element.second == PermissionLevel.review);
        // return element.first.split("/").last == sourceId && (element.second == PermissionLevel.yes || element.second == PermissionLevel.review);
      },
    );
    final isCheckPermissionsEqualToAll = permissionsList.firstWhereOrNull(
      (element) {
        final _collectionNameCheck = element.first.split("/").first == collectionName;
        return _collectionNameCheck && element.first.split("/").last == "all" && (element.second == PermissionLevel.yes || element.second == PermissionLevel.review);
        // return element.first.split("/").last == "all" && (element.second == PermissionLevel.yes || element.second == PermissionLevel.review);
      },
    );
    if (!(isCheckPermissionsEqualToAll != null || isCheckPermissionsEqualToId != null)) {
      return RequestResponse.denied;
    }

    if (isCheckPermissionsEqualToAll?.second == PermissionLevel.review || isCheckPermissionsEqualToId?.second == PermissionLevel.review) {
      return RequestResponse.underReview;
    }
    return RequestResponse.success;
  }

  Future<RequestResponse> addForReview<Resp extends ResponseModel, U extends UserModel?>({
    required UUID sourceId,
    required String dataSourceReference,
    CRUD crud = CRUD.create,
    Map<String, dynamic>? dataMap,
    required String dataTitle,
    required U currentUser,
    required ReviewDataSource<Resp, T> reviewDataSource,
  }) async {
    if (currentUser == null) {
      return RequestResponse.failure;
    }
    return reviewDataSource.updateReviewModel(
      sourceId,
      ReviewModel(
        id: sourceId,
        crud: crud,
        title: dataTitle,
        documentReference: dataSourceReference,
        user: currentUser,
        writeData: dataMap,
        createdAtTimestamp: DateTime.now(),
      ),
    );
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
}
