import "package:cloud_firestore/cloud_firestore.dart";
import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data_sources/paginated_source.dart";
import "package:utilities/data_sources/remote/firestore.dart";
import "package:utilities/helpers/tuples.dart";

part "paginated_firestore.mapper.dart";

@MappableClass()
class FirestoreResponseModel<T> extends ResponseModel with FirestoreResponseModelMappable<T> {
  final QueryDocumentSnapshot<Map<String, dynamic>>? lastDocumentSnapshot;

  FirestoreResponseModel({this.lastDocumentSnapshot});

  @override
  String toString() {
    return "FirestoreResponseModel(lastDocumentSnapshot: ${lastDocumentSnapshot?.data().entries.map((e) => "${e.key}: ${e.value}").join(", ")})";
  }
}

class PaginatedFirestoreDataSource<T> extends FirestoreDataSource<T> with Paginated<FirestoreResponseModel<T?>, T> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  /// [PaginatedFirestoreDataSource] constructor
  PaginatedFirestoreDataSource(
    super.collectionName, {
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  });

  @override
  Future<Pair<FirestoreResponseModel<T?>, List<T?>>> getPage({
    FirestoreResponseModel<T?>? lastResponse,
    int? size,
    String? orderBy,
  }) async {
    final _collection = _firestore.collection(collectionName);
    Query query = _collection;

    if (orderBy != null) {
      query = query.orderBy(orderBy);
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
        return _response;
      },
    );
  }

  @override
  Future<Pair<FirestoreResponseModel<T?>, List<T?>>> searchPage({
    FirestoreResponseModel<T?>? lastResponse,
    int? size,
    String? orderBy,
    Map<String, String>? queries,
  }) {
    final _collection = _firestore.collection(collectionName);
    Query query = _collection;
    if (queries != null && queries.isNotEmpty) {
      query = query.where(
        queries.keys.first,
        isEqualTo: queries.values.first,
      );
    }
    if (orderBy != null) {
      query = query.orderBy(orderBy, descending: true);
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
            lastDocumentSnapshot: response.docs.isNotEmpty ? response.docs.last as QueryDocumentSnapshot<Map<String, dynamic>> : null,
          ),
          List<T?>.from(
            response.docs.map((e) => convertDataTypeFromMap(e.data()! as Map<String, dynamic>) as T?),
          ),
        );
        return _response;
      },
    );
  }
}
