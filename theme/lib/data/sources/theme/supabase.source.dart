import "package:supabase/src/supabase_query_builder.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data/sources/supabase/source.dart";

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

  @override
  SupabaseQueryBuilder buildQuery(BasicSearchQueryModel query, SupabaseQueryBuilder table) {
    // TODO: implement buildQuery
    throw UnimplementedError();
  }

  @override
  void closeStreams() {
    // TODO: implement closeStreams
  }
}
