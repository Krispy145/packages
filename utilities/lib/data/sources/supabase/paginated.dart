import "package:supabase_flutter/supabase_flutter.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/supabase/source.dart";

//TODO: Setup a SupabaseResponseModel that can be extended by all Paginated Supabase Data Sources

abstract class PaginatedSupabaseDataSource<T, Q> extends SupabaseDataSource<T, Q> with Paginated<ResponseModel, T, Q> {
  SupabaseClient? _supabase;

  /// [PaginatedSupabaseDataSource] constructor
  PaginatedSupabaseDataSource(
    super.tableName, {
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
    SupabaseClient? client,
  }) {
    _supabase = client ?? Supabase.instance.client;
    if (_supabase == null) {
      throw Exception("Supabase client is not initialized");
    }
  }
}
