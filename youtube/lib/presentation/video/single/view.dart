// import "package:auto_route/auto_route.dart";
// import "package:flutter/material.dart";
// import "package:flutter_mobx/flutter_mobx.dart";
// import "package:theme/extensions/build_context.dart";
// import "package:utilities/widgets/load_state/builder.dart";

// import "/data/models/video_model.dart";
// import "store.dart";

// /// [VideoView] of the app.
// @RoutePage()
// class VideoView extends StatelessWidget {
//   /// [VideoView] constructor.
//   VideoView({super.key, required String? id, required VideoModel? videoModel, required String apiKey}) {
//     store = VideoStore(id: id, initialVideoModel: videoModel, apiKey: apiKey);
//   }

//   /// [store] is an instance of [VideoStore], used in the [LoadStateBuilder].
//   /// initialized in the constructor.
//   late final VideoStore store;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Observer(
//         builder: (context) {
//           return Center(
//             child: Text(
//               store.isEmpty ? "Empty Video" : "store.currentVideo?.name",
//               style: context.textTheme.headlineMedium,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
