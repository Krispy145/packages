import "package:cloud_firestore/cloud_firestore.dart";
import "package:firebase_core/firebase_core.dart";
import "package:utilities/data_sources/source.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

/// [FirestoreDataSource] is a wrapper class for [FirebaseFirestore]
class FirestoreDataSource<T> with Mappable<T> implements DataSource<T> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// [collectionName] is the name of the collection
  final String collectionName;

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  /// [app] is the [FirebaseApp] instance
  FirebaseApp? app;

  /// [FirestoreDataSource] constructor
  FirestoreDataSource(
    this.collectionName, {
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
    this.app,
  });

  @override
  T convertFromMap(Map<String, dynamic> data) => convertDataTypeFromMap(data);

  @override
  Map<String, dynamic> convertToMap(T data) => convertDataTypeToMap(data);

  @override
  Future<T?> get(String id) async {
    return _handleRequest("GET", () async {
      final documentSnapshot =
          await _firestore.collection(collectionName).doc(id).get();
      if (documentSnapshot.exists) {
        return convertDataTypeFromMap(documentSnapshot.data()!);
      } else {
        return null;
      }
    });
  }

  @override
  Future<List<T?>> getAll() async {
    try {
      final querySnapshot = await _firestore.collection(collectionName).get();
      return querySnapshot.docs
          .map((doc) => convertDataTypeFromMap(doc.data()))
          .toList();
    } catch (e) {
      AppLogger.print("Error: $e", [UtilitiesLoggers.firestoreDataSource]);
      return [];
    }
  }

  @override
  Future<void> delete(String id) async {
    await _handleRequest("DELETE", () async {
      await _firestore.collection(collectionName).doc(id).delete();
      return null;
    });
  }

  @override
  Future<void> deleteAll() async {
    await _handleRequest("DELETE_ALL", () async {
      final querySnapshot = await _firestore.collection(collectionName).get();
      final result = <String, dynamic>{};
      for (final doc in querySnapshot.docs) {
        await doc.reference.delete();
        result[doc.id] = true;
      }
      return null;
    });
  }

  @override
  Future<void> update(String id, T data) async {
    await _handleRequest("UPDATE", () async {
      try {
        await _firestore
            .collection(collectionName)
            .doc(id)
            .update(convertDataTypeToMap(data));
      } catch (e) {
        await add(data);
      }
      return null;
    });
  }

  @override
  Future<void> updateAll(Map<String, T> data) async {
    await _handleRequest("UPDATE_ALL", () async {
      final result = <String, dynamic>{};
      final batch = _firestore.batch();
      data.forEach((id, item) {
        final reference = _firestore.collection(collectionName).doc(id);
        batch.set(reference, convertDataTypeToMap(item));
        result[id] = true;
      });
      await batch.commit();
      return null;
    });
  }

  @override
  Future<void> add(T data) async {
    await _handleRequest("ADD", () async {
      final json = convertDataTypeToMap(data);
      final docRef = await _firestore.collection(collectionName).add(json);
      if (json.containsKey("id")) {
        json["id"] = docRef.id;
        await update(docRef.id, convertDataTypeFromMap(json));
      }
      return null;
    });
  }

  @override
  Future<void> addAll(List<T> data) async {
    await _handleRequest("ADD_ALL", () async {
      final batch = _firestore.batch();
      for (final item in data) {
        batch.set(
          _firestore.collection(collectionName).doc(),
          convertDataTypeToMap(item),
        );
      }
      await batch.commit();
      return null;
    });
  }

  @override
  Future<T?> search(Map<String, dynamic> queries) async {
    final query = _firestore.collection(collectionName);
    for (final entry in queries.entries) {
      query.where(entry.key, isEqualTo: entry.value);
    }
    final querySnapshot = await query.get();
    return querySnapshot.docs
        .map((doc) => convertDataTypeFromMap(doc.data()))
        .toList()
        .firstOrNull;
  }

  @override
  Future<List<T?>> searchAll(Map<String, dynamic> queries) async {
    final query = _firestore.collection(collectionName);
    for (final entry in queries.entries) {
      query.where(entry.key, isEqualTo: entry.value);
    }
    final querySnapshot = await query.get();
    return querySnapshot.docs
        .map((doc) => convertDataTypeFromMap(doc.data()))
        .toList();
  }

  Future<void> _logRequest(String method, String path, T? data) async {
    final logMessage = "Firebase $method: $path";
    if (data != null) {
      AppLogger.print(
        "$logMessage -> $data",
        [UtilitiesLoggers.firestoreDataSource],
      );
    } else {
      AppLogger.print(logMessage, [UtilitiesLoggers.firestoreDataSource]);
    }
  }

  Future<void> _logResponse(
    String method,
    String statusMessage,
    dynamic data,
  ) async {
    final logMessage = "Firebase $method: $statusMessage";
    if (data != null) {
      AppLogger.print(
        "$logMessage -> $data",
        [UtilitiesLoggers.firestoreDataSource],
      );
    } else {
      AppLogger.print(logMessage, [UtilitiesLoggers.firestoreDataSource]);
    }
  }

  Future<void> _logError(
    String method,
    String statusMessage,
    dynamic error,
  ) async {
    final logMessage = "Firebase $method Error: $statusMessage - $error";
    AppLogger.print(
      logMessage,
      [UtilitiesLoggers.firestoreDataSource],
      type: LoggerType.error,
    );
  }

  Future<T?> _handleRequest(
    String method,
    Future<T?> Function() apiCall,
  ) async {
    try {
      await _logRequest(method, collectionName, null);
      final response = await apiCall();
      await _logResponse(method, "Success", response);
      return response;
    } catch (error) {
      await _logError(method, "Error", error);
      return null;
    }
  }
}
