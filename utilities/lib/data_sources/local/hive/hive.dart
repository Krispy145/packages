import "dart:async";

import "package:flutter/foundation.dart";
import "package:hive_flutter/hive_flutter.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data_sources/local/hive/helpers/map_type_adaptor.dart";
import "package:utilities/data_sources/local/hive/helpers/type_box.dart";
import "package:utilities/data_sources/local/hive/helpers/type_box_listeneable.dart";
import "package:utilities/data_sources/source.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";
import "package:utilities/widgets/load_state/store.dart";
import "package:uuid/uuid.dart";

/// [HiveDataSource] is a wrapper class for [Hive]
abstract class HiveDataSource<T> extends LoadStateStore with Mappable<T> implements DataSource<T> {
  /// [boxName] is the name of the [Box]
  final String boxName;

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  /// [HiveDataSource] constructor
  HiveDataSource(
    this.boxName, {
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
  }) {
    init();
  }

  @observable
  bool isHiveInitialized = false;

  @observable
  bool isBoxOpened = false;

  /// [init] method initializes the [HiveDataSource] with the given [boxName]
  /// and registers the [TypeAdapter] and [compactionStrategy]
  Future<void> init({bool Function(int, int)? compactionStrategy}) async {
    try {
      setLoading();
      AppLogger.print(
        "Initializing Box: $boxName",
        [UtilitiesLoggers.localDataSource],
      );
      if (!isHiveInitialized) {
        await Hive.initFlutter();
        isHiveInitialized = true;
      }
      if (compactionStrategy != null) {
        Hive.registerAdapter<Map<String, dynamic>>(MapTypeAdaptor());
        if (!isBoxOpened) {
          await Hive.openBox<Map<String, dynamic>>(
            boxName,
            compactionStrategy: compactionStrategy,
          );
        }
        AppLogger
          ..print(
            "Compaction Strategy Registered",
            [UtilitiesLoggers.localDataSource],
          )
          ..print("Box Opened: $boxName", [UtilitiesLoggers.localDataSource]);
      } else {
        if (!isBoxOpened) {
          await Hive.openBox<Map<String, dynamic>>(boxName);
          isBoxOpened = true;
        }
        AppLogger.print(
          "Box Opened: $boxName",
          [UtilitiesLoggers.localDataSource],
        );
      }
      setLoaded();
    } catch (e) {
      AppLogger.print(
        "Error: $e",
        [UtilitiesLoggers.localDataSource],
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
  ValueListenable<TypeBox<T>> get boxListenable => TypeBoxListenable<T>(_box, null);

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
    if (!isHiveInitialized) {
      await Hive.initFlutter();
      isHiveInitialized = true;
    }
    if (!isBoxOpened) {
      await Hive.openBox<Map<String, dynamic>>(boxName);
      isBoxOpened = true;
    }
    final value = _box.get(key);
    AppLogger.print("Read: $key => $_box", [UtilitiesLoggers.localDataSource]);
    if (value == null) return Future.value();
    return Future.value(value);
  }

  /// [getAll] method returns all the key-value pairs
  @override
  Future<List<T?>> getAll() async {
    if (!isHiveInitialized) {
      await Hive.initFlutter();
      isHiveInitialized = true;
    }
    if (!isBoxOpened) {
      await Hive.openBox<Map<String, dynamic>>(boxName);
      isBoxOpened = true;
    }
    final result = _box.values
        .whereType<Map<String, dynamic>>()
        .map((item) => item)
        .map(convertDataTypeFromMap) // Safely cast each map
        .toList();
    AppLogger.print(
      "Read All Results => $result",
      [UtilitiesLoggers.localDataSource],
    );
    return Future.value(result);
  }

  /// [delete] method deletes the value of the given key
  @override
  Future<void> delete(String key) async {
    if (!isHiveInitialized) {
      await Hive.initFlutter();
      isHiveInitialized = true;
    }
    if (!isBoxOpened) {
      await Hive.openBox<Map<String, dynamic>>(boxName);
      isBoxOpened = true;
    }

    await _box.delete(key);
    AppLogger.print("Deleted: $key", [UtilitiesLoggers.localDataSource]);
  }

  /// [deleteAll] method deletes all the key-value pairs
  @override
  Future<void> deleteAll() async {
    if (!isHiveInitialized) {
      await Hive.initFlutter();
      isHiveInitialized = true;
    }
    if (!isBoxOpened) {
      await Hive.openBox<Map<String, dynamic>>(boxName);
      isBoxOpened = true;
    }

    await _box.clear();
    AppLogger.print("Deleted All", [UtilitiesLoggers.localDataSource]);
  }

  /// [add] method adds the value of the given key

  @override
  Future<T?> add(T value) async {
    if (!isHiveInitialized) {
      await Hive.initFlutter();
      isHiveInitialized = true;
    }
    if (!isBoxOpened) {
      await Hive.openBox<Map<String, dynamic>>(boxName);
      isBoxOpened = true;
    }
    final id = generateUniqueId();
    await _box.put(id, value);
    AppLogger.print("Added $value", [UtilitiesLoggers.localDataSource]);
    return value;
  }

  /// [addAll] method adds all the key-value pairs
  @override
  Future<void> addAll(List<T> values) async {
    if (!isHiveInitialized) {
      await Hive.initFlutter();
      isHiveInitialized = true;
    }
    if (!isBoxOpened) {
      await Hive.openBox<Map<String, dynamic>>(boxName);
      isBoxOpened = true;
    }
    final entries = <String, T>{};
    for (final value in values) {
      final id = generateUniqueId();
      entries[id] = value;
    }
    await _box.putAll(entries);
    AppLogger.print("Added All", [UtilitiesLoggers.localDataSource]);
  }

  /// [update] method updates the value of the given key
  @override
  Future<void> update(String key, T value) async {
    if (!isHiveInitialized) {
      await Hive.initFlutter();
      isHiveInitialized = true;
    }
    if (!isBoxOpened) {
      await Hive.openBox<Map<String, dynamic>>(boxName);
      isBoxOpened = true;
    }

    await _box.put(key, value);
    AppLogger.print("Updated: $key", [UtilitiesLoggers.localDataSource]);
  }

  /// [updateAll] method updates all the key-value pairs
  @override
  Future<void> updateAll(Map<String, T> entries) async {
    if (!isHiveInitialized) {
      await Hive.initFlutter();
      isHiveInitialized = true;
    }
    if (!isBoxOpened) {
      await Hive.openBox<Map<String, dynamic>>(boxName);
      isBoxOpened = true;
    }

    final updateMap = <String, T>{};
    for (final entry in entries.entries) {
      updateMap[entry.key] = entry.value;
    }
    await _box.putAll(updateMap);
    AppLogger.print(
      "Updated All: $entries",
      [UtilitiesLoggers.localDataSource],
    );
  }

  /// [close] method closes the [TypeBox]
  Future<void> close() async {
    if (_box.isOpen) {
      await _box.close();
      AppLogger.print(
        "_TypeBox Closed: ${_box.name}",
        [UtilitiesLoggers.localDataSource],
      );
    } else {
      AppLogger.print(
        "_TypeBox Already Closed: ${_box.name}",
        [UtilitiesLoggers.localDataSource],
      );
    }
  }
}
