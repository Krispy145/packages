import "package:utilities/data/models/permission_model.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

import "../sources/permission/_source.dart";

/// [PermissionDataRepository] is a class that defines the basic CRUD operations for the [PermissionModel] entity.
class PermissionDataRepository {
  /// [getAllPermissionModels] returns a list of [PermissionModel]s.
  Future<Pair<RequestResponse, List<PermissionModel?>>> getAllPermissionModels({required PermissionDataSource source}) async {
    return source.getAll();
  }

  /// [getPagedPermissionModels] returns a page of [PermissionModel]s.
  Future<Pair<RequestResponse, Pair<ResponseModel?, List<PermissionModel?>>>> getPagedPermissionModels({
    required PermissionDataSource source,
    int? limit,
    ResponseModel? lastResponse,
  }) async {
    return source.getPage(size: limit, lastResponse: lastResponse);
  }

  /// [getPermissionModel] returns a single [PermissionModel].
  Future<Pair<RequestResponse, PermissionModel?>> getPermissionModel({required PermissionDataSource source, required String id}) async {
    return source.get(id);
  }

  /// [addAllPermissionModels] adds all [PermissionModel]s to the data source.
  Future<RequestResponse> addAllPermissionModels({required PermissionDataSource source, required List<PermissionModel> permissionModels}) async {
    return source.addAll(permissionModels);
  }

  /// [updateAllPermissionModels] updates all [PermissionModel]s in the data source.
  Future<RequestResponse> updateAllPermissionModels({required PermissionDataSource source, required Map<String, PermissionModel> permissionModels}) async {
    return source.updateAll(permissionModels);
  }

  /// [addPermissionModel] addits a single [PermissionModel] to the data source.
  Future<Pair<RequestResponse, PermissionModel?>> addPermissionModel({required PermissionDataSource source, required PermissionModel permissionModel}) async {
    return source.add(permissionModel);
  }

  /// [updatePermissionModel] updates a single [PermissionModel] in the data source.
  Future<RequestResponse> updatePermissionModel({required PermissionDataSource source, required PermissionModel permissionModel}) async {
    return source.update(permissionModel.id, permissionModel);
  }

  /// [deletePermissionModel] deletes a single [PermissionModel] from the data source.
  Future<RequestResponse> deletePermissionModel({required PermissionDataSource source, required String id}) async {
    return source.delete(id);
  }
}
