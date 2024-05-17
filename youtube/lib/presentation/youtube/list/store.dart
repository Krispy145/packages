import "package:mobx/mobx.dart";
import "/data/models/youtube_model.dart";
import "/domain/repositories/youtube.repository.dart";
import "package:utilities/widgets/load_state/store.dart";

part "store.g.dart";

/// [YoutubesStore] is a class that uses [_YoutubesStore] to manage state of the youtube feature.
class YoutubesStore = _YoutubesStore with _$YoutubesStore;

/// [_YoutubesStore] is a class that manages the state of the youtube feature.
abstract class _YoutubesStore extends LoadStateStore with Store {
  /// [repository] is an instance of [YoutubeRepository].
  final YoutubeRepository repository = YoutubeRepository();

  /// [youtube] is an observable list of [YoutubeModel]s.
  @observable
  ObservableList<YoutubeModel?> youtubes = ObservableList<YoutubeModel?>();

  /// [loadYoutubeModels] loads all [YoutubeModel]s from the data source.
  @action
  Future<void> loadYoutubeModels() async {
    try {
      setLoading();
      final loadedYoutubes = await repository.getAllYoutubeModels();
      if (loadedYoutubes.isNotEmpty) {
        youtubes
          ..clear()
          ..addAll(loadedYoutubes);
        setLoaded();
      } else {
        setEmpty();
      }
    } catch (e) {
      setError();
    }
  }
}
