import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:utilities/data_sources/source.dart';
import 'package:utilities/logger/logger.dart';
import 'package:utilities/utils/loggers.dart';
import 'package:uuid/uuid.dart';

/// [SecureDataSource] is a wrapper class for [FlutterSecureStorage]
abstract class SecureDataSource implements DataSource<String> {
  final FlutterSecureStorage _storage = const FlutterSecureStorage(
    aOptions: AndroidOptions(encryptedSharedPreferences: true),
  );

  /// [generateUniqueId] method generates a unique id
  String generateUniqueId() {
    const uuid = Uuid();
    return uuid.v4();
  }

  @override
  Future<String?> get(String key) async {
    final value = await read(key);
    AppLogger.print("GET: $key => $value", [UtilitiesPackageLoggers.secureDataSource]);
    return value;
  }

  @override
  Future<List<String>> getAll() async {
    final allValues = await readAll();
    AppLogger.print("GET All: $allValues", [UtilitiesPackageLoggers.secureDataSource]);
    return allValues.values.toList();
  }

  @override
  Future<void> delete(String key) async {
    await _storage.delete(key: key);
    AppLogger.print("DELETE: $key", [UtilitiesPackageLoggers.secureDataSource]);
  }

  @override
  Future<void> deleteAll() async {
    await _storage.deleteAll();
    AppLogger.print("DELETE All", [UtilitiesPackageLoggers.secureDataSource]);
  }

  @override
  Future<void> update(String key, String value) async {
    await write(key: key, value: value);
    AppLogger.print(
      "UPDATE: $key => $value",
      [UtilitiesPackageLoggers.secureDataSource],
    );
  }

  @override
  Future<void> updateAll(Map<String, String> values) async {
    for (final entry in values.entries) {
      await write(key: entry.key, value: entry.value);
    }
    AppLogger.print("UPDATE All: $values", [UtilitiesPackageLoggers.secureDataSource]);
  }

  @override
  Future<void> add(String value) async {
    // Generate a unique key for the value and store it.
    final id = generateUniqueId();
    await write(key: id, value: value);
    AppLogger.print("ADD: $id => $value", [UtilitiesPackageLoggers.secureDataSource]);
  }

  @override
  Future<void> addAll(List<String> values) async {
    for (final value in values) {
      await add(value);
    }
    AppLogger.print("ADD All: $values", [UtilitiesPackageLoggers.secureDataSource]);
  }

  @override
  Future<List<String?>> search(Map<dynamic, dynamic> queries) {
    // Implement search logic if applicable
    AppLogger.print("SEARCH: $queries", [UtilitiesPackageLoggers.secureDataSource]);
    throw UnimplementedError();
  }

  /// [read] method returns the value of the given key
  Future<String?> read(String key) async {
    final value = await _storage.read(key: key);
    AppLogger.print("READ: $key => $value", [UtilitiesPackageLoggers.secureDataSource]);
    return value;
  }

  /// [readAll] method returns all the key-value pairs
  Future<Map<String, String>> readAll() async {
    final allValues = await _storage.readAll();
    AppLogger.print("READ All: $allValues", [UtilitiesPackageLoggers.secureDataSource]);
    return allValues;
  }

  /// [write] method adds the value of the given key
  Future<void> write({required String key, required String value}) async {
    await _storage.write(key: key, value: value);
    AppLogger.print(
      "WRITE: $key => $value",
      [UtilitiesPackageLoggers.secureDataSource],
    );
  }
}
