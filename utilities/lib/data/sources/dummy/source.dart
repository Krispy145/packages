import "package:collection/collection.dart";
import "package:flutter/services.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

/// [DummyDataSource] is a wrapper class for [rootBundle] which implements [DataSource]
abstract class DummyDataSource<T, Q> implements DataSource<T, Q> {
  List<T> get fakeData;

  bool matchesID(String id, T item);

  bool matchesQuery(Q query, T item);

  @override
  Future<T?> get(String id) async {
    return fakeData.firstWhereOrNull((element) => matchesID(id, element));
  }

  @override
  Future<List<T?>> getAll() async {
    return fakeData;
  }

  @override
  Future<Pair<RequestResponse, T?>> add(T value) async {
    fakeData.add(value);
    return Pair(RequestResponse.success, value);
  }

  @override
  Future<RequestResponse> addAll(List<T> values) async {
    fakeData.addAll(values);
    return RequestResponse.success;
  }

  @override
  Future<RequestResponse> update(String id, T value) async {
    final index = fakeData.indexWhere((element) => matchesID(id, element));
    if (index != -1) {
      fakeData[index] = value;
    }
    return RequestResponse.success;
  }

  @override
  Future<RequestResponse> updateAll(Map<String, T> values) async {
    values.forEach((key, value) {
      final index = fakeData.indexWhere((element) => matchesID(key, element));
      if (index != -1) {
        fakeData[index] = value;
      }
    });
    return RequestResponse.success;
  }

  @override
  Future<RequestResponse> delete(String id) async {
    fakeData.removeWhere((element) => matchesID(id, element));
    return RequestResponse.success;
  }

  @override
  Future<RequestResponse> deleteAll() async {
    fakeData.clear();
    return RequestResponse.success;
  }

  @override
  Future<T?> search(Q query) async {
    return fakeData.where((element) => matchesQuery(query, element)).toList().firstOrNull;
  }

  @override
  Future<List<T?>> searchAll(Q query) async {
    return fakeData.where((element) => matchesQuery(query, element)).toList();
  }
}
