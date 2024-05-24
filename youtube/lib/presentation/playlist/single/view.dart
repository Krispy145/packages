// import "package:auto_route/auto_route.dart";
// import "package:flutter/material.dart";
// import "package:flutter_mobx/flutter_mobx.dart";
// import "package:theme/extensions/build_context.dart";
// import "package:utilities/widgets/load_state/builder.dart";

// import "/data/models/playlist_model.dart";
// import "store.dart";

// /// [PlaylistView] of the app.
// @RoutePage()
// class PlaylistView extends StatelessWidget {
//   /// [PlaylistView] constructor.
//   PlaylistView({super.key, required String? id, required PlaylistModel? playlistModel, required String apiKey}) {
//     store = PlaylistStore(id: id, initialPlaylistModel: playlistModel, apiKey: apiKey);
//   }

//   /// [store] is an instance of [PlaylistStore], used in the [LoadStateBuilder].
//   /// initialized in the constructor.
//   late final PlaylistStore store;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Observer(
//         builder: (context) {
//           return Center(
//             child: Text(
//               store.isEmpty ? "Empty Playlist" : "store.currentPlaylist?.name",
//               style: context.textTheme.headlineMedium,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
