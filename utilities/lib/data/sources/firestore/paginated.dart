import "package:cloud_firestore/cloud_firestore.dart";
import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data/sources/firestore/source.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

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

  @override
  Future<Pair<RequestResponse, Pair<FirestoreResponseModel<T?>, List<T?>>>> getPage({
    FirestoreResponseModel<T?>? lastResponse,
    int? size,
    String? orderBy,
    bool descending = false,
    Map<String, dynamic>? queryParameters,
  }) async {
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
            response.docs.map((e) => convertDataTypeFromMap(e.data()! as Map<String, dynamic>) as T?),
          ),
        );
        if (response.docs.isEmpty) {
          return Pair(RequestResponse.failure, _response);
        }
        return Pair(RequestResponse.success, _response);
      },
    );
  }

  Stream<Pair<RequestResponse, Pair<FirestoreResponseModel<T?>, List<T?>>>> streamPage({
    int? size,
    String? orderBy,
    bool descending = false,
    FirestoreResponseModel<T?>? lastResponse,
  }) {
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

      return query.snapshots().map(
        (response) {
          final _response = FirestoreResponseModel<T?>(
            lastDocumentSnapshot: response.docs.isNotEmpty ? response.docs.last as QueryDocumentSnapshot<Map<String, dynamic>> : lastResponse?.lastDocumentSnapshot,
          );
          return Pair(
            RequestResponse.success,
            Pair(
              _response,
              List<T?>.from(
                response.docs.map((e) => convertDataTypeFromMap(e.data()! as Map<String, dynamic>) as T?),
              ),
            ),
          );
        },
      );
    } catch (e) {
      AppLogger.print("Error: $e", [UtilitiesLoggers.firestoreDataSource], type: LoggerType.error);
      return Stream.fromFuture(Future.value(Pair(RequestResponse.failure, Pair(FirestoreResponseModel<T?>(), []))));
    }
  }

  @override
  Future<Pair<RequestResponse, Pair<FirestoreResponseModel<T?>, List<T?>>>> searchPage({
    FirestoreResponseModel<T?>? lastResponse,
    int? size,
    String? orderBy,
    bool descending = false,
    required Q query,
  }) async {
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
    return firestoreQuery.get().then(
      (response) {
        final _response = Pair<FirestoreResponseModel<T?>, List<T?>>(
          FirestoreResponseModel<T?>(
            lastDocumentSnapshot: response.docs.isNotEmpty ? response.docs.last : null,
          ),
          List<T?>.from(
            response.docs.map((e) => convertDataTypeFromMap(e.data()) as T?),
          ),
        );
        if (response.docs.isEmpty) {
          return Pair(RequestResponse.failure, _response);
        }
        return Pair(RequestResponse.success, _response);
      },
    );
  }
}
