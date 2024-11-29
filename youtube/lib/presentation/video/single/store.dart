import "package:flutter/foundation.dart";
import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";
import "package:youtube/data/models/video_model.dart";
import "package:youtube/domain/repositories/video.repository.dart";
import "package:youtube_explode_dart/youtube_explode_dart.dart";

part "store.g.dart";

/// [VideoStore] is a class that uses [_VideoStore] to manage state of the Video feature.
class VideoStore = _VideoStore with _$VideoStore;

/// [_VideoStore] is a class that manages the state of the Video feature.
abstract class _VideoStore with LoadStateStore, Store {
  final String? id;

  final String apiKey;

  /// [repository] is an instance of [VideoRepository].
  late final VideoRepository repository = VideoRepository();
  // late final VideoRepository repository = VideoRepository(apiKey);

  /// [_VideoStore] constructor.
  _VideoStore({
    this.id,
    required this.apiKey,
    Video? initialVideoModel,
  }) {
    // _loadVideo();
    _loadVideo(initialVideoModel);
  }

  /// [currentVideo] is an observable list of [VideoModel]s.
  @observable
  Video? currentVideo;

  @observable
  StreamManifest? streamManifest;

  Future<void> _loadVideo(Video? initialVideoModel) async {
    setLoading();

    currentVideo = initialVideoModel ?? await repository.getYTExplodeVideo(id!);
    if (currentVideo == null) {
      setEmpty("Video not found${kDebugMode ? ": $id" : ""}");
      return;
    }
    streamManifest = await repository.getYTExplodeStreamManifest(currentVideo!.id.value);
    if (streamManifest == null) {
      setEmpty("Video Details not found${kDebugMode ? ": $id" : ""}");
      return;
    }
    setLoaded();
  }
}
