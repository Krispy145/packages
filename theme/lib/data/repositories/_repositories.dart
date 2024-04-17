import 'digital_oasis.repository.dart';
import 'theme.repository.dart';

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

  /// [supabase] is the supabase data source.
  supabase,

  /// [secure] is the secure data source.
  secure;
}

/// [DataRepositories] is a class that defines the different data repositories.
class DataRepositories {
  DataRepositories._();

  /// [instance] is the singleton instance of [DataRepositories].
  static final DataRepositories instance = DataRepositories._();

  /// [DO] is the [DODataRepository] instance.
  final DODataRepository DO = DODataRepository();

  /// [theme] is the [ThemeDataRepository] instance.
  ThemeDataRepository theme({
    required ThemeConfiguration baseThemeConfiguration,
    ThemeConfiguration? componentThemesConfiguration,
  }) =>
      ThemeDataRepository(
        baseThemeConfiguration: baseThemeConfiguration,
        componentThemesConfiguration: componentThemesConfiguration,
      );

  ///END OF REPOSITORIES
}
