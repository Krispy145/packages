import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:utilities/data_sources/source.dart';
import 'package:utilities/logger/logger.dart';
import 'package:utilities/utils/loggers.dart';
import 'package:utilities/widgets/load_state/base_store.dart';
import 'package:uuid/uuid.dart';

class MapTypeAdaptor extends TypeAdapter<Map<String, dynamic>> {
  @override
  final int typeId = 0;

  @override
  Map<String, dynamic> read(BinaryReader reader) {
    final length = reader.readUint32();
    final map = <String, dynamic>{};
    for (var i = 0; i < length; i++) {
      final key = reader.readString();
      final value = reader.read();
      map[key] = value;
    }
    return map;
  }

  @override
  void write(BinaryWriter writer, Map<String, dynamic> map) {
    writer.writeUint32(map.length);
    for (final entry in map.entries) {
      writer
        ..writeString(entry.key)
        ..write(entry.value);
    }
  }
}

/// [LocalDataSource] is a wrapper class for [Hive]
abstract class LocalDataSource<T> extends LoadStateStore implements DataSource<T> {
  /// [boxName] is the name of the [Box]
  final String boxName;

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  /// [LocalDataSource] constructor
  LocalDataSource(
    this.boxName, {
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
  }) {
    _init();
  }

  /// [_init] method initializes the [LocalDataSource] with the given [boxName]
  /// and registers the [TypeAdapter] and [compactionStrategy]
  Future<void> _init({bool Function(int, int)? compactionStrategy}) async {
    try {
      setLoading();
      AppLogger.print(
        "Initializing Box: $boxName",
        [UtilitiesPackageLoggers.localDataSource],
      );
      await Hive.initFlutter();
      if (compactionStrategy != null) {
        Hive.registerAdapter<Map<String, dynamic>>(MapTypeAdaptor());
        await Hive.openBox<Map<String, dynamic>>(
          boxName,
          compactionStrategy: compactionStrategy,
        );
        AppLogger
          ..print(
            "Compaction Strategy Registered",
            [UtilitiesPackageLoggers.localDataSource],
          )
          ..print("Box Opened: $boxName", [UtilitiesPackageLoggers.localDataSource]);
      } else {
        await Hive.openBox<Map<String, dynamic>>(boxName);
        AppLogger.print(
          "Box Opened: $boxName",
          [UtilitiesPackageLoggers.localDataSource],
        );
      }
      setLoaded();
    } catch (e) {
      AppLogger.print(
        "Error: $e",
        [UtilitiesPackageLoggers.localDataSource],
        type: LoggerType.error,
      );
      setError();
    }
  }

  TypeBox<T> get _box => TypeBox<T>(
        boxName: boxName,
        convertDataTypeFromMap: convertDataTypeFromMap,
        convertDataTypeToMap: convertDataTypeToMap,
      );

  /// [boxListenable] returns a [ValueListenable] for the [TypeBox]
  ValueListenable<TypeBox<T>> get boxListenable => _TypeBoxListenable<T>(_box, null);

  /// [generateUniqueId] method generates a unique id
  String generateUniqueId() {
    const uuid = Uuid();
    return uuid.v4();
  }

  @override
  T convertFromMap(Map<String, dynamic> data) => convertDataTypeFromMap(data);

  @override
  Map<String, dynamic> convertToMap(T data) => convertDataTypeToMap(data);

  /// [get] method returns the value of the given key
  @override
  Future<T?> get(String key) async {
    await Hive.openBox<Map<String, dynamic>>(boxName);
    final value = _box.get(key);
    AppLogger.print("Read: $key => $_box", [UtilitiesPackageLoggers.localDataSource]);
    if (value == null) return Future.value();
    return Future.value(value);
  }

  /// [getAll] method returns all the key-value pairs
  @override
  Future<List<T?>> getAll() async {
    await Hive.openBox<Map<String, dynamic>>(boxName);
    final result = _box.values.toList();
    AppLogger.print(
      "Read All Results => $result",
      [UtilitiesPackageLoggers.localDataSource],
    );
    return Future.value(result);
  }

  /// [delete] method deletes the value of the given key
  @override
  Future<void> delete(String key) async {
    await Hive.openBox<Map<String, dynamic>>(boxName);

    await _box.delete(key);
    AppLogger.print("Deleted: $key", [UtilitiesPackageLoggers.localDataSource]);
  }

  /// [deleteAll] method deletes all the key-value pairs
  @override
  Future<void> deleteAll() async {
    await Hive.openBox<Map<String, dynamic>>(boxName);

    await _box.clear();
    AppLogger.print("Deleted All", [UtilitiesPackageLoggers.localDataSource]);
  }

  /// [add] method adds the value of the given key

  @override
  Future<void> add(T value) async {
    await Hive.openBox<Map<String, dynamic>>(boxName);
    final id = generateUniqueId();
    await _box.put(id, value);
    AppLogger.print("Added $value", [UtilitiesPackageLoggers.localDataSource]);
  }

