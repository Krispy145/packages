part of "_source.dart";

/// [FirestoreUserPermissionDataSource] is a class that implements [UserPermissionDataSource] interface.
class FirestoreUserPermissionDataSource<T extends UserModel> extends FirestoreDataSource<PermissionModel, BasicSearchQueryModel>
    implements UserPermissionDataSource<FirestoreResponseModel<PermissionModel?>> {
  final UUID userId;

  /// [FirestoreUserPermissionDataSource] constructor.
  FirestoreUserPermissionDataSource({
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

  @override
  Future<RequestResponse> update(String id, PermissionModel data) async {
    await firestore.collection("users").doc(id).set(
      {
        "role": data.role,
      },
      SetOptions(merge: true),
    );
    return super.update(id, data);
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
