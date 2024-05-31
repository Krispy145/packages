// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:utilities/widgets/load_state/builder.dart';
// import 'package:youtube/presentation/playlist/list/store.dart';
// import 'package:youtube/presentation/playlist/single/store.dart';

// /// [PlaylistView] of the app.
// @RoutePage()
// class PlaylistView extends StatelessWidget {
//   /// [PlaylistView] constructor.
//   PlaylistView({super.key, required String channelId, required String apiKey}) : store = PlaylistsStore(channelId, apiKey)..loadPlaylistModels();

//   /// [store] is an instance of [PlaylistStore], used in the [LoadStateBuilder].
//   final PlaylistsStore store;

//   @override
//   Widget build(BuildContext context) {
//     return LoadStateBuilder(
//       viewStore: store,
//       emptyBuilder: (context) => const Center(
//         child: Text("Empty playlist view."),
//       ),
//       loadedBuilder: (context) => ListView.builder(
//         itemCount: store.playlists.length,
//         itemBuilder: (context, index) {
//           final playlistModel = store.playlists[index];
//           return ListTile(
//             title: Text('ID: ${playlistModel?.id}'),
//             subtitle: Text('Name: ${playlistModel?.snippet?.title ?? ""}'),
//           );
//         },
//       ),
//       errorBuilder: (context) => const Center(
//         child: Text("Error loading playlist view."),
//       ),
//     );
//   }
// }
