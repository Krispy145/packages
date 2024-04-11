import '/data/repositories/_repositories.dart';

import '/data/models/fonts_model.dart';
import '/data/sources/fonts/_source.dart';
import '/data/sources/fonts/api.source.dart';
import '/data/sources/fonts/firestore.source.dart';
import '/data/sources/fonts/local.source.dart';

/// [FontsDataRepository] is a class that defines the basic CRUD operations for the [FontsModel] entity.
class FontsDataRepository {
  /// [getAllFontsModels] returns a list of [FontsModel]s.
  Future<List<FontsModel?>> getAllFontsModels(
      {required DataSourceTypes source}) async {
    return _dataSourceByType(source).getAll();
  }

  /// [addAllFontsModels] adds all [FontsModel]s to the data source.
  Future<void> addAllFontsModels(
      {required DataSourceTypes source,
      required List<FontsModel> fontsModels}) async {
    return _dataSourceByType(source).addAll(fontsModels);
  }

  /// [_dataSourceByType] returns the appropriate [FontsDataSource] based on the [DataSourceTypes] enum.
  /// Defaults to [LocalFontsDataSource].
  /// This can be in local, an api, or firestore.
  FontsDataSource _dataSourceByType(DataSourceTypes type) {
    switch (type) {
      case DataSourceTypes.api:
        return ApiFontsDataSource();
      case DataSourceTypes.local:
        return LocalFontsDataSource();
      case DataSourceTypes.firestore:
        return FirestoreFontsDataSource();

      //TODO: set default accordingly
      default:
        return LocalFontsDataSource();
    }
  }
}
