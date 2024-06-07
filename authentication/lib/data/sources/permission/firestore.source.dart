part of "_source.dart";

/// [FirestorePermissionDataSource] is a class that implements [PermissionDataSource] interface.
class FirestorePermissionDataSource<T extends UserModel> extends FirestoreDataSource<PermissionModel, BasicSearchQueryModel> implements PermissionDataSource<FirestoreResponseModel<PermissionModel?>> {
  final UUID userId;

  /// [FirestorePermissionDataSource] constructor.
  FirestorePermissionDataSource({
    required this.userId,
  }) : super(
          "users/$userId/permissions",
          convertDataTypeFromMap: PermissionModel.fromMap,
          convertDataTypeToMap: (data) => data.toMap(),
        );

  @override
  Query<Map<String, dynamic>> buildQuery(
    BasicSearchQueryModel query,
    Query<Map<String, dynamic>> collectionReference,
  ) {
    // TODO: implement buildQuery
    throw UnimplementedError();
  }

  /// [_handleError] is an optional helper method that handles errors when calling the Firestore.
  // ignore: unused_element
  Future<T?> _handleError(Future<T?> Function() firestoreCall) async {
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
