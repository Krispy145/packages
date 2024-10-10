import "dart:async";

import "package:hive_flutter/hive_flutter.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

/// [TypeBox] is a wrapper class for [Box]
class TypeBox<T> extends Box<T> {
  /// [convertDataTypeFromJson] is the function that will be used to convert the data from a JSON [String] to [T]
  final T Function(String) convertDataTypeFromJson;

  /// [convertDataTypeFromJson] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final String Function(T) convertDataTypeToJson;

  /// [boxName] is the name of the [Box]
  final String boxName;

  /// [TypeBox] constructor
  TypeBox({
    required this.boxName,
    required this.convertDataTypeFromJson,
    required this.convertDataTypeToJson,
  });

  Box<String> get _box => Hive.box<String>(boxName);
  @override
  Future<int> add(T value) {
    throw UnimplementedError();
    // return _box.add(convertDataTypeToJson(value));
  }

  @override
  Future<Iterable<int>> addAll(Iterable<T> values) {
    throw UnimplementedError();
    // return _box.addAll(values.map(convertDataTypeToJson));
  }

  @override
  Future<int> clear() {
    return _box.clear();
  }

  @override
  Future<void> close() {
    return _box.close();
  }

  @override
  Future<void> compact() {
    return _box.compact();
  }

  @override
  bool containsKey(dynamic key) {
    return _box.containsKey(key);
  }

  @override
  Future<void> delete(dynamic key) {
    return _box.delete(key);
  }

  @override
  Future<void> deleteAll(Iterable<dynamic> keys) {
    return _box.deleteAll(keys);
  }

  @override
  Future<void> deleteAt(int index) {
    return _box.deleteAt(index);
  }

  @override
  Future<void> deleteFromDisk() {
    return _box.deleteFromDisk();
  }

  @override
  Future<void> flush() {
    return _box.flush();
  }

  @override
  T? get(dynamic key, {T? defaultValue}) {
    if (key is! String) {
      AppLogger.print("Key is not a String", [UtilitiesLoggers.localDataSource]);
      return null;
    }
    final rawValue = _box.get(key);
    if (rawValue == null) return null;

    return convertDataTypeFromJson(rawValue);
  }

  @override
  T? getAt(int index) {
    // throw UnimplementedError();
    final value = _box.getAt(index);
    if (value == null) return null;
    return convertDataTypeFromJson(value);
    // return convertDataTypeFromJson(value);
  }

  @override
  bool get isEmpty => _box.isEmpty;

  @override
  bool get isNotEmpty => _box.isNotEmpty;

  @override
  bool get isOpen => _box.isOpen;

  @override
  dynamic keyAt(int index) {
    // throw UnimplementedError();
    return _box.keyAt(index);
  }

  @override
  Iterable<dynamic> get keys => _box.keys as Iterable<String>;

  @override
  bool get lazy => _box.lazy;

  @override
  int get length => _box.length;

  @override
  String get name => _box.name;

  @override
  String? get path => _box.path;

  @override
  Future<void> put(dynamic key, T value) {
    if (key is! String) {
      AppLogger.print(
        "Key is not a String",
        [UtilitiesLoggers.localDataSource],
      );
      return Future.value();
    }
    return _box.put(key, convertDataTypeToJson(value));
  }

  @override
  Future<void> putAll(Map<dynamic, T> entries) {
    final entryMap = entries.map((key, value) {
      if (key is! String) {
        AppLogger.print(
          "Key is not a String",
          [UtilitiesLoggers.localDataSource],
        );
        return MapEntry(key, convertDataTypeToJson(value));
      }
      return MapEntry(key, convertDataTypeToJson(value));
    });

    for (final element in entryMap.keys) {
      if (element is! String) {
        entryMap.remove(element);
      }
    }
    return _box.putAll(
      entries.map((key, value) {
        if (key is! String) {
          AppLogger.print(
            "Key is not a String",
            [UtilitiesLoggers.localDataSource],
          );
          return MapEntry(key, convertDataTypeToJson(value));
        }
        return MapEntry(key, convertDataTypeToJson(value));
      }),
    );
  }

  @override
  Future<void> putAt(int index, T value) {
    // throw UnimplementedError();
    return _box.putAt(index, convertDataTypeToJson(value));
  }

  @override
  Map<dynamic, T> toMap() {
    return _box.toMap().map(
          (key, value) => MapEntry(key as String, convertDataTypeFromJson(value)),
        );
  }

  @override
  Iterable<T> get values => _box.values.map(convertDataTypeFromJson);

  @override
  Iterable<T> valuesBetween({dynamic startKey, dynamic endKey}) {
    return _box.valuesBetween(startKey: startKey, endKey: endKey).map(convertDataTypeFromJson);
  }

  @override
  Stream<BoxEvent> watch({dynamic key}) {
    return _box.watch(key: key as String?);
  }
}
