import "package:utilities/data/sources/api/source.dart";
import "package:utilities/data/sources/paginated.dart";

abstract class PaginatedApiDataSource<T, Q> extends ApiDataSource<T, Q> with Paginated<ResponseModel, T, Q> {
  /// [PaginatedApiDataSource] constructor
  PaginatedApiDataSource(
    super.baseUrl, {
    super.proxy,
    required super.sourceSuffix,
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  });
}
