// import "package:mobx/mobx.dart";
// import "package:utilities/widgets/load_state/store.dart";
// import "package:youtube/data/models/video_model.dart";
// import "package:youtube/domain/repositories/video.repository.dart";

// part "store.g.dart";

// /// [VideosStore] is a class that uses [_VideosStore] to manage state of the playlist feature.
// class VideosStore = _VideosStore with _$VideosStore;

// /// [_VideosStore] is a class that manages the state of the playlist feature.
// abstract class _VideosStore extends LoadStateStore with Store {
//   final String apiKey;

//   /// [repository] is an instance of [VideoRepository].
//   late final VideoRepository repository = VideoRepository(apiKey);

//   final String channelId;

//   _VideosStore(this.channelId, this.apiKey);

//   /// [playlist] is an observable list of [VideoModel]s.
//   @observable
//   ObservableList<VideoModel?> playlists = ObservableList<VideoModel?>();

//   /// [loadVideoModels] loads all [VideoModel]s from the data source.
//   @action
//   Future<void> loadVideoModels() async {
//     try {
//       setLoading();
//       final loadedVideos = await repository.getPagedChannelVideos(channelId: channelId);
//       if (loadedVideos.isNotEmpty) {
//         playlists
//           ..clear()
//           ..addAll(loadedVideos);
//         setLoaded();
//       } else {
//         setEmpty();
//       }
//     } catch (e) {
//       setError();
//     }
//   }
// }
