// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:utilities/widgets/load_state/state_widget.dart';

// import 'store.dart';

// /// [FontsView] of the app.
// @RoutePage()
// class FontsView extends StatelessWidget {
//   /// [FontsView] constructor.
//   FontsView({super.key});

//   /// [store] is an instance of [FontsStore], used in the [LoadStateBuilder].
//   final FontsStore store = FontsStore()..loadFontsModels();

//   @override
//   Widget build(BuildContext context) {
//     return LoadStateBuilder(
//       viewStore: store,
//       emptyBuilder: (context,message) => const Center(
//         child: Text("Empty fonts view."),
//       ),
//       loadedBuilder: (context) => ListView.builder(
//         itemCount: store.fontss.length,
//         itemBuilder: (context, index) {
//           final fontsModel = store.fontss[index];
//           return ListTile(
//             title: Text('ID: ${fontsModel?.id}'),
//             subtitle: Text('Name: ${fontsModel?.name}'),
//           );
//         },
//       ),
//       errorBuilder: (context,error) => const Center(
//         child: Text("Error loading fonts view."),
//       ),
//     );
//   }
// }
