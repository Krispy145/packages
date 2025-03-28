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
  Future<Pair<RequestResponse, T?>> get(String id) async {
    return Pair(
      RequestResponse.success,
      fakeData.firstWhereOrNull((element) => matchesID(id, element)),
    );
  }

  @override
  Future<Pair<RequestResponse, List<T?>>> getAll() async {
    return Pair(RequestResponse.success, fakeData);
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
  Future<Pair<RequestResponse, T?>> search(Q query) async {
    final result = fakeData
        .where((element) => matchesQuery(query, element))
        .toList()
        .firstOrNull;
    if (result == null) {
      return const Pair(RequestResponse.failure, null);
    }
    return Pair(RequestResponse.success, result);
  }

  @override
  Future<Pair<RequestResponse, List<T?>>> searchAll(Q query) async {
    final result =
        fakeData.where((element) => matchesQuery(query, element)).toList();
    if (result.isEmpty) {
      return const Pair(RequestResponse.failure, []);
    }
    return Pair(RequestResponse.success, result);
  }
}
