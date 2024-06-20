// import "package:mobx/mobx.dart";
// import "package:utilities/widgets/load_state/store.dart";

// import "/data/models/playlist_model.dart";
// import "/domain/repositories/playlist.repository.dart";

// part "store.g.dart";

// /// [PlaylistsStore] is a class that uses [_PlaylistsStore] to manage state of the playlist feature.
// class PlaylistsStore = _PlaylistsStore with _$PlaylistsStore;

// /// [_PlaylistsStore] is a class that manages the state of the playlist feature.
// abstract class _PlaylistsStore with LoadStateStore, Store {
//   final String apiKey;

//   /// [repository] is an instance of [PlaylistRepository].
//   late final PlaylistRepository repository = PlaylistRepository(apiKey);

//   final String channelId;

//   _PlaylistsStore(this.channelId, this.apiKey);

//   /// [playlist] is an observable list of [PlaylistModel]s.
//   @observable
//   ObservableList<PlaylistModel?> playlists = ObservableList<PlaylistModel?>();

//   /// [loadPlaylistModels] loads all [PlaylistModel]s from the data source.
//   @action
//   Future<void> loadPlaylistModels() async {
//     try {
//       setLoading();
//       final loadedPlaylists = await repository.getPagedChannelPlaylists(channelId: channelId);
//       if (loadedPlaylists.isNotEmpty) {
//         playlists
//           ..clear()
//           ..addAll(loadedPlaylists);
//         setLoaded();
//       } else {
//         setEmpty();
//       }
//     } catch (e) {
//       setError();
//     }
//   }
// }
