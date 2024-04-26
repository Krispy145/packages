import "package:utilities/data_sources/local/assets.dart";

import "_source.dart";

/// [AssetsThemeDataSource] is a class that implements [ThemeDataSource] interface.
class AssetsThemeDataSource<T> extends AssetsDataSource<T>
    implements ThemeDataSource<T> {
  /// [AssetsThemeDataSource] constructor.
  AssetsThemeDataSource({
    required super.rootBundleKey,
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  });
}
