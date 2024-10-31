import "theme.repository.dart";
import "theme_configuration.dart";

///END OF IMPORTS

/// [ThemeDataSourceType] is an enum that defines the different data sources.
enum ThemeDataSourceType {
  /// [api] is the remote data source.
  api,

  /// [local] is the local data source.
  local,

  /// [assets] is the assets data source.
  assets,

  /// [firestore] is the firestore data source.
  firestore,

  /// [supabase] is the supabase data source.
  supabase,
}

/// [DataRepositories] is a class that defines the different data repositories.
class DataRepositories {
  DataRepositories._();

  /// [instance] is the singleton instance of [DataRepositories].
  static final DataRepositories instance = DataRepositories._();

  /// [theme] is the [ThemeDataRepository] instance.
  ThemeDataRepository theme({
    ThemeConfiguration? baseThemeConfiguration,
    ThemeConfiguration? componentThemesConfiguration,
  }) =>
      ThemeDataRepository(
        baseThemeConfiguration: baseThemeConfiguration,
        componentThemesConfiguration: componentThemesConfiguration,
      );

  ///END OF REPOSITORIES
}
