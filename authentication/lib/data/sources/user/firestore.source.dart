part of "_source.dart";

/// [FirestoreUserDataSource] is a class that implements [UserDataSource] interface.
class FirestoreUserDataSource<T extends UserModel> extends PaginatedFirestoreDataSource<T, UserSearchQueryModel> implements UserDataSource<FirestoreResponseModel<T?>, T> {
  /// [FirestoreUserDataSource] constructor.
  FirestoreUserDataSource({
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
    required super.titleFromType,
  }) : super("users");

  /// [_handleError] is an optional helper method that handles errors when calling the Firestore database.
  // ignore: unused_element
  Future<T?> _handleError(Future<T?> Function() firestoreCall) async {
    try {
      return await firestoreCall();
    } catch (e) {
      AppLogger.print(
        "Firestore RESULT: Failed request: $e",
        [AuthenticationLoggers.user],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }

  @override
  Future<List<T?>> searchAllAuthTypes(UserSearchQueryModel query) async {
    if (query.mustInclude) {
      return collectionReference.where(query.searchTerm, isEqualTo: query.authType?.name).get().then((querySnapshot) {
        if (query.isAuthorized != null) {
          return querySnapshot.docs.map((doc) => convertFromMap(doc.data())).toList().where((element) => element.isAuthorized == query.isAuthorized).toList();
        }
        return querySnapshot.docs.map((doc) => convertFromMap(doc.data())).toList();
      });
    } else if (query.mustExclude) {
      return collectionReference.where(query.searchTerm, isNotEqualTo: query.authType?.name).get().then((querySnapshot) {
        if (query.isAuthorized != null) {
          return querySnapshot.docs.map((doc) => convertFromMap(doc.data())).toList().where((element) => element.isAuthorized == query.isAuthorized).toList();
        }
        return querySnapshot.docs.map((doc) => convertFromMap(doc.data())).toList();
      });
    } else {
      return [];
    }
  }

  @override
  Future<List<T?>> getUsersByIds(List<String> ids) async {
    if (ids.isEmpty) return Future<List<T>>.value([]);
    final querySnapshot = await collectionReference.where("id", whereIn: ids).get();
    return querySnapshot.docs.map((doc) => convertFromMap(doc.data())).toList();
  }

  @override
  Query<Map<String, dynamic>> buildQuery(
    UserSearchQueryModel query,
    Query<Map<String, dynamic>> collectionReference,
  ) {
    if (query.searchTerm.isEmpty) {
      return collectionReference;
    }
    if (query.mustExclude) {
      return collectionReference.where(
        "display_name",
        isNotEqualTo: query.searchTerm,
      );
    } else {
      var firestoreQuery = collectionReference;

      final searchTerm = query.searchTerm;
      if (searchTerm.isNotEmpty) {
        final _filters = Filter.or(
          Filter("search_cases", arrayContains: searchTerm),
          Filter("search_cases", arrayContains: searchTerm.toLowerCase()),
          Filter("search_cases", arrayContains: searchTerm.toTitleCase()),
        );
        firestoreQuery = firestoreQuery.where(_filters);
      }

      return firestoreQuery;
    }
  }
}
