// import "package:auto_route/auto_route.dart";
// import "package:flutter/material.dart";
// import "package:flutter_mobx/flutter_mobx.dart";
// import "package:utilities/widgets/load_state/builder.dart";

// import "store.dart";

// /// [PermissionsView] of the app.
// @RoutePage()
// class PermissionsView extends StatelessWidget {
//   /// [PermissionsView] constructor.
//   PermissionsView({super.key});

//   /// [store] is an instance of [PermissionsStore], used in the [LoadStateBuilder].
//   final PermissionsStore store = PermissionsStore();

//   @override
//   Widget build(BuildContext context) {
//     return Observer(
//       builder: (context) {
//         return ListView.builder(
//           itemBuilder: (context, index) {
//             final permissionModel = store.results[index]!;
//             return ListTile(
//               title: Text(permissionModel.id),
//               // subtitle: permissionModel.name != null ? Text(permissionModel.name!) : null,
//             );
//           },
//         );
//       },
//     );
//   }
// }
