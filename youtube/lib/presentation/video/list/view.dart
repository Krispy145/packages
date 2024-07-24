// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:utilities/widgets/load_state/builder.dart';
// import 'package:youtube/presentation/video/single/store.dart';

// /// [VideoView] of the app.
// @RoutePage()
// class VideoView extends StatelessWidget {
//   /// [VideoView] constructor.
//   VideoView({super.key});

//   /// [store] is an instance of [VideoStore], used in the [LoadStateBuilder].
//   final VideoStore store = VideoStore()..loadVideoModels();

//   @override
//   Widget build(BuildContext context) {
//     return LoadStateBuilder(
//       store: store,
//       emptyBuilder: (context,message) => const Center(
//         child: Text("Empty video view."),
//       ),
//       loadedBuilder: (context) => ListView.builder(
//         itemCount: store.videos.length,
//         itemBuilder: (context, index) {
//           final videoModel = store.videos[index]?.toVideo();
//           return ListTile(
//             title: Text('ID: ${videoModel?.title}'),
//             subtitle: Text('Name: ${videoModel?.channelTitle}'),
//           );
//         },
//       ),
//       errorBuilder: (context,error) => const Center(
//         child: Text("Error loading video view."),
//       ),
//     );
//   }
// }
