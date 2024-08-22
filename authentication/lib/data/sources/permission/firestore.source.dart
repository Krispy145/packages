part of "_source.dart";

/// [FirestorePermissionDataSource] is a class that implements [PermissionDataSource] interface.
class FirestorePermissionDataSource extends PaginatedFirestoreDataSource<PermissionModel, BasicSearchQueryModel> implements PermissionDataSource<FirestoreResponseModel<PermissionModel?>> {
  /// [FirestorePermissionDataSource] constructor.
  FirestorePermissionDataSource()
      : super(
          "permissions",
          convertDataTypeFromMap: PermissionModel.fromMap,
          convertDataTypeToMap: (data) => data.toMap(),
          titleFromType: (data) => data.role.camelCaseToTitleCase(),
        );

  @override
  Query<Map<String, dynamic>> buildQuery(BasicSearchQueryModel query, Query<Map<String, dynamic>> collectionReference) {
    // TODO: implement buildQuery
    throw UnimplementedError();
  }

  /// [_handleError] is an optional helper method that handles errors when calling the Firestore.
  // ignore: unused_element
  Future<T?> _handleError<T>(Future<T?> Function() firestoreCall) async {
    try {
      return await firestoreCall();
    } catch (e) {
      AppLogger.print(
        "Firestore RESULT: Failed request: $e",
        [AuthenticationLoggers.permission],
        type: LoggerType.error,
      );
      return null;
    }
  }
}
