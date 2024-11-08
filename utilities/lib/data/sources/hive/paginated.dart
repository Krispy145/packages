import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data/sources/hive/source.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
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
    required super.convertDataTypeFromJson,
    required super.convertDataTypeToJson,
    required super.getIdFromDataType,
  });

  @override
  Future<Pair<RequestResponse, Pair<HiveResponseModel<T?>, List<T?>>>> getPage({
    HiveResponseModel<T?>? lastResponse,
    int? size,
    String? orderBy,
    bool descending = false,
    Map<String, dynamic>? queryParameters,
  }) async {
    final data = await getAll();
    final lastIndex = lastResponse?.lastIndex ?? -1;
    final nextIndex = lastIndex + 1;
    final subList = data.second.skip(nextIndex).toList();
    final nextData = subList.take(size ?? subList.length).toList();
    final nextResponse = HiveResponseModel<T?>(lastIndex: nextIndex + nextData.length - 1);
    return Pair(RequestResponse.success, Pair(nextResponse, nextData));
  }

  @override
  Future<Pair<RequestResponse, T?>> search(Q query) async {
    final data = await searchAll(query);
    final singleData = data.second.firstOrNull;
    if (singleData == null) {
      return const Pair(RequestResponse.failure, null);
    }
    return Pair(RequestResponse.success, singleData);
  }

  @override
  Future<Pair<RequestResponse, List<T?>>> searchAll(Q query) async {
    final data = await getAll();
    if (data.second.isEmpty) {
      const Pair(RequestResponse.failure, null);
    }
    return Pair(RequestResponse.success, data.second.whereType<T>().where((element) => matchesQuery(query, element)).toList());
  }

  @override
  Future<Pair<RequestResponse, Pair<HiveResponseModel<T?>, List<T?>>>> searchPage({HiveResponseModel<T?>? lastResponse, int? size, required Q query}) async {
    final data = await searchAll(query);
    final lastIndex = lastResponse?.lastIndex ?? -1;
    final nextIndex = lastIndex + 1;
    final subList = data.second.skip(nextIndex).toList();
    final nextData = subList.take(size ?? subList.length).toList();
    final nextResponse = HiveResponseModel<T?>(lastIndex: nextIndex + nextData.length - 1);
    return Pair(RequestResponse.success, Pair(nextResponse, nextData));
  }
}
