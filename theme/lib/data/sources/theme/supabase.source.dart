import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data_sources/remote/supabase.dart";

import "_source.dart";

/// [SupabaseThemeDataSource] is a class that implements [ThemeDataSource] interface.
class SupabaseThemeDataSource<T> extends SupabaseDataSource<T, BasicSearchQueryModel> implements ThemeDataSource<T> {
  /// [SupabaseThemeDataSource] constructor.
  SupabaseThemeDataSource(
    super.tableName, {
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
    required super.client,
  });
}
