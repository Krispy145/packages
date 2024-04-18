import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:theme/utils/loggers.dart';
import 'package:utilities/data_sources/source.dart';
import 'package:utilities/logger/logger.dart';
import 'package:utilities/utils/loggers.dart';

/// [AssetsDataSource] is a wrapper class for [rootBundle] which implements [DataSource]
class AssetsDataSource<T> implements DataSource<T> {
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
    final rootBundleKeyWithId = rootBundleKey;
    final data = await _tryLoadJson(rootBundleKeyWithId);

    return data;
  }

  Future<T?> _tryLoadJson(String path) async {
    try {
      final jsonString = await rootBundle.loadString(path);
      final data = convertDataTypeFromMap(json.decode(jsonString) as Map<String, dynamic>);
      return data;
    } catch (e) {
      AppLogger.print("Error in parsing json for Assets $T: $e", [UtilitiesLoggers.assetsDataSource], type: LoggerType.error);
    }
    return null;
  }

  @override
  Future<List<T?>> getAll() async {
    throw UnimplementedError();
  }

  @override
  Future<void> add(T value) async {
    throw UnimplementedError();
  }

  @override
  Future<void> addAll(List<T> values) async {
    throw UnimplementedError();
  }

  @override
  Future<void> update(String id, T value) async {
    throw UnimplementedError();
  }

  @override
  Future<void> updateAll(Map<String, T> values) async {
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String id) async {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteAll() async {
    throw UnimplementedError();
  }

  @override
  Future<List<T?>> search(Map<String, dynamic> queries) async {
    final results = <T?>[];
    for (final query in queries.entries) {
      if (query.value == rootBundleKey) {
        final searchResult = await get(query.value as String);
        results.add(searchResult);
      }
    }
    return results;
  }
}
