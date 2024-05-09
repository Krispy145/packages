import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data_sources/local/assets.dart";

import "_source.dart";

/// [AssetsThemeDataSource] is a class that implements [ThemeDataSource] interface.
class AssetsThemeDataSource<T> extends AssetsDataSource<T, BasicSearchQueryModel> implements ThemeDataSource<T> {
  /// [AssetsThemeDataSource] constructor.
  AssetsThemeDataSource({
    required super.rootBundleKey,
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  });

  @override
  bool matchesQuery(BasicSearchQueryModel query, T item) {
    final map = convertDataTypeToMap(item);
    return (map["name"] as String).contains(RegExp(query.searchTerm, caseSensitive: false));
  }
}
