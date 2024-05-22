import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data_sources/hive/source.dart";
import "package:utilities/data_sources/paginated.dart";
import "package:utilities/helpers/tuples.dart";

part "paginated.mapper.dart";

@MappableClass()
class HiveResponseModel<T> extends ResponseModel with HiveResponseModelMappable<T> {
  final int? lastIndex;

  HiveResponseModel({this.lastIndex});
}

abstract class PaginatedHiveDataSource<T, Q> extends HiveDataSource<T, Q> with Paginated<HiveResponseModel<T?>, T, Q> {
  /// [PaginatedHiveDataSource] constructor
  PaginatedHiveDataSource(
    super.boxName, {
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  });

  @override
  Future<Pair<HiveResponseModel<T?>, List<T?>>> getPage({HiveResponseModel<T?>? lastResponse, int? size}) async {
    final data = await getAll();
    final lastIndex = lastResponse?.lastIndex ?? -1;
    final nextIndex = lastIndex + 1;
    final subList = data.skip(nextIndex).toList();
    final nextData = subList.take(size ?? subList.length).toList();
    final nextResponse = HiveResponseModel<T?>(lastIndex: nextIndex + nextData.length - 1);
    return Pair(nextResponse, nextData);
  }

  @override
  Future<T?> search(Q query) async {
    return (await searchAll(query)).firstOrNull;
  }

  @override
  Future<List<T?>> searchAll(Q query) async {
    final data = await getAll();
    return data.whereType<T>().where((element) => matchesQuery(query, element)).toList();
  }

  @override
  Future<Pair<HiveResponseModel<T?>, List<T?>>> searchPage({HiveResponseModel<T?>? lastResponse, int? size, required Q query}) async {
    final data = await searchAll(query);
    final lastIndex = lastResponse?.lastIndex ?? -1;
    final nextIndex = lastIndex + 1;
    final subList = data.skip(nextIndex).toList();
    final nextData = subList.take(size ?? subList.length).toList();
    final nextResponse = HiveResponseModel<T?>(lastIndex: nextIndex + nextData.length - 1);
    return Pair(nextResponse, nextData);
  }
}
