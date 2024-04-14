import '../../data/models/marker_model.dart';
import '/data/repositories/_repositories.dart';
import '/data/repositories/map.repository.dart';

/// [MarkerRepository] is an abstract class that defines the basic CRUD operations for the [MarkerModel] entity.
class MarkerRepository {
  final MarkerDataRepository _mapDataRepository = DataRepositories.instance.map;

  /// [MarkerRepository] constructor.
  MarkerRepository();

  /// [getAllMarkerModelsFromApi] fetches all [MarkerModel]s from the data source.
  Future<List<MarkerModel?>> getAllMarkerModelsFromApi() {
    return _mapDataRepository.getAllMarkerModels(source: DataSourceTypes.api);
  }

  /// [addAllMarkerModelsFromApi] adds all [MarkerModel]s to the data source.
  Future<void> addAllMarkerModelsFromApi(List<MarkerModel> MarkerModels) {
    return _mapDataRepository.addAllMarkerModels(source: DataSourceTypes.api, MarkerModels: MarkerModels);
  }
}
