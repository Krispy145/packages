import '/data/repositories/_repositories.dart';

import '/data/models/map_model.dart';
import '/data/sources/map/_source.dart';
import '/data/sources/map/api.source.dart';
import '/data/sources/map/firestore.source.dart';
import '/data/sources/map/local.source.dart';

/// [MapDataRepository] is a class that defines the basic CRUD operations for the [MapModel] entity.
class MapDataRepository {
  /// [getAllMapModels] returns a list of [MapModel]s.
  Future<List<MapModel?>> getAllMapModels({required DataSourceTypes source}) async {
    return _dataSourceByType(source).getAll();    
  }

  /// [addAllMapModels] adds all [MapModel]s to the data source.
  Future<void> addAllMapModels({required DataSourceTypes source, required List<MapModel> mapModels}) async {
    return _dataSourceByType(source).addAll(mapModels);
  }

  /// [_dataSourceByType] returns the appropriate [MapDataSource] based on the [DataSourceTypes] enum.
  /// Defaults to [LocalMapDataSource].
  /// This can be in local, an api, or firestore.
  MapDataSource _dataSourceByType(DataSourceTypes type) {
    switch (type) {
      case DataSourceTypes.api:
        return ApiMapDataSource();
      case DataSourceTypes.local:
        return LocalMapDataSource();
      case DataSourceTypes.firestore:
        return FirestoreMapDataSource();

      //TODO: set default accordingly
      default:
        return LocalMapDataSource();
    }
  }
}
