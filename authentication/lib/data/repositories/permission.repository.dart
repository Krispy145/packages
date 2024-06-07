import "package:authentication/data/repositories/user.repository.dart";
import "package:authentication/data/sources/user/_source.dart";
import "package:authentication/utils/loggers.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/typedefs.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";

import "/data/sources/permission/_source.dart";

/// [PermissionDataRepository] is a class that defines the basic CRUD operations for the [PermissionModel] entity.
class PermissionDataRepository {
  final UserDataSourceTypes userDataSourceType;
  final UUID userId;

  /// [PermissionDataRepository] constructor.
  PermissionDataRepository({
    required this.userDataSourceType,
    required this.userId,
  });

  PermissionModel? currentPermissionModel;

  /// [getAllPermissionModels] returns a list of [PermissionModel]s.
  Future<List<PermissionModel?>> getAllPermissionModels() async {
    return _dataSourceByType(userDataSourceType).getAll();
  }

  /// [getPermissionModel] returns a single [PermissionModel].
  Future<PermissionModel?> getPermissionModel() async {
    return _dataSourceByType(userDataSourceType).getAll().then((value) {
      if (value.isNotEmpty) {
        return value.first;
      } else {
        return null;
      }
    });
  }

  /// [addAllPermissionModels] adds all [PermissionModel]s to the data source.
  Future<RequestResponse> addAllPermissionModels({
    required List<PermissionModel> permissionModels,
  }) async {
    return _dataSourceByType(userDataSourceType).addAll(permissionModels);
  }

  /// [addPermissionModel] adds a single [PermissionModel] to the data source.
  Future<Pair<RequestResponse, PermissionModel?>> addPermissionModel({
    required PermissionModel permissionModel,
  }) async {
    return _dataSourceByType(userDataSourceType).add(permissionModel);
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
        AppLogger.print("Unimplemented Data Source Type for $source", [AuthenticationLoggers.permission]);
        return FirestorePermissionDataSource(
          userId: userId,
        );
    }
  }
}
