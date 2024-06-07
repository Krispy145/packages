import "package:cloud_firestore/cloud_firestore.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

/// [FirestoreDataSource] is a wrapper class for [FirebaseFirestore]
abstract class FirestoreDataSource<T, Q> with Mappable<T> implements DataSource<T, Q> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  /// [collectionName] is the name of the collection
  final String collectionName;

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  /// [FirestoreDataSource] constructor
  FirestoreDataSource(
    this.collectionName, {
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
  });

  CollectionReference<Map<String, dynamic>> get collectionReference => firestore.collection(collectionName);

  @override
  T convertFromMap(Map<String, dynamic> data) => convertDataTypeFromMap(data);

  @override
  Map<String, dynamic> convertToMap(T data) => convertDataTypeToMap(data);

  Query<Map<String, dynamic>> buildQuery(Q query, Query<Map<String, dynamic>> collectionReference);

  @override
  Future<T?> get(String id) async {
    final response = await _handleRequest("GET", () async {
      final documentSnapshot = await collectionReference.doc(id).get();
      if (documentSnapshot.exists) {
        return convertDataTypeFromMap(documentSnapshot.data()!);
      } else {
        return null;
      }
    });
    return response.second;
  }

  @override
  Future<List<T?>> getAll() async {
    try {
      final querySnapshot = await collectionReference.get();
      return querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList();
    } catch (e) {
      AppLogger.print("Error: $e", [UtilitiesLoggers.firestoreDataSource]);
      return [];
    }
  }

  @override
  Future<RequestResponse> delete(String id) async {
    final response = await _handleRequest("DELETE", () async {
      await collectionReference.doc(id).delete();
      return;
    });
    return response.first;
  }

  @override
  Future<RequestResponse> deleteAll() async {
    await _handleRequest("DELETE_ALL", () async {
      final querySnapshot = await collectionReference.get();
      final result = <String, dynamic>{};
      for (final doc in querySnapshot.docs) {
        await doc.reference.delete();
        result[doc.id] = true;
      }
      return null;
    });
    return RequestResponse.success;
  }

  @override
  Future<RequestResponse> update(String id, T data) async {
    final response = await _handleRequest("UPDATE", () async {
      try {
        if (id.isEmpty) {
          await add(data);
        } else {
          await collectionReference.doc(id).set(
                convertDataTypeToMap(data),
                SetOptions(merge: true),
              );
        }
      } catch (e) {
        await add(data);
      }
      return null;
    });
    return response.first;
  }

  @override
  Future<RequestResponse> updateAll(Map<String, T> data) async {
    await _handleRequest("UPDATE_ALL", () async {
      final result = <String, dynamic>{};
      final batch = firestore.batch();
      data.forEach((id, item) {
        final reference = collectionReference.doc(id);
        batch.set(reference, convertDataTypeToMap(item));
        result[id] = true;
      });
      await batch.commit();
      return null;
    });
    return RequestResponse.success;
  }

  @override
  Future<Pair<RequestResponse, T?>> add(T data) async {
    try {
      _logRequest("ADD", collectionName, data);
      final map = convertDataTypeToMap(data);
      final docRef = collectionReference.doc();
      if (map.containsKey("id")) {
        map["id"] = docRef.id;
      }
      await docRef.set(map, SetOptions(merge: true));
      _logResponse("ADD", "Success", convertDataTypeFromMap(map));
      return Pair(RequestResponse.success, convertDataTypeFromMap(map));
    } catch (e) {
      _logError("ADD", "Error", e);
      return const Pair(RequestResponse.failure, null);
    }
  }

  @override
  Future<RequestResponse> addAll(List<T> data) async {
    await _handleRequest("ADD_ALL", () async {
      final batch = firestore.batch();
      for (final item in data) {
        final map = convertDataTypeToMap(item);
        final docRef = collectionReference.doc();
        if (map.containsKey("id")) {
          map["id"] = docRef.id;
        }
        batch.set(
          docRef,
          map,
        );
      }
      await batch.commit();
      return null;
    });
    return RequestResponse.success;
  }

  @override
  Future<T?> search(Q query) async {
    final firestoreQuery = buildQuery(query, collectionReference);
    final querySnapshot = await firestoreQuery.get();
    // final query = collectionReference;
    // for (final entry in queries.entries) {
    //   query.where(entry.key, isEqualTo: entry.value);
    // }
    // final querySnapshot = await query.get();
    return querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList().firstOrNull;
  }

  @override
  Future<List<T?>> searchAll(Q query) async {
    final firestoreQuery = buildQuery(query, collectionReference);
    final querySnapshot = await firestoreQuery.get();
    return querySnapshot.docs.map((doc) => convertDataTypeFromMap(doc.data())).toList();
  }

  void _logRequest(String method, String path, T? data) {
    final logMessage = "Firebase $method on $collectionName: $path";
    if (data != null) {
      AppLogger.print(
        "$logMessage -> $data",
        [UtilitiesLoggers.firestoreDataSource],
      );
    } else {
      AppLogger.print(logMessage, [UtilitiesLoggers.firestoreDataSource]);
    }
  }

  void _logResponse(
    String method,
    String statusMessage,
    dynamic data,
  ) {
    final logMessage = "Firebase $method on $collectionName: $statusMessage";
    if (data != null) {
      AppLogger.print(
        "$logMessage -> $data",
        [UtilitiesLoggers.firestoreDataSource],
      );
    } else {
      AppLogger.print(logMessage, [UtilitiesLoggers.firestoreDataSource]);
    }
  }

  void _logError(
    String method,
    String statusMessage,
    dynamic error,
  ) {
    final logMessage = "Firebase $method Error on $collectionName: $statusMessage - $error";
    AppLogger.print(
      logMessage,
      [UtilitiesLoggers.firestoreDataSource],
      type: LoggerType.error,
    );
  }

  Future<Pair<RequestResponse, T?>> _handleRequest(
    String method,
    Future<T?> Function() apiCall,
  ) async {
    try {
      _logRequest(method, collectionName, null);
      final response = await apiCall();
      _logResponse(method, "Success", response);
      return Pair(RequestResponse.success, response);
    } catch (error) {
      _logError(method, "Error", error);
      return const Pair(RequestResponse.failure, null);
    }
  }
}
