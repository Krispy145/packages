part of "_source.dart";

/// [FirestoreUserDataSource] is a class that implements [UserDataSource] interface.
class FirestoreUserDataSource<T extends UserModel> extends FirestoreDataSource<T, BasicSearchQueryModel> implements UserDataSource<T> {
  /// [FirestoreUserDataSource] constructor.
  FirestoreUserDataSource({
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  }) : super(
          "users",
        );

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
  Query<Map<String, dynamic>> buildQuery(BasicSearchQueryModel query, Query<Map<String, dynamic>> collectionReference) {
    return collectionReference.where("display_name", isGreaterThanOrEqualTo: query.searchTerm);
  }
}
