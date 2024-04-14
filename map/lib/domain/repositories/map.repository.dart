import '/data/models/map_model.dart';
import '/data/repositories/_repositories.dart';
import '/data/repositories/map.repository.dart';

/// [MapRepository] is an abstract class that defines the basic CRUD operations for the [MapModel] entity.
class MapRepository {
  final MapDataRepository _mapDataRepository = DataRepositories.instance.map;

  /// [MapRepository] constructor.
  MapRepository();

  /// [getAllMapModelsFromApi] fetches all [MapModel]s from the data source.
  Future<List<MapModel?>> getAllMapModelsFromApi() {
    return _mapDataRepository.getAllMapModels(source: DataSourceTypes.api);
  }

  /// [addAllMapModelsFromApi] adds all [MapModel]s to the data source.
  Future<void> addAllMapModelsFromApi(List<MapModel> mapModels) {
    return _mapDataRepository.addAllMapModels(source: DataSourceTypes.api, mapModels: mapModels);
  }
}
