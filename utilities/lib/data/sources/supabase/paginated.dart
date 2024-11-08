import "package:dart_mappable/dart_mappable.dart";
import "package:supabase_flutter/supabase_flutter.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/sources/supabase/source.dart";
import "package:utilities/helpers/tuples.dart";

part "paginated.mapper.dart";

@MappableClass()
class SupabaseResponseModel<T> extends ResponseModel with SupabaseResponseModelMappable<T> {
  final PostgrestResponse<T>? lastPostgresResponse;

  SupabaseResponseModel({this.lastPostgresResponse});

  @override
  String toString() {
    return "SupabaseResponseModel(lastDocumentSnapshot: ${lastPostgresResponse?.data})";
  }
}

abstract class PaginatedSupabaseDataSource<T, Q> extends SupabaseDataSource<T, Q> with Paginated<SupabaseResponseModel<T?>, T, Q> {
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

  @override
  SupabaseQueryBuilder buildQuery(Q query, SupabaseQueryBuilder table) {
    // TODO: implement buildQuery
    throw UnimplementedError();
  }

  @override
  Future<Pair<RequestResponse, Pair<SupabaseResponseModel<T?>?, List<T?>>>> getPage({
    SupabaseResponseModel<T?>? lastResponse,
    int? size,
    String? orderBy,
    bool descending = false,
    Map<String, dynamic>? queryParameters,
  }) {
    // TODO: implement getPage
    throw UnimplementedError();
  }

  @override
  Future<Pair<RequestResponse, Pair<SupabaseResponseModel<T?>?, List<T?>>>> searchPage({SupabaseResponseModel<T?>? lastResponse, int? size, required Q query}) {
    // TODO: implement searchPage
    throw UnimplementedError();
  }
}
