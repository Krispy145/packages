// ignore_for_file: unused_element

import "package:mobx/mobx.dart";
import "/data/models/video_model.dart";
import '../list/store.dart';

part "store.g.dart";

/// [VideoStore] is a class that uses [_VideoStore] to manage state of the Video feature.
class VideoStore = _VideoStore with _$VideoStore;

/// [_VideoStore] is a class that manages the state of the Video feature.
abstract class _VideoStore extends VideosStore with Store {
  final String? id;

  /// [_VideoStore] constructor.
  _VideoStore({
    this.id,
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
        currentVideo = value;
      });
    } else {
      currentVideo = initialVideoModel;
    }
    if (currentVideo != null) {
      setLoaded();
    } else {
      setEmpty();
    }
  }
}
