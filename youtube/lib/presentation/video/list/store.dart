import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";

import "/data/models/video_model.dart";
import "/domain/repositories/video.repository.dart";

part "store.g.dart";

/// [VideosStore] is a class that uses [_VideosStore] to manage state of the video feature.
class VideosStore = _VideosStore with _$VideosStore;

/// [_VideosStore] is a class that manages the state of the video feature.
abstract class _VideosStore extends LoadStateStore with Store {
  /// [repository] is an instance of [VideoRepository].
  final VideoRepository repository = VideoRepository();

  /// [videos] is an observable list of [VideoModel]s.
  @observable
  ObservableList<VideoModel?> videos = ObservableList<VideoModel?>();

  // /// [loadVideoModels] loads all [VideoModel]s from the data source.
  // @action
  // Future<void> loadVideoModels() async {
  //   try {
  //     setLoading();
  //     final loadedVideos = await repository.getAllVideoModels();
  //     if (loadedVideos.isNotEmpty) {
  //       videos
  //         ..clear()
  //         ..addAll(loadedVideos);
  //       setLoaded();
  //     } else {
  //       setEmpty();
  //     }
  //   } catch (e) {
  //     setError();
  //   }
  // }
}
