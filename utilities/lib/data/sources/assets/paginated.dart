import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data/sources/assets/source.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

import "../paginated.dart";

part "paginated.mapper.dart";

@MappableClass()
class AssetsResponseModel<T> extends ResponseModel with AssetsResponseModelMappable<T> {
  final int? lastIndex;

  AssetsResponseModel({this.lastIndex});
}

abstract class PaginatedAssetsDataSource<T, Q> extends AssetsDataSource<T, Q> with Paginated<AssetsResponseModel<T?>, T, Q> {
  /// [PaginatedAssetsDataSource] constructor
  PaginatedAssetsDataSource({
    required super.rootBundleKey,
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  });
  @override
  Future<Pair<RequestResponse, Pair<AssetsResponseModel<T?>, List<T?>>>> getPage({
    AssetsResponseModel<T?>? lastResponse,
    int? size,
    String? orderBy,
    bool descending = false,
    Map<String, dynamic>? queryParameters,
  }) async {
    final data = await tryLoadJson(rootBundleKey);
    final lastIndex = lastResponse?.lastIndex ?? -1;
    final nextIndex = lastIndex + 1;
    final subList = data.skip(nextIndex).toList();
    final nextData = subList.take(size ?? subList.length).toList();
    final nextResponse = AssetsResponseModel<T?>(lastIndex: nextIndex + nextData.length - 1);
    if (nextData.isEmpty) {
      return Future.value(Pair(RequestResponse.failure, Pair(nextResponse, nextData)));
    }
    return Future.value(Pair(RequestResponse.success, Pair(nextResponse, nextData)));
  }

  @override
  Future<Pair<RequestResponse, Pair<AssetsResponseModel<T?>, List<T?>>>> searchPage({
    AssetsResponseModel<T?>? lastResponse,
    int? size,
    required Q query,
  }) async {
    final data = await tryLoadJson(rootBundleKey);
    final lastIndex = lastResponse?.lastIndex ?? -1;
    final nextIndex = lastIndex + 1;
    final subList = data.skip(nextIndex).toList();
    final nextData = subList.whereType<T>().where((item) => matchesQuery(query, item)).take(size ?? subList.length).toList();
    final nextResponse = AssetsResponseModel<T?>(lastIndex: nextIndex + nextData.length - 1);
    if (nextData.isEmpty) {
      return Future.value(Pair(RequestResponse.failure, Pair(nextResponse, nextData)));
    }
    return Future.value(Pair(RequestResponse.success, Pair(nextResponse, nextData)));
  }
}
