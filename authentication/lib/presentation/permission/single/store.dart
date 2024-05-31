// // ignore_for_file: unused_element

// import "package:mobx/mobx.dart";
// import "package:utilities/data/models/permission_model.dart";

// import "../list/store.dart";

// part "store.g.dart";

// /// [PermissionStore] is a class that uses [_PermissionStore] to manage state of the Permission feature.
// class PermissionStore = _PermissionStore with _$PermissionStore;

// /// [_PermissionStore] is a class that manages the state of the Permission feature.
// abstract class _PermissionStore extends PermissionsStore with Store {
//   final String? id;

//   /// [_PermissionStore] constructor.
//   _PermissionStore({
//     this.id,
//     PermissionModel? initialPermissionModel,
//   }) {
//     _loadPermission(initialPermissionModel);
//   }

//   /// [currentPermission] is an observable list of [PermissionModel]s.
//   @observable
//   PermissionModel? currentPermission;

//   void _loadPermission(PermissionModel? initialPermissionModel) {
//     if (initialPermissionModel == null && id != null) {
//       setLoading();
//       repository.getPermissionModel(id!).then((value) {
//         currentPermission = value;
//       });
//     } else {
//       currentPermission = initialPermissionModel;
//     }
//     if (currentPermission != null) {
//       setLoaded();
//     } else {
//       setEmpty();
//     }
//   }
// }
