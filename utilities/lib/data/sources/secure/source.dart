import "dart:convert";

import "package:flutter_secure_storage/flutter_secure_storage.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/extensions/string.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

/// [SecureDataSource] is a wrapper class for [FlutterSecureStorage]
abstract class SecureDataSource<T, Q> with Mappable<T> implements DataSource<T, Q> {
  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  /// [SecureDataSource] constructor
  SecureDataSource({
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
  });

  @override
  T convertFromMap(Map<String, dynamic> data) => convertDataTypeFromMap(data);

  @override
  Map<String, dynamic> convertToMap(T data) => convertDataTypeToMap(data);

  bool matchesID(String key, T item);

  bool matchesQuery(Q query, T item);

  final FlutterSecureStorage _storage = const FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
  );

  @override
  Future<T?> get(String key) async {
    final value = await read(key);
    final convertedValue = value != null ? convertFromMap(json.decode(value) as Map<String, dynamic>) : null;
    AppLogger.print("GET: $key => $convertedValue", [UtilitiesLoggers.secureDataSource]);
    return convertedValue;
  }

  @override
  Future<List<T>> getAll() async {
    final allValues = await readAll();
    AppLogger.print("GET All: $allValues", [UtilitiesLoggers.secureDataSource]);
    return allValues.values.map((value) => convertFromMap(json.decode(value) as Map<String, dynamic>)).toList();
  }

  @override
  Future<RequestResponse> delete(String key) async {
    await _storage.delete(key: key);
    AppLogger.print("DELETE: $key", [UtilitiesLoggers.secureDataSource]);
    return RequestResponse.success;
  }

  @override
  Future<RequestResponse> deleteAll() async {
    await _storage.deleteAll();
    AppLogger.print("DELETE All", [UtilitiesLoggers.secureDataSource]);
    return RequestResponse.success;
  }

  @override
  Future<RequestResponse> update(String key, T value) async {
    await write(key: key, value: json.encode(convertToMap(value)));
    AppLogger.print(
      "UPDATE: $key => $value",
      [UtilitiesLoggers.secureDataSource],
    );
    return RequestResponse.success;
  }

  @override
  Future<RequestResponse> updateAll(Map<String, T> values) async {
    for (final entry in values.entries) {
      await write(key: entry.key, value: json.encode(convertToMap(entry.value)));
    }
    AppLogger.print("UPDATE All: $values", [UtilitiesLoggers.secureDataSource]);
    return RequestResponse.success;
  }

  @override
  Future<Pair<RequestResponse, T?>> add(T value) async {
    // Generate a unique key for the value and store it.
    final id = generateUniqueId();
    await write(key: id, value: json.encode(convertToMap(value)));
    AppLogger.print("ADD: $id => $value", [UtilitiesLoggers.secureDataSource]);
    return Pair(RequestResponse.success, value);
  }

  @override
  Future<RequestResponse> addAll(List<T> values) async {
    for (final value in values) {
      await add(value);
    }
    AppLogger.print("ADD All: $values", [UtilitiesLoggers.secureDataSource]);
    return RequestResponse.success;
  }

  @override
  Future<T?> search(Q query) {
    // Implement search logic if applicable
    AppLogger.print("SEARCH: $query", [UtilitiesLoggers.secureDataSource]);
    throw UnimplementedError();
  }

  @override
  Future<List<T?>> searchAll(Q query) {
    // Implement search logic if applicable
    AppLogger.print("SEARCH: $query", [UtilitiesLoggers.secureDataSource]);
    throw UnimplementedError();
  }

  /// [read] method returns the value of the given key
  Future<String?> read(String key) async {
    final value = await _storage.read(key: key);
    AppLogger.print(
      "READ: $key => $value",
      [UtilitiesLoggers.secureDataSource],
    );
    return value;
  }

  /// [readAll] method returns all the key-value pairs
  Future<Map<String, String>> readAll() async {
    final allValues = await _storage.readAll();
    AppLogger.print(
      "READ All: $allValues",
      [UtilitiesLoggers.secureDataSource],
    );
    return allValues;
  }

  /// [write] method adds the value of the given key
  Future<void> write({required String key, required String value}) async {
    await _storage.write(key: key, value: value);
    AppLogger.print(
      "WRITE: $key => $value",
      [UtilitiesLoggers.secureDataSource],
    );
  }
}
