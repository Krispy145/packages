import "package:collection/collection.dart";
import "package:flutter/services.dart";
import "package:utilities/data_sources/source.dart";

/// [DummyDataSource] is a wrapper class for [rootBundle] which implements [DataSource]
abstract class DummyDataSource<T> implements DataSource<T> {
  /// [DummyDataSource] constructor.
  DummyDataSource();

  List<T> get fakeData;

  bool matchesID(String id, T item);

  bool matchesQuery(Map<String, dynamic> queries, T item) {
    return true;
  }

  @override
  Future<T?> get(String id) async {
    return fakeData.firstWhereOrNull((element) => matchesID(id, element));
  }

  @override
  Future<List<T?>> getAll() async {
    return fakeData;
  }

  @override
  Future<T?> add(T value) async {
    fakeData.add(value);
    return value;
  }

  @override
  Future<void> addAll(List<T> values) async {
    fakeData.addAll(values);
  }

  @override
  Future<void> update(String id, T value) async {
    final index = fakeData.indexWhere((element) => matchesID(id, element));
    if (index != -1) {
      fakeData[index] = value;
    }
  }

  @override
  Future<void> updateAll(Map<String, T> values) async {
    values.forEach((key, value) {
      final index = fakeData.indexWhere((element) => matchesID(key, element));
      if (index != -1) {
        fakeData[index] = value;
      }
    });
  }

  @override
  Future<void> delete(String id) async {
    fakeData.removeWhere((element) => matchesID(id, element));
  }

  @override
  Future<void> deleteAll() async {
    fakeData.clear();
  }

  @override
  Future<T?> search(Map<String, dynamic> queries) async {
    return fakeData.where((element) => matchesQuery(queries, element)).toList().firstOrNull;
  }

  @override
  Future<List<T?>> searchAll(Map<String, dynamic> queries) async {
    return fakeData.where((element) => matchesQuery(queries, element)).toList();
  }
}
