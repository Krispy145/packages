import "dart:convert";

import "package:collection/collection.dart";
import "package:flutter/services.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

/// [AssetsDataSource] is a wrapper class for [rootBundle] which implements [DataSource]
abstract class AssetsDataSource<T, Q> with Mappable<T> implements DataSource<T, Q> {
  /// [rootBundleKey] is the path that will be used to fetch the data from assets.
  final String rootBundleKey;

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  /// [AssetsDataSource] constructor.
  AssetsDataSource({
    required this.rootBundleKey,
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
  });

  @override
  T convertFromMap(Map<String, dynamic> data) {
    return convertDataTypeFromMap(data);
  }

  @override
  Map<String, dynamic> convertToMap(T data) {
    return convertDataTypeToMap(data);
  }

  @override
  Future<T?> get(String id) async {
    final data = await tryLoadJson(rootBundleKey, id: id);
    if (data.isEmpty) return null;
    return data.first;
  }

  Future<List<T?>> tryLoadJson(String path, {String? id}) async {
    try {
      final jsonString = await rootBundle.loadString(path);
      final response = json.decode(jsonString);
      if (response is List) {
        AppLogger.print(
          "Asset response List length: ${response.length}",
          [UtilitiesLoggers.assetsDataSource],
        );
        final data = response.map((e) => e as Map<String, dynamic>).toList();
        if (id != null) {
          final result = data.firstWhereOrNull((element) => element["id"] == id);
          return [convertDataTypeFromMap(result ?? <String, dynamic>{})];
        }
        return data.map(convertDataTypeFromMap).toList();
      }
      AppLogger.print(
        "Asset response Map from path: $path",
        [UtilitiesLoggers.assetsDataSource],
      );
      final data = convertDataTypeFromMap(
        json.decode(jsonString) as Map<String, dynamic>,
      );
      return [data];
    } catch (e) {
      AppLogger.print(
        "Error in parsing json for Assets $T: $e",
        [UtilitiesLoggers.assetsDataSource],
        type: LoggerType.error,
      );
    }
    return [];
  }

  @override
  Future<List<T?>> getAll() async {
    final data = await tryLoadJson(rootBundleKey);
    return data;
  }

  @override
  Future<Pair<RequestResponse, T?>> add(T value) async {
    throw UnimplementedError();
  }

  @override
  Future<RequestResponse> addAll(List<T> values) async {
    throw UnimplementedError();
  }

  @override
  Future<RequestResponse> update(String id, T value) async {
    throw UnimplementedError();
  }

  @override
  Future<RequestResponse> updateAll(Map<String, T> values) async {
    throw UnimplementedError();
  }

  @override
  Future<RequestResponse> delete(String id) async {
    throw UnimplementedError();
  }

  @override
  Future<RequestResponse> deleteAll() async {
    throw UnimplementedError();
  }

  bool matchesQuery(Q query, T item);

  @override
  Future<T?> search(Q query) async {
    return (await searchAll(query)).firstOrNull;
  }

  @override
  Future<List<T?>> searchAll(Q query) async {
    final data = await tryLoadJson(rootBundleKey);
    return data.whereType<T>().where((element) => matchesQuery(query, element)).toList();
  }
}
