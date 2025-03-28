import "package:authentication/data/repositories/permission.repository.dart";
import "package:authentication/data/repositories/user.repository.dart";
import "package:authentication/data/sources/permission/_source.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";

import "/data/repositories/_repositories.dart";

extension PermissionDataSourceTypeExtension on UserDataSourceTypes {
  /// [PermissionDataSource] by type
  PermissionDataSource get source {
    switch (this) {
      case UserDataSourceTypes.firestore:
        return FirestorePermissionDataSource();
      case UserDataSourceTypes.supabase:
      case UserDataSourceTypes.api:
        AppLogger.print("Unimplemented Data Source Type for $this", []);
        return FirestorePermissionDataSource();
    }
  }
}

/// [PermissionRepository] is a class that defines the basic CRUD operations for the [PermissionModel] entity.
class PermissionRepository {
  final UserDataSourceTypes sourceType;
  final PermissionDataRepository _permissionDataRepository =
      DataRepositories.instance.permission;

  /// [PermissionRepository] constructor.
  PermissionRepository({
    required this.sourceType,
  });

  ResponseModel? _lastResponse;

  /// [getAllPermissionModels] fetches all [PermissionModel]s from the data source.
  Future<Pair<RequestResponse, List<PermissionModel?>>>
      getAllPermissionModels() {
    return _permissionDataRepository.getAllPermissionModels(
      source: sourceType.source,
    );
  }

  /// [getPagedPermissionModels] fetches a page of [PermissionModel]s from the data source.
  Future<Pair<RequestResponse, List<PermissionModel?>>>
      getPagedPermissionModels({
    int? limit,
    bool refresh = false,
  }) async {
    final _response = await _permissionDataRepository.getPagedPermissionModels(
      source: sourceType.source,
      limit: limit,
      lastResponse: refresh ? null : _lastResponse,
    );
    _lastResponse = _response.second.first;
    return Pair(_response.first, _response.second.second);
  }

  /// [getPermissionModel] fetches a single [PermissionModel] from the data source.
  Future<Pair<RequestResponse, PermissionModel?>> getPermissionModel(
    String id,
  ) {
    return _permissionDataRepository.getPermissionModel(
      source: sourceType.source,
      id: id,
    );
  }

  /// [addPermissionModel] addits a single [PermissionModel] to the data source.
  Future<Pair<RequestResponse, PermissionModel?>> addPermissionModel(
    PermissionModel permissionModel,
  ) {
    return _permissionDataRepository.addPermissionModel(
      source: sourceType.source,
      permissionModel: permissionModel,
    );
  }

  /// [updatePermissionModel] updates a single [PermissionModel] in the data source.
  Future<RequestResponse> updatePermissionModel(
    PermissionModel permissionModel,
  ) {
    return _permissionDataRepository.updatePermissionModel(
      source: sourceType.source,
      permissionModel: permissionModel,
    );
  }

  /// [updateAllPermissionModels] updates all [PermissionModel]s in the data source.
  Future<RequestResponse> updateAllPermissionModels(
    Map<String, PermissionModel> permissionModel,
  ) {
    return _permissionDataRepository.updateAllPermissionModels(
      source: sourceType.source,
      permissionModels: permissionModel,
    );
  }

  /// [addAllPermissionModels] adds all [PermissionModel]s to the data source.
  Future<RequestResponse> addAllPermissionModels(
    List<PermissionModel> permissionModels,
  ) {
    return _permissionDataRepository.addAllPermissionModels(
      source: sourceType.source,
      permissionModels: permissionModels,
    );
  }

  /// [deletePermissionModel] deletes a single [PermissionModel] from the data source.
  Future<RequestResponse> deletePermissionModel(String id) {
    return _permissionDataRepository.deletePermissionModel(
      source: sourceType.source,
      id: id,
    );
  }
}
