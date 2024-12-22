import "dart:async";

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

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final String Function(T) titleFromType;

  /// [FirestoreDataSource] constructor
  FirestoreDataSource(
    this.collectionName, {
    required this.titleFromType,
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
  });

  CollectionReference<Map<String, dynamic>> get collectionReference => firestore.collection(collectionName);

  Timestamp getTimestampFromDateTime(DateTime dateTime) {
    return Timestamp.fromDate(dateTime);
  }

  DateTime getDateTimeFromTimestamp(Timestamp timestamp) {
    return timestamp.toDate();
  }

  @override
  T convertFromMap(Map<String, dynamic> data) {
    final _dataWithDateTime = data.map(
      (key, value) {
        if (value is Timestamp) {
          return MapEntry(key, getDateTimeFromTimestamp(value));
        }
        return MapEntry(key, value);
      },
    );
    return convertDataTypeFromMap(_dataWithDateTime);
  }

  bool isTimeBasedKey(String key) {
    return key.toLowerCase().contains("time") || key.toLowerCase().contains("date");
  }

  @override
  Map<String, dynamic> convertToMap(T data) {
    final _dataWithTimestamp = convertDataTypeToMap(data).map(
      (key, value) {
        try {
          if (isTimeBasedKey(key)) {
            final _possibleDateTimeString = DateTime.tryParse(value.toString());
            if (_possibleDateTimeString != null) {
              return MapEntry(key, getTimestampFromDateTime(_possibleDateTimeString));
            }
          }
          return MapEntry(key, value);
        } catch (e) {
          return MapEntry(key, value);
        }
      },
    );
    return _dataWithTimestamp;
  }

  Query<Map<String, dynamic>> buildQuery(Q query, Query<Map<String, dynamic>> collectionReference);

  @override
  Future<Pair<RequestResponse, T?>> get(String id) async {
    final response = await _handleRequest("GET", () async {
      final documentSnapshot = await collectionReference.doc(id).get();
      if (documentSnapshot.exists) {
        return convertFromMap(documentSnapshot.data()!);
      } else {
        return null;
      }
    });
    return response;
  }

  @override
  Future<Pair<RequestResponse, List<T?>>> getAll() async {
    logRequest("GET_ALL", null);
    try {
      final querySnapshot = await collectionReference.get();
      if (querySnapshot.docs.isEmpty) {
        logResponse("GET_ALL", "Success", null);
        return const Pair(RequestResponse.success, []);
      }
      final data = querySnapshot.docs.map((doc) => convertFromMap(doc.data())).toList();
      logResponse("GET_ALL", "Success", data);
      return Pair(RequestResponse.success, data);
    } catch (e) {
      logError("GET_ALL", "Error", e);
      return const Pair(RequestResponse.failure, []);
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
                convertToMap(data),
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
        batch.set(reference, convertToMap(item));
        result[id] = true;
      });
      await batch.commit();
      return null;
    });
    return RequestResponse.success;
  }

  @override
  Future<Pair<RequestResponse, T?>> add(T data) async {
    logRequest("ADD", data);
    try {
      final map = convertToMap(data);
      final docRef = collectionReference.doc();
      if (map.containsKey("id")) {
        map["id"] = docRef.id;
      }
      await docRef.set(map, SetOptions(merge: true));
      logResponse("ADD", "Success", convertFromMap(map));
      return Pair(RequestResponse.success, convertFromMap(map));
    } catch (e) {
      logError("ADD", "Error", e);
      return const Pair(RequestResponse.failure, null);
    }
  }

  @override
  Future<RequestResponse> addAll(List<T> data) async {
    await _handleRequest("ADD_ALL", () async {
      final batch = firestore.batch();
      for (final item in data) {
        final map = convertToMap(item);
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
  Future<Pair<RequestResponse, T?>> search(Q query) async {
    logRequest("SEARCH", null);
    try {
      final firestoreQuery = buildQuery(query, collectionReference);
      final querySnapshot = await firestoreQuery.get();
      if (querySnapshot.docs.isEmpty) {
        logResponse("SEARCH", "Success", null);
        return const Pair(RequestResponse.failure, null);
      }
      final data = querySnapshot.docs.map((doc) => convertFromMap(doc.data())).first;
      logResponse("SEARCH", "Success", data);
      return Pair(RequestResponse.success, data);
    } catch (e) {
      logError("SEARCH", "Error", e);
      return const Pair(RequestResponse.failure, null);
    }
  }

  @override
  Future<Pair<RequestResponse, List<T?>>> searchAll(Q query) async {
    logRequest("SEARCH_ALL", null);
    try {
      final firestoreQuery = buildQuery(query, collectionReference);
      final querySnapshot = await firestoreQuery.get();
      if (querySnapshot.docs.isEmpty) {
        logResponse("SEARCH_ALL", "Success", null);
        return const Pair(RequestResponse.failure, []);
      }
      final data = querySnapshot.docs.map((doc) => convertFromMap(doc.data())).toList();
      logResponse("SEARCH_ALL", "Success", data);
      return Pair(RequestResponse.success, data);
    } catch (e) {
      logError("SEARCH_ALL", "Error", e);
      return const Pair(RequestResponse.failure, []);
    }
  }

  Future<Pair<RequestResponse, int>> getCollectionCount() async {
    logRequest("GET_COLLECTION_COUNT", null);
    try {
      final query = firestore.collection(collectionName);
      final querySnapshot = await query.get();
      return Pair(RequestResponse.success, querySnapshot.docs.length);
    } catch (e) {
      logError("GET_COLLECTION_COUNT", "Error", e);
      return const Pair(RequestResponse.failure, 0);
    }
  }

  /// Stream to get the collection count
  Stream<Pair<RequestResponse, int>> getCollectionCountStream() {
    final query = firestore.collection(collectionName);

    // Stream setup
    final stream = query.snapshots().map((event) {
      return Pair(RequestResponse.success, event.docs.length);
    });

    return stream;
  }

  void logRequest(String method, T? data) {
    final logMessage = "Firebase $method REQUEST on $collectionName:";
    if (data != null) {
      AppLogger.print(
        "$logMessage -> $data",
        [UtilitiesLoggers.firestoreDataSource],
      );
    } else {
      AppLogger.print(logMessage, [UtilitiesLoggers.firestoreDataSource]);
    }
  }

  void logResponse(
    String method,
    String statusMessage,
    dynamic data,
  ) {
    final logMessage = "Firebase $method on $collectionName: $statusMessage";
    if (data != null) {
      AppLogger.print(
        "$logMessage -> $data",
        [UtilitiesLoggers.firestoreDataSource],
        type: LoggerType.confirmation,
      );
    } else {
      AppLogger.print(
        logMessage,
        [UtilitiesLoggers.firestoreDataSource],
        type: LoggerType.confirmation,
      );
    }
  }

  void logError(
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
      logRequest(method, null);
      final response = await apiCall();
      logResponse(method, "Success", response);
      return Pair(RequestResponse.success, response);
    } catch (error) {
      logError(method, "Error", error);
      return const Pair(RequestResponse.failure, null);
    }
  }
}
