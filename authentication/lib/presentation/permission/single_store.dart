import "package:mobx/mobx.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/data/sources/source.dart";

import "list_store.dart";

part "single_store.g.dart";

/// [PermissionStore] is a class that uses [_PermissionStore] to manage state of the permissions feature.
class PermissionStore = _PermissionStore with _$PermissionStore;

/// [_PermissionStore] is a class that manages the state of the permissions feature.
abstract class _PermissionStore extends PermissionsStore with Store {
  final String? id;

  /// [_PermissionStore] constructor.
  _PermissionStore({
    this.id,
    required super.sourceType,
    PermissionModel? initialPermissionModel,
  }) {
    _loadPermission(initialPermissionModel);
  }

  /// [additPermissionModel] addits a [PermissionModel] to the data source.
  @action
  Future<RequestResponse> additPermissionModel(
    bool isAdding,
    PermissionModel permissionModel,
  ) async {
    if (isAdding) {
      final result = await repository.addPermissionModel(permissionModel);
      if (result.first == RequestResponse.success) {
        currentPermission = result.second;
      }
      return result.first;
    } else {
      final result = await repository.updatePermissionModel(permissionModel);
      if (result == RequestResponse.success) {
        currentPermission = permissionModel;
      }
      return result;
    }
  }

  /// [currentPermission] is an observable list of [PermissionModel]s.
  @observable
  PermissionModel? currentPermission;

  void _loadPermission(PermissionModel? initialPermissionModel) {
    if (initialPermissionModel == null && id != null) {
      setLoading();
      repository.getPermissionModel(id!).then((value) {
        currentPermission = value.second;
      });
    } else {
      currentPermission = initialPermissionModel;
    }
    if (currentPermission != null) {
      setLoaded();
    } else {
      setEmpty("No permission found");
    }
  }
}