  /// [addAll] method adds all the key-value pairs
  @override
  Future<void> addAll(List<T> values) async {
    await Hive.openBox<Map<String, dynamic>>(boxName);
    final entries = <String, T>{};
    for (final value in values) {
      final id = generateUniqueId();
      entries[id] = value;
    }
    await _box.putAll(entries);
    AppLogger.print("Added All", [UtilitiesPackageLoggers.localDataSource]);
  }

  /// [update] method updates the value of the given key
  @override
  Future<void> update(String key, T value) async {
    await Hive.openBox<Map<String, dynamic>>(boxName);

    await _box.put(key, value);
    AppLogger.print("Updated: $key", [UtilitiesPackageLoggers.localDataSource]);
  }

  /// [updateAll] method updates all the key-value pairs
  @override
  Future<void> updateAll(Map<String, T> entries) async {
    await Hive.openBox<Map<String, dynamic>>(boxName);

    final updateMap = <String, T>{};
    for (final entry in entries.entries) {
      updateMap[entry.key] = entry.value;
    }
    await _box.putAll(updateMap);
    AppLogger.print("Updated All: $entries", [UtilitiesPackageLoggers.localDataSource]);
  }

  /// [close] method closes the [TypeBox]
  Future<void> close() async {
    if (_box.isOpen) {
      await _box.close();
      AppLogger.print(
        "_TypeBox Closed: ${_box.name}",
        [UtilitiesPackageLoggers.localDataSource],
      );
    } else {
      AppLogger.print(
        "_TypeBox Already Closed: ${_box.name}",
        [UtilitiesPackageLoggers.localDataSource],
      );
    }
  }
}

/// [TypeBox] is a wrapper class for [Box]
class TypeBox<T> extends Box<T> {
  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  /// [boxName] is the name of the [Box]
  final String boxName;

  /// [TypeBox] constructor
  TypeBox({
    required this.boxName,
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
  });

  Box<Map<String, dynamic>> get _box => Hive.box<Map<String, dynamic>>(boxName);
  @override
  Future<int> add(T value) {
    throw UnimplementedError();
    // return _box.add(convertDataTypeToMap(value));
  }

  @override
  Future<Iterable<int>> addAll(Iterable<T> values) {
    throw UnimplementedError();
    // return _box.addAll(values.map(convertDataTypeToMap));
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
      AppLogger.print("Key is not a String", [UtilitiesPackageLoggers.localDataSource]);
      return null;
    }
    if (defaultValue == null) {
      final value = _box.get(key);
      if (value == null) return null;
      return convertDataTypeFromMap(value);
    }
    final value = _box.get(key, defaultValue: convertDataTypeToMap(defaultValue));
    if (value == null) return null;
    return convertDataTypeFromMap(value);
  }

  @override
  T? getAt(int index) {
    // throw UnimplementedError();
    final value = _box.getAt(index);
    if (value == null) return null;
    return convertDataTypeFromMap(value);
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
      AppLogger.print("Key is not a String", [UtilitiesPackageLoggers.localDataSource]);
      return Future.value();
    }
    return _box.put(key, convertDataTypeToMap(value));
  }

  @override
  Future<void> putAll(Map<dynamic, T> entries) {
    final entryMap = entries.map((key, value) {
      if (key is! String) {
        AppLogger.print(
          "Key is not a String",
          [UtilitiesPackageLoggers.localDataSource],
        );
        return MapEntry(key, convertDataTypeToMap(value));
      }
      return MapEntry(key, convertDataTypeToMap(value));
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
            [UtilitiesPackageLoggers.localDataSource],
          );
          return MapEntry(key, convertDataTypeToMap(value));
        }
        return MapEntry(key, convertDataTypeToMap(value));
      }),
    );
  }

  @override
  Future<void> putAt(int index, T value) {
    // throw UnimplementedError();
    return _box.putAt(index, convertDataTypeToMap(value));
  }

  @override
  Map<dynamic, T> toMap() {
    return _box.toMap().map(
          (key, value) => MapEntry(key as String, convertDataTypeFromMap(value)),
        );
  }

  @override
  Iterable<T> get values => _box.values.map(convertDataTypeFromMap);

  @override
  Iterable<T> valuesBetween({dynamic startKey, dynamic endKey}) {
    return _box.valuesBetween(startKey: startKey, endKey: endKey).map(convertDataTypeFromMap);
  }

  @override
  Stream<BoxEvent> watch({dynamic key}) {
    return _box.watch(key: key as String);
  }
}

class _TypeBoxListenable<T> extends ValueListenable<TypeBox<T>> {
  final TypeBox<T> box;
  final Set<String>? keys;
  final List<VoidCallback> _listeners = [];
  StreamSubscription<BoxEvent>? _subscription;

  _TypeBoxListenable(this.box, this.keys);

  @override
  void addListener(VoidCallback listener) {
    if (_listeners.isEmpty) {
      _subscription = box.watch().listen((event) {
        if (keys != null) {
          if (keys!.contains(event.key)) {
            for (final listener in _listeners) {
              listener();
            }
          }
        } else {
          for (final listener in _listeners) {
            listener();
          }
        }
      });
    }

    _listeners.add(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    _listeners.remove(listener);

    if (_listeners.isEmpty) {
      _subscription?.cancel();
      _subscription = null;
    }
  }

  @override
  TypeBox<T> get value => box;
}
