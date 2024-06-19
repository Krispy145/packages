// ignore_for_file: unused_element

import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";
import "package:youtube/data/models/video_model.dart";
import "package:youtube/domain/repositories/video.repository.dart";

part "store.g.dart";

/// [VideoStore] is a class that uses [_VideoStore] to manage state of the Video feature.
class VideoStore = _VideoStore with _$VideoStore;

/// [_VideoStore] is a class that manages the state of the Video feature.
abstract class _VideoStore extends LoadStateStore with Store {
  final String? id;

  final String apiKey;

  /// [repository] is an instance of [VideoRepository].
  late final VideoRepository repository = VideoRepository(apiKey);

  /// [_VideoStore] constructor.
  _VideoStore({
    this.id,
    required this.apiKey,
    VideoModel? initialVideoModel,
  }) {
    _loadVideo(initialVideoModel);
  }

  /// [currentVideo] is an observable list of [VideoModel]s.
  @observable
  VideoModel? currentVideo;

  void _loadVideo(VideoModel? initialVideoModel) {
    if (initialVideoModel == null && id != null) {
      setLoading();
      repository.getVideoModel(id!).then((value) {
        currentVideo = value.second;
      });
    } else {
      currentVideo = initialVideoModel;
    }
    if (currentVideo != null) {
      setLoaded();
    } else {
      setEmpty("Video not found: $id");
    }
  }
}
