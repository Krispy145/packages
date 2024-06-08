// ignore_for_file: unused_element

import "package:authentication/data/repositories/permission.repository.dart";
import "package:authentication/data/repositories/user.repository.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/typedefs.dart";
import "package:utilities/widgets/load_state/store.dart";

part "store.g.dart";

/// [PermissionStore] is a class that uses [_PermissionStore] to manage state of the Permission feature.
class PermissionStore = _PermissionStore with _$PermissionStore;

/// [_PermissionStore] is a class that manages the state of the Permission feature.
abstract class _PermissionStore extends LoadStateStore with Store {
  final UUID userId;
  final UserDataSourceTypes userDataSourceType;
  final PermissionModel? initialPermissionModel;

  /// [_PermissionStore] constructor.
  _PermissionStore({
    required this.userId,
    required this.userDataSourceType,
    this.initialPermissionModel,
  }) {
    _loadPermission();
  }

  /// [dataRepository] is an instance of [PermissionDataRepository].
  late final PermissionDataRepository dataRepository = PermissionDataRepository(
    userId: userId,
    userDataSourceType: userDataSourceType,
  );

  /// [currentPermission] is an observable list of [PermissionModel]s.
  @observable
  PermissionModel? currentPermission;

  /// [additPermissionModel] addits a [PermissionModel] to the data source.
  @action
  Future<RequestResponse> additPermissionModel(bool isAdding, PermissionModel permissionModel) async {
    if (isAdding) {
      final result = await dataRepository.addPermissionModel(
        permissionModel: permissionModel,
      );
      currentPermission = permissionModel;
      return result.first;
    } else {
      currentPermission = permissionModel;
      return dataRepository.updatePermissionModel(permissionModel: permissionModel);
    }
  }

  void _loadPermission() {
    print("initialPermissionModel: $initialPermissionModel");
    if (initialPermissionModel == null) {
      setLoading();
      dataRepository.getPermissionModel().then((value) {
        currentPermission = value.second;
      });
    } else {
      currentPermission = initialPermissionModel;
    }
    if (currentPermission != null) {
      setLoaded();
    } else {
      setEmpty();
    }
  }
}
