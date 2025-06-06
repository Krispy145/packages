import "package:authentication/data/models/review_model.dart";
import "package:authentication/data/models/user_model.dart";
import "package:authentication/data/sources/firestore/secured_source.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import "package:flutter/foundation.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data/models/user_permissions_model.dart";
import "package:utilities/data/sources/firestore/paginated.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/extensions/string.dart";
import "package:utilities/helpers/tuples.dart";

class SecuredPaginatedFirestoreDataSource<U extends UserModel, T,
        Q extends BasicSearchQueryModel>
    extends SecuredFirestoreDataSource<U, T, Q>
    with Paginated<FirestoreResponseModel<T?>, T, Q> {
  /// [SecuredPaginatedFirestoreDataSource] constructor
  SecuredPaginatedFirestoreDataSource(
    super.collectionName, {
    required super.currentUser,
    required super.userPermissions,
    required super.convertDataTypeToMap,
    required super.convertDataTypeFromMap,
    required super.titleFromType,
  });

  @override
  Future<Pair<RequestResponse, Pair<FirestoreResponseModel<T?>, List<T?>>>>
      getPage({
    FirestoreResponseModel<T?>? lastResponse,
    int? size,
    String? orderBy,
    bool descending = false,
    Map<String, dynamic>? queryParameters,
  }) async {
    final _collection = firestore.collection(collectionName);
    Query<Map<String, dynamic>> query = _collection;

    final permissionsFirestoreQuery =
        await _getPermissionBasedQueryForPage(query);
    if (permissionsFirestoreQuery == null) {
      return Pair(
        RequestResponse.denied,
        Pair(FirestoreResponseModel<T?>(), []),
      );
    }

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

    final result = await query.get().then(
      (response) {
        final _response = Pair<FirestoreResponseModel<T?>, List<T?>>(
          FirestoreResponseModel<T?>(
            lastDocumentSnapshot: response.docs.isNotEmpty
                ? response.docs.last
                : lastResponse?.lastDocumentSnapshot,
          ),
          List<T?>.from(
            response.docs.map((e) => convertDataTypeFromMap(e.data()) as T?),
          ),
        );
        if (_response.second.isEmpty) {
          return Pair(RequestResponse.failure, _response);
        }
        return Pair(RequestResponse.success, _response);
      },
    );
    return result;
  }

  @override
  Future<Pair<RequestResponse, Pair<FirestoreResponseModel<T?>, List<T?>>>>
      searchPage({
    FirestoreResponseModel<T?>? lastResponse,
    int? size,
    String? orderBy,
    required Q query,
  }) async {
    try {
      var firestoreQuery = buildQuery(query, collectionReference);
      final permissionsFirestoreQuery =
          await _getPermissionBasedQueryForPage(firestoreQuery);
      if (permissionsFirestoreQuery == null) {
        return Pair(
          RequestResponse.denied,
          Pair(FirestoreResponseModel<T?>(), []),
        );
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
              lastDocumentSnapshot:
                  response.docs.isNotEmpty ? response.docs.last : null,
            ),
            List<T?>.from(
              response.docs.map((e) => convertDataTypeFromMap(e.data()) as T?),
            ),
          );
          return Pair(RequestResponse.success, _response);
        },
      );
    } catch (e) {
      debugPrint("Error: $e");
      return Pair(
        RequestResponse.failure,
        Pair(FirestoreResponseModel<T?>(), []),
      );
    }
  }

  Future<Query<Map<String, dynamic>>?> _getPermissionBasedQueryForPage(
    Query<Map<String, dynamic>> query,
  ) async {
    final checkPermissions = permissionChecker.checkPermissionLevel(CRUD.read);
    final pagedPermissionResponse = permissionChecker.checkPermissionsForPage(
      checkedPermissions: checkPermissions,
    );
    if (pagedPermissionResponse.first && pagedPermissionResponse.second) {
      query = query;
    } else {
      final ids = <String>[
        ...checkPermissions
            .where(
              (element) =>
                  element.first.split("/").first == collectionName &&
                  element.first.split("/").last != "all" &&
                  element.second == PermissionLevel.yes,
            )
            .map((e) => e.first.split("/").last),
      ];
      if (ids.isEmpty) return null;

      query = query.where("id", whereIn: ids);
    }
    return query;
  }

  @override
  Query<Map<String, dynamic>> buildQuery(
    Q query,
    Query<Map<String, dynamic>> collectionReference,
  ) {
    var firestoreQuery = collectionReference;

    final searchTerm = query.searchTerm;
    if (searchTerm.isNotEmpty) {
      final _filters = Filter.or(
        Filter("search_cases", arrayContains: searchTerm),
        Filter("search_cases", arrayContains: searchTerm.toTitleCase()),
      );
      firestoreQuery = firestoreQuery.where(_filters);
    }

    return firestoreQuery;
  }
}
