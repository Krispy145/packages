import "dart:core";

import "package:flutter/foundation.dart";
import "package:hive_flutter/hive_flutter.dart";
import "package:mobx/mobx.dart";
import "package:utilities/data/sources/hive/helpers/type_box.dart";
import "package:utilities/data/sources/hive/helpers/type_box_listeneable.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/extensions/string.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";
import "package:utilities/widgets/load_state/store.dart";

/// [HiveDataSource] is a wrapper class for [Hive]
abstract class HiveDataSource<T, Q>
    with LoadStateStore
    implements DataSource<T, Q> {
  /// [boxName] is the name of the [Box]
  final String boxName;

  /// [convertDataTypeFromJson] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  // @override
  final T Function(String) convertDataTypeFromJson;

  /// [convertDataTypeToJson] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  // @override
  final String Function(T) convertDataTypeToJson;

  final String? Function(T) getIdFromDataType;

  /// [HiveDataSource] constructor
  HiveDataSource(
    this.boxName, {
    required this.convertDataTypeFromJson,
    required this.convertDataTypeToJson,
    required this.getIdFromDataType,
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
        // Hive.registerAdapter<String>(MapTypeAdaptor());
        if (!isBoxOpened) {
          await Hive.openBox<String>(
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
          await Hive.openBox<String>(boxName);
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
      setError("Error initializing HiveDataSource");
    }
  }

  TypeBox<T> get _box => TypeBox<T>(
        boxName: boxName,
        convertDataTypeFromJson: convertDataTypeFromJson,
        convertDataTypeToJson: convertDataTypeToJson,
      );

  /// [boxListenable] returns a [ValueListenable] for the [TypeBox]
  ValueListenable<TypeBox<T>> get boxListenable =>
      TypeBoxListenable<T>(_box, null);

  // @override
  // T convertFromMap(Map<String, dynamic> data) => convertDataTypeFromJson(data);

  // @override
  // Map<String, dynamic> convertToMap(T data) => convertDataTypeToJson(data);

  bool matchesQuery(Q query, T item);

  /// [get] method returns the value of the given key
  @override
  Future<Pair<RequestResponse, T?>> get(String key) async {
    if (!isHiveInitialized) {
      await Hive.initFlutter();
      isHiveInitialized = true;
    }
    // await Hive.deleteBoxFromDisk(boxName);
    // if (!isBoxOpened) {
    await Hive.openBox<String>(boxName);
    //   isBoxOpened = true;
    // }
    final value = _box.get(key);
    AppLogger.print("Read: $key => $value", [UtilitiesLoggers.localDataSource]);
    if (value == null) return const Pair(RequestResponse.failure, null);
    // await close();
    return Pair(RequestResponse.success, value);
  }

  /// [getAll] method returns all the key-value pairs
  @override
  Future<Pair<RequestResponse, List<T?>>> getAll() async {
    if (!isHiveInitialized) {
      await Hive.initFlutter();
      isHiveInitialized = true;
    }
    await Hive.openBox<String>(boxName);
    final boxValues = _box.values;
    final results = boxValues.toList();
    if (results.isEmpty) return const Pair(RequestResponse.failure, []);
    return Pair(RequestResponse.success, results);
  }

  /// [delete] method deletes the value of the given key
  @override
  Future<RequestResponse> delete(String key) async {
    if (!isHiveInitialized) {
      await Hive.initFlutter();
      isHiveInitialized = true;
    }
    if (!isBoxOpened) {
      await Hive.openBox<String>(boxName);
      isBoxOpened = true;
    }

    await _box.delete(key);
    // await close();
    AppLogger.print("Deleted: $key", [UtilitiesLoggers.localDataSource]);
    return RequestResponse.success;
  }

  /// [deleteAll] method deletes all the key-value pairs
  @override
  Future<RequestResponse> deleteAll() async {
    if (!isHiveInitialized) {
      await Hive.initFlutter();
      isHiveInitialized = true;
    }
    if (!isBoxOpened) {
      await Hive.openBox<String>(boxName);
      isBoxOpened = true;
    }

    await _box.clear();
    await _box.deleteFromDisk();
    AppLogger.print("Deleted All", [UtilitiesLoggers.localDataSource]);
    return RequestResponse.success;
  }

  /// [add] method adds the value of the given key

  @override
  Future<Pair<RequestResponse, T?>> add(T value) async {
    if (!isHiveInitialized) {
      await Hive.initFlutter();
      isHiveInitialized = true;
    }
    await Hive.openBox<String>(boxName);
    final key = getIdFromDataType(value) ?? generateUniqueId();
    await _box.put(key, value);
    AppLogger.print("Added $value", [UtilitiesLoggers.localDataSource]);
    return Pair(RequestResponse.success, value);
  }

  /// [addAll] method adds all the key-value pairs
  @override
  Future<RequestResponse> addAll(List<T> values) async {
    if (!isHiveInitialized) {
      await Hive.initFlutter();
      isHiveInitialized = true;
    }
    if (!isBoxOpened) {
      await Hive.openBox<String>(boxName);
      isBoxOpened = true;
    }
    final entries = <String, T>{};
    for (final value in values) {
      final id = generateUniqueId();
      entries[id] = value;
    }
    await _box.putAll(entries);
    AppLogger.print("Added All", [UtilitiesLoggers.localDataSource]);
    return RequestResponse.success;
  }

  /// [update] method updates the value of the given key
  @override
  Future<RequestResponse> update(String key, T value) async {
    if (!isHiveInitialized) {
      await Hive.initFlutter();
      isHiveInitialized = true;
    }
    if (!isBoxOpened) {
      await Hive.openBox<String>(boxName);
      isBoxOpened = true;
    }

    await _box.put(key, value);
    AppLogger.print("Updated: $key", [UtilitiesLoggers.localDataSource]);
    return RequestResponse.success;
  }

  /// [updateAll] method updates all the key-value pairs
  @override
  Future<RequestResponse> updateAll(Map<String, T> entries) async {
    if (!isHiveInitialized) {
      await Hive.initFlutter();
      isHiveInitialized = true;
    }
    if (!isBoxOpened) {
      await Hive.openBox<String>(boxName);
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
    return RequestResponse.success;
  }

  /// [close] method closes the [TypeBox]
  Future<void> close() async {
    if (_box.isOpen) {
      await _box.close();
      isBoxOpened = false;
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
