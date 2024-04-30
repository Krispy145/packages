import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data_sources/local/dummy_data.dart";
import "package:utilities/helpers/tuples.dart";

import "../paginated_source.dart";

part "paginated_dummy_data.mapper.dart";

@MappableClass()
class DummyDataResponseModel<T> extends ResponseModel with DummyDataResponseModelMappable<T> {
  final int? lastIndex;

  DummyDataResponseModel({this.lastIndex});
}

abstract class PaginatedDummyDataSource<T> extends DummyDataSource<T> with Paginated<DummyDataResponseModel<T?>, T> {
  @override
  Future<Pair<DummyDataResponseModel<T?>, List<T?>>> getPage({
    DummyDataResponseModel<T?>? lastResponse,
    int? size,
  }) {
    final lastIndex = lastResponse?.lastIndex ?? -1;
    final nextIndex = lastIndex + 1;
    final subList = fakeData.skip(nextIndex).toList();
    final nextData = subList.take(size ?? subList.length).toList();
    final nextResponse = DummyDataResponseModel<T?>(lastIndex: nextIndex + nextData.length - 1);
    return Future.value(Pair(nextResponse, nextData));
  }

  @override
  Future<Pair<DummyDataResponseModel<T?>, List<T?>>> searchPage({
    DummyDataResponseModel<T?>? lastResponse,
    int? size,
    Map<String, String>? queries,
  }) {
    final lastIndex = lastResponse?.lastIndex ?? -1;
    final nextIndex = lastIndex + 1;
    final subList = fakeData.skip(nextIndex).toList();
    final nextData = subList.where((item) => matchesQuery(queries ?? {}, item)).take(size ?? subList.length).toList();
    final nextResponse = DummyDataResponseModel<T?>(lastIndex: nextIndex + nextData.length - 1);
    return Future.value(Pair(nextResponse, nextData));
  }
}
