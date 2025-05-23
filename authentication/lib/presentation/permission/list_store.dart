import "package:authentication/data/repositories/user.repository.dart";
import "package:authentication/domain/repositories/permission.repository.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/layouts/paginated_list/store.dart";

part "list_store.g.dart";

/// [PermissionsStore] is a class that uses [_PermissionsStore] to manage state of the permissions feature.
class PermissionsStore = _PermissionsStore with _$PermissionsStore;

/// [_PermissionsStore] is a class that manages the state of the permissions feature.
abstract class _PermissionsStore
    extends PaginatedListStore<PermissionModel, String> with Store {
  final UserDataSourceTypes sourceType;

  /// [_PermissionsStore] constructor.
  _PermissionsStore({
    required this.sourceType,
  });
  @override
  Future<Pair<RequestResponse, List<PermissionModel?>>> Function({
    int? limit,
    bool refresh,
  }) get loadMoreFromRepository => repository.getPagedPermissionModels;

  /// [repository] is an instance of [PermissionRepository].
  late final PermissionRepository repository =
      PermissionRepository(sourceType: sourceType);

  @action
  Future<void> deletePermissionModel(String id) async {
    try {
      setLoading();
      results.removeWhere((element) => element.id == id);
      await repository.deletePermissionModel(id);
      setLoaded();
    } catch (e) {
      setError("There was a problem deleting the permission.");
    }
  }

  /// [loadPermissionModels] loads all [PermissionModel]s from the data source.
  @action
  Future<void> loadPermissionModels() async {
    try {
      setLoading();
      final loadedPermissions = await repository.getAllPermissionModels();
      if (loadedPermissions.second.isNotEmpty) {
        results
          ..clear()
          ..addAll(loadedPermissions.second.whereType<PermissionModel>());
        setLoaded();
      } else {
        setEmpty("No permissions found");
      }
    } catch (e) {
      setError("There was a problem loading the permissions.");
    }
  }
}
