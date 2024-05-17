// ignore_for_file: unused_element

import "package:mobx/mobx.dart";
import "/data/models/youtube_model.dart";
import "/utils/loggers.dart";
import "package:utilities/logger/logger.dart";
import '../list/store.dart';

part "store.g.dart";

/// [YoutubeStore] is a class that uses [_YoutubeStore] to manage state of the Youtube feature.
class YoutubeStore = _YoutubeStore with _$YoutubeStore;

/// [_YoutubeStore] is a class that manages the state of the Youtube feature.
abstract class _YoutubeStore extends YoutubesStore with Store {
  final String? id;

  /// [_YoutubeStore] constructor.
  _YoutubeStore({
    this.id,
    YoutubeModel? initialYoutubeModel,
  }) {
    _loadYoutube(initialYoutubeModel);
  }

  /// [currentYoutube] is an observable list of [YoutubeModel]s.
  @observable
  YoutubeModel? currentYoutube;

  void _loadYoutube(YoutubeModel? initialYoutubeModel) {
    if (initialYoutubeModel == null && id != null) {
      setLoading();
      repository.getYoutubeModel(id!).then((value) {
        currentYoutube = value;
      });
    } else {
      currentYoutube = initialYoutubeModel;
    }
    if (currentYoutube != null) {
      setLoaded();
    } else {
      setEmpty();
    }
  }
}
