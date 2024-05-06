import "instagram.repository.dart";

///END OF IMPORTS

/// [DataSourceTypes] is an enum that defines the different data sources.
enum DataSourceTypes {
  /// [api] is the remote data source.
  api,

  /// [local] is the local data source.
  local,

  /// [assets] is the assets data source.
  assets,

  /// [firestore] is the firestore data source.
  firestore,

  /// [secure] is the secure data source.
  secure,

  /// [dummy] is the dummy data source.
  dummy;
}

/// [DataRepositories] is a class that defines the different data repositories.
class DataRepositories {
  DataRepositories._();

  /// [instance] is the singleton instance of [DataRepositories].
  static final DataRepositories instance = DataRepositories._();

  /// [instagram] is the [InstagramDataRepository] instance.
  InstagramDataRepository instagram({
    required String appRedirectUrl,
    required String appId,
    required String appSecret,
  }) =>
      InstagramDataRepository(
        appRedirectUrl: appRedirectUrl,
        appId: appId,
        appSecret: appSecret,
      );

  ///END OF REPOSITORIES
}
