import "package:authentication/data/models/review_model.dart";
import "package:authentication/data/sources/firestore/secured_source.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import "package:utilities/data/models/user_permissions_model.dart";
import "package:utilities/data/sources/firestore/paginated.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/helpers/tuples.dart";

abstract class SecuredPaginatedFirestoreDataSource<T, Q> extends SecuredFirestoreDataSource<T, Q> with Paginated<FirestoreResponseModel<T?>, T, Q> {
  /// [SecuredPaginatedFirestoreDataSource] constructor
  SecuredPaginatedFirestoreDataSource(
    super.collectionName, {
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  });

  @override
  Future<Pair<FirestoreResponseModel<T?>, List<T?>>> getPage({
    FirestoreResponseModel<T?>? lastResponse,
    int? size,
    String? orderBy,
    Map<String, dynamic>? queryParameters,
  }) async {
    final _collection = firestore.collection(collectionName);
    Query<Map<String, dynamic>> query = _collection;

    query = await _checkPermissionsForPage(query);

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
            lastDocumentSnapshot: response.docs.isNotEmpty ? response.docs.last : lastResponse?.lastDocumentSnapshot,
          ),
          List<T?>.from(
            response.docs.map((e) => convertDataTypeFromMap(e.data()) as T?),
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
    required Q query,
  }) async {
    var firestoreQuery = buildQuery(query, collectionReference);

    firestoreQuery = await _checkPermissionsForPage(firestoreQuery);
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
        return _response;
      },
    );
  }

  Future<Query<Map<String, dynamic>>> _checkPermissionsForPage(Query<Map<String, dynamic>> query) async {
    final checkPermissions = await checkPermissionLevel(CRUD.read);

    final ids = <String>[];
    if (checkPermissions.any((element) => element.first.split("/").last == "all" && element.second == PermissionLevel.yes)) {
      query = query;
    } else {
      ids.addAll(checkPermissions.map((e) => e.first.split("/").last).toList());
      query = query.where("id", whereIn: ids);
    }
    return query;
  }
}
