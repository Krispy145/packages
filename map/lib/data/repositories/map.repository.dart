import '/data/repositories/_repositories.dart';

import '../models/marker_model.dart';
import '../sources/marker/_source.dart';
import '../sources/marker/api.source.dart';
import '../sources/marker/firestore.source.dart';
import '../sources/marker/local.source.dart';

/// [MarkerDataRepository] is a class that defines the basic CRUD operations for the [MarkerModel] entity.
class MarkerDataRepository {
  /// [getAllMarkerModels] returns a list of [MarkerModel]s.
  Future<List<MarkerModel?>> getAllMarkerModels({required DataSourceTypes source}) async {
    return _dataSourceByType(source).getAll();
  }

  /// [addAllMarkerModels] adds all [MarkerModel]s to the data source.
  Future<void> addAllMarkerModels({required DataSourceTypes source, required List<MarkerModel> MarkerModels}) async {
    return _dataSourceByType(source).addAll(MarkerModels);
  }

  /// [_dataSourceByType] returns the appropriate [MarkerDataSource] based on the [DataSourceTypes] enum.
  /// Defaults to [LocalMarkerDataSource].
  /// This can be in local, an api, or firestore.
  MarkerDataSource _dataSourceByType(DataSourceTypes type) {
    switch (type) {
      case DataSourceTypes.api:
        return ApiMarkerDataSource();
      case DataSourceTypes.local:
        return LocalMarkerDataSource();
      case DataSourceTypes.firestore:
        return FirestoreMarkerDataSource();

      //TODO: set default accordingly
      default:
        return LocalMarkerDataSource();
    }
  }
}
