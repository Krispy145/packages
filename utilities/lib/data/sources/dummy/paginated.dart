import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data/sources/dummy/source.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

part "paginated.mapper.dart";

@MappableClass()
class DummyDataResponseModel<T> extends ResponseModel with DummyDataResponseModelMappable<T> {
  final int? lastIndex;

  DummyDataResponseModel({this.lastIndex});
}

abstract class PaginatedDummyDataSource<T, Q> extends DummyDataSource<T, Q> with Paginated<DummyDataResponseModel<T?>, T, Q> {
  @override
  Future<Pair<RequestResponse, Pair<DummyDataResponseModel<T?>, List<T?>>>> getPage({
    DummyDataResponseModel<T?>? lastResponse,
    int? size,
    String? orderBy,
    bool descending = false,
    Map<String, dynamic>? queryParameters,
  }) {
    final lastIndex = lastResponse?.lastIndex ?? -1;
    final nextIndex = lastIndex + 1;
    final subList = fakeData.skip(nextIndex).toList();
    final nextData = subList.take(size ?? subList.length).toList();
    final nextResponse = DummyDataResponseModel<T?>(lastIndex: nextIndex + nextData.length - 1);
    if (nextData.isEmpty) {
      return Future.value(Pair(RequestResponse.failure, Pair(nextResponse, nextData)));
    }
    return Future.value(Pair(RequestResponse.success, Pair(nextResponse, nextData)));
  }

  @override
  Future<Pair<RequestResponse, Pair<DummyDataResponseModel<T?>, List<T?>>>> searchPage({
    DummyDataResponseModel<T?>? lastResponse,
    int? size,
    required Q query,
  }) {
    final lastIndex = lastResponse?.lastIndex ?? -1;
    final nextIndex = lastIndex + 1;
    final subList = fakeData.skip(nextIndex).toList();
    final nextData = subList.where((item) => matchesQuery(query, item)).take(size ?? subList.length).toList();
    final nextResponse = DummyDataResponseModel<T?>(lastIndex: nextIndex + nextData.length - 1);
    if (nextData.isEmpty) {
      return Future.value(Pair(RequestResponse.failure, Pair(nextResponse, nextData)));
    }
    return Future.value(Pair(RequestResponse.success, Pair(nextResponse, nextData)));
  }
}
