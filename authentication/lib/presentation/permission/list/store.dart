// import "package:authentication/data/repositories/user.repository.dart";
// import "package:authentication/domain/repositories/permission.repository.dart";
// import "package:mobx/mobx.dart";
// import "package:utilities/data/models/permission_model.dart";
// import "package:utilities/widgets/load_state/store.dart";

// part "store.g.dart";

// /// [PermissionsStore] is a class that uses [_PermissionsStore] to manage state of the permission feature.
// class PermissionsStore = _PermissionsStore with _$PermissionsStore;

// /// [_PermissionsStore] is a class that manages the state of the permission feature.
// abstract class _PermissionsStore extends LoadStateStore with Store {
//   /// [repository] is an instance of [PermissionRepository].
//   final PermissionRepository repository = PermissionRepository(userDataSourceType: UserDataSourceTypes.firestore);

//   @observable
//   ObservableList<PermissionModel?> results = ObservableList<PermissionModel?>();

//   /// [loadPermissionModels] loads all [PermissionModel]s from the data source.
//   @action
//   Future<void> loadPermissionModels() async {
//     try {
//       setLoading();
//       final loadedPermissions = await repository.getAllPermissionModels();

//       if (loadedPermissions.isNotEmpty) {
//         results
//           ..clear()
//           ..addAll(loadedPermissions);
//         setLoaded();
//       } else {
//         results.clear();
//         setEmpty();
//       }
//     } catch (e) {
//       setError();
//     }
//   }
// }
