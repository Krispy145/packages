import "google_places.repository.dart";

///END OF IMPORTS

/// [DataSourceTypes] is an enum that defines the different data sources.
enum DataSourceTypes {
  /// [api] is the remote data source.
  api,

  /// [local] is the local data source.
  local,

  /// [dummyData] is the dummy data source.
  dummyData,

  /// [assets] is the assets data source.
  assets,

  /// [firestore] is the firestore data source.
  firestore,

  /// [secure] is the secure data source.
  secure;
}

/// [DataRepositories] is a class that defines the different data repositories.
class DataRepositories {
  DataRepositories._();

  /// [instance] is the singleton instance of [DataRepositories].
  static final DataRepositories instance = DataRepositories._();

  /// [googlePlaces] is the [GooglePlacesDataRepository] instance.
  GooglePlacesDataRepository googlePlaces({required String googleApiKey}) =>
      GooglePlacesDataRepository(googleApiKey: googleApiKey);

  ///END OF REPOSITORIES
}
