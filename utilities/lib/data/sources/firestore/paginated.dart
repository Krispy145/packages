import "dart:async";

import "package:cloud_firestore/cloud_firestore.dart";
import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/foundation.dart";
import "package:utilities/data/sources/firestore/source.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

part "paginated.mapper.dart";

@MappableClass()
class FirestoreResponseModel<T> extends ResponseModel with FirestoreResponseModelMappable<T> {
  final QueryDocumentSnapshot<Map<String, dynamic>>? lastDocumentSnapshot;

  FirestoreResponseModel({this.lastDocumentSnapshot});

  @override
  String toString() {
    return "FirestoreResponseModel(lastDocumentSnapshot: ${lastDocumentSnapshot?.data().entries.map((e) => "${e.key}: ${e.value}").join(", ")})";
  }
}

abstract class PaginatedFirestoreDataSource<T, Q> extends FirestoreDataSource<T, Q> with Paginated<FirestoreResponseModel<T?>, T, Q> {
  /// [PaginatedFirestoreDataSource] constructor
  PaginatedFirestoreDataSource(
    super.collectionName, {
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
    required super.titleFromType,
  });

  StreamSubscription<Pair<RequestResponse, Pair<FirestoreResponseModel<T?>, List<T?>>>>? _pageStreamSubscription;

  /// Tracks the stream subscription for cancellation
  StreamSubscription<Pair<RequestResponse, Pair<FirestoreResponseModel<T?>, List<T?>>>>? get pageStreamSubscription => _pageStreamSubscription;

  @override
  Future<Pair<RequestResponse, Pair<FirestoreResponseModel<T?>, List<T?>>>> getPage({
    FirestoreResponseModel<T?>? lastResponse,
    int? size,
    String? orderBy,
    bool descending = false,
    Map<String, dynamic>? queryParameters,
  }) async {
    logRequest("GET_PAGE", null);
    try {
      final _collection = firestore.collection(collectionName);
      Query query = _collection;

      if (orderBy != null) {
        query = query.orderBy(orderBy, descending: descending);
      }
      if (lastResponse != null) {
        if (lastResponse.lastDocumentSnapshot != null) {
          query = query.startAfterDocument(
            lastResponse.lastDocumentSnapshot!,
          );
        }
      }

      if (size != null) {
        query = query.limit(size);
      }

      return query.get().then(
        (response) {
          final _response = Pair<FirestoreResponseModel<T?>, List<T?>>(
            FirestoreResponseModel<T?>(
              lastDocumentSnapshot: response.docs.isNotEmpty ? response.docs.last as QueryDocumentSnapshot<Map<String, dynamic>> : lastResponse?.lastDocumentSnapshot,
            ),
            List<T?>.from(
              response.docs.map((e) => convertFromMap(e.data()! as Map<String, dynamic>) as T?),
            ),
          );
          if (response.docs.isEmpty) {
            logResponse("GET_PAGE", "Success", _response);
            return Pair(RequestResponse.failure, _response);
          }
          logResponse("GET_PAGE", "Success", _response);
          return Pair(RequestResponse.success, _response);
        },
      );
    } catch (e) {
      logError("GET_PAGE", collectionName, e);
      return Pair(RequestResponse.failure, Pair(FirestoreResponseModel<T?>(), []));
    }
  }

  /// Stream Page Function with Subscription Management
  Stream<Pair<RequestResponse, Pair<FirestoreResponseModel<T?>, List<T?>>>> streamPage({
    int? size,
    String? orderBy,
    bool descending = true,
    FirestoreResponseModel<T?>? lastResponse,
  }) {
    logRequest("STREAM_PAGE", null);
    try {
      final _collection = firestore.collection(collectionName);
      Query query = _collection;

      if (orderBy != null) {
        query = query.orderBy(orderBy, descending: descending);
      }

      if (lastResponse?.lastDocumentSnapshot != null) {
        query = query.startAfterDocument(lastResponse!.lastDocumentSnapshot!);
      }

      if (size != null) {
        query = query.limit(size);
      }

      final stream = query.snapshots().map(
        (response) {
          final _response = FirestoreResponseModel<T?>(
            lastDocumentSnapshot: response.docs.isNotEmpty ? response.docs.last as QueryDocumentSnapshot<Map<String, dynamic>> : lastResponse?.lastDocumentSnapshot,
          );
          final responsePair = Pair(
            RequestResponse.success,
            Pair(
              _response,
              List<T?>.from(
                response.docs.map((e) => convertFromMap(e.data()! as Map<String, dynamic>) as T?),
              ),
            ),
          );
          logResponse("STREAM_PAGE", "Success", responsePair);
          return responsePair;
        },
      );

      // Store the subscription for future management
      _pageStreamSubscription = stream.listen(
        (_) {},
        // ignore: inference_failure_on_untyped_parameter
        onError: (e) {
          logError("STREAM_PAGE", collectionName, e);
        },
      );

      return stream;
    } catch (e) {
      logError("STREAM_PAGE", collectionName, e);
      return Stream.fromFuture(Future.value(Pair(RequestResponse.failure, Pair(FirestoreResponseModel<T?>(), []))));
    }
  }

