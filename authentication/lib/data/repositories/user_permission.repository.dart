import "package:authentication/data/repositories/user.repository.dart";
import "package:authentication/data/sources/user/_source.dart";
import "package:authentication/utils/loggers.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/typedefs.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";

import "/data/sources/permission/_source.dart";

/// [UserPermissionDataRepository] is a class that defines the basic CRUD operations for the [PermissionModel] entity.
class UserPermissionDataRepository {
  final UserDataSourceTypes userDataSourceType;
  final UUID userId;

  /// [UserPermissionDataRepository] constructor.
  UserPermissionDataRepository({
    required this.userDataSourceType,
    required this.userId,
  });

  /// [getPermissionModel] returns a single [PermissionModel].
  Future<Pair<RequestResponse, PermissionModel?>> getPermissionModel() async {
    return _dataSourceByType(userDataSourceType).getAll().then((value) {
      if (value.second.isNotEmpty) {
        return Pair(value.first, value.second.first);
      } else {
        return Pair(value.first, null);
      }
    });
  }

  /// [updatePermissionModel] addits a single [PermissionModel] to the data source.
  Future<RequestResponse> updatePermissionModel({
    required PermissionModel permissionModel,
  }) async {
    return _dataSourceByType(userDataSourceType).update(permissionModel.id, permissionModel);
  }

  /// [deletePermissionModel] deletes a single [PermissionModel] from the data source.
  Future<RequestResponse> deletePermissionModel({
    required String id,
  }) async {
    return _dataSourceByType(userDataSourceType).delete(id);
  }

  /// [_dataSourceByType] returns the appropriate [UserDataSource] based on the given [UserDataSourceTypes].
  /// Default is [FirestoreUserDataSource].
  /// This can be in local, an api, or firestore.
  PermissionDataSource _dataSourceByType(UserDataSourceTypes source) {
    switch (source) {
      case UserDataSourceTypes.firestore:
        return FirestorePermissionDataSource(
          userId: userId,
        );
      default:
        AppLogger.print(
          "Unimplemented Data Source Type for $source",
          [AuthenticationLoggers.permission],
        );
        return FirestorePermissionDataSource(
          userId: userId,
        );
    }
  }
}
