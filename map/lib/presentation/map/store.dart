import 'package:mobx/mobx.dart';
import 'package:utilities/widgets/load_state/base_store.dart';

import '/data/models/map_model.dart';
import '/domain/repositories/map.repository.dart';

part 'store.g.dart';

/// [MapStore] is a class that uses [MapBaseStore] to manage state of the map feature.
class MapStore = MapBaseStore with _$MapStore;

/// [MapBaseStore] is a class that manages the state of the map feature.
abstract class MapBaseStore extends LoadStateStore with Store {
  /// [repository] is an instance of [MapRepository].
  final MapRepository repository = MapRepository();

  /// [maps] is an observable list of [MapModel]s.
  @observable
  ObservableList<MapModel?> maps = ObservableList<MapModel?>();

  /// [loadMapModels] loads all [MapModel]s from the data source.
  @action
  Future<void> loadMapModels() async {
    try {
      setLoading();
      final loadedMaps = await repository.getAllMapModelsFromApi();
      if (loadedMaps.isNotEmpty) {
        maps
          ..clear()
          ..addAll(loadedMaps);
        setLoaded();
      } else {
        setEmpty();
      }
    } catch (e) {
      setError();
    }
  }
}