  /// Close the stream subscription
  @mustCallSuper
  @override
  void closeStreams() {
    _pageStreamSubscription?.cancel();
    _pageStreamSubscription = null;
    super.closeStreams();
  }

  // Stream<Pair<RequestResponse, Pair<FirestoreResponseModel<T?>, List<T?>>>> streamPage({
  //   int? size,
  //   String? orderBy,
  //   bool descending = true,
  //   FirestoreResponseModel<T?>? lastResponse,
  // }) {
  //   try {
  //     final _collection = firestore.collection(collectionName);
  //     Query query = _collection;

  //     if (orderBy != null) {
  //       query = query.orderBy(orderBy, descending: descending);
  //     }

  //     if (lastResponse != null) {
  //       if (lastResponse.lastDocumentSnapshot != null) {
  //         query = query.startAfterDocument(
  //           lastResponse.lastDocumentSnapshot!,
  //         );
  //       }
  //     }

  //     if (size != null) {
  //       query = query.limit(size);
  //     }

  //     return query.snapshots().map(
  //       (response) {
  //         final _response = FirestoreResponseModel<T?>(
  //           lastDocumentSnapshot: response.docs.isNotEmpty ? response.docs.last as QueryDocumentSnapshot<Map<String, dynamic>> : lastResponse?.lastDocumentSnapshot,
  //         );
  //         final responsePair = Pair(
  //           RequestResponse.success,
  //           Pair(
  //             _response,
  //             List<T?>.from(
  //               response.docs.map((e) => convertFromMap(e.data()! as Map<String, dynamic>) as T?),
  //             ),
  //           ),
  //         );
  //         return responsePair;
  //       },
  //     );
  //   } catch (e) {
  //     AppLogger.print("Error: $e", [UtilitiesLoggers.firestoreDataSource], type: LoggerType.error);
  //     return Stream.fromFuture(Future.value(Pair(RequestResponse.failure, Pair(FirestoreResponseModel<T?>(), []))));
  //   }
  // }

  @override
  Future<Pair<RequestResponse, Pair<FirestoreResponseModel<T?>, List<T?>>>> searchPage({
    FirestoreResponseModel<T?>? lastResponse,
    int? size,
    String? orderBy,
    bool descending = false,
    required Q query,
  }) async {
    logRequest("SEARCH_PAGE", null);
    try {
      var firestoreQuery = buildQuery(query, collectionReference);

      if (orderBy != null) {
        firestoreQuery = firestoreQuery.orderBy(orderBy, descending: descending);
      }
      if (lastResponse != null) {
        if (lastResponse.lastDocumentSnapshot != null) {
          firestoreQuery = firestoreQuery.startAfterDocument(
            lastResponse.lastDocumentSnapshot!,
          );
        }
      }

      if (size != null) {
        firestoreQuery = firestoreQuery.limit(size);
      }
      final _result = await firestoreQuery.get();

      final _response = Pair<FirestoreResponseModel<T?>, List<T?>>(
        FirestoreResponseModel<T?>(
          lastDocumentSnapshot: _result.docs.isNotEmpty ? _result.docs.last : null,
        ),
        List<T?>.from(
          _result.docs.map((e) => convertFromMap(e.data()) as T?),
        ),
      );
      if (_result.docs.isEmpty) {
        logResponse("SEARCH_PAGE", "Success", Pair(RequestResponse.failure, _response));
        return Pair(RequestResponse.failure, _response);
      }
      logResponse("SEARCH_PAGE", "Success", Pair(RequestResponse.success, _response));
      return Pair(RequestResponse.success, _response);
    } catch (e) {
      logError("SEARCH_PAGE", collectionName, e);
      return Pair(RequestResponse.failure, Pair(FirestoreResponseModel<T?>(), []));
    }
  }
}
