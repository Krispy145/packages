import "dart:convert";

import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/secure/source.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

part "paginated.mapper.dart";

@MappableClass()
class SecureResponseModel<T> extends ResponseModel
    with SecureResponseModelMappable<T> {
  final int? lastIndex;

  SecureResponseModel({this.lastIndex});
}

abstract class PaginatedSecureDataSource<T, Q> extends SecureDataSource<T, Q>
    with Paginated<SecureResponseModel<T?>, T, Q> {
  /// [PaginatedSecureDataSource] constructor
  PaginatedSecureDataSource({
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  });
  @override
  Future<Pair<RequestResponse, Pair<SecureResponseModel<T?>, List<T?>>>>
      getPage({
    SecureResponseModel<T?>? lastResponse,
    int? size,
    String? orderBy,
    bool descending = false,
    Map<String, dynamic>? queryParameters,
  }) async {
    final dataMap = await readAll();
    final data = dataMap.values
        .map(
          (value) => convertFromMap(json.decode(value) as Map<String, dynamic>),
        )
        .toList();

    final lastIndex = lastResponse?.lastIndex ?? -1;
    final nextIndex = lastIndex + 1;
    final subList = data.skip(nextIndex).toList();
    final nextData = subList.take(size ?? subList.length).toList();
    final nextResponse =
        SecureResponseModel<T?>(lastIndex: nextIndex + nextData.length - 1);
    if (nextData.isEmpty) {
      return Future.value(
        Pair(RequestResponse.success, Pair(nextResponse, nextData)),
      );
    }
    return Future.value(
      Pair(RequestResponse.success, Pair(nextResponse, nextData)),
    );
  }

  @override
  Future<Pair<RequestResponse, Pair<SecureResponseModel<T?>, List<T?>>>>
      searchPage({
    SecureResponseModel<T?>? lastResponse,
    int? size,
    required Q query,
  }) async {
    final dataMap = await readAll();
    final data = dataMap.values
        .map(
          (value) => convertFromMap(json.decode(value) as Map<String, dynamic>),
        )
        .toList();
    final lastIndex = lastResponse?.lastIndex ?? -1;
    final nextIndex = lastIndex + 1;
    final subList = data.skip(nextIndex).toList();
    final nextData = subList
        .whereType<T>()
        .where((item) => matchesQuery(query, item))
        .take(size ?? subList.length)
        .toList();
    final nextResponse =
        SecureResponseModel<T?>(lastIndex: nextIndex + nextData.length - 1);
    if (nextData.isEmpty) {
      return Future.value(
        Pair(RequestResponse.success, Pair(nextResponse, nextData)),
      );
    }
    return Future.value(
      Pair(RequestResponse.success, Pair(nextResponse, nextData)),
    );
  }
}
