part of "_source.dart";

/// [FirestoreCodeDataSource] is a class that implements [CodeDataSource] interface.
class FirestoreCodeDataSource extends FirestoreDataSource<CodeModel, void>
    implements CodeDataSource {
  /// [FirestoreCodeDataSource] constructor.
  FirestoreCodeDataSource()
      : super(
          "codes",
          convertDataTypeFromMap: CodeModel.fromMap,
          convertDataTypeToMap: (data) => data.toMap(),
          titleFromType: (data) => data.id,
        );

  @override
  Future<RequestResponse> verifyAndConsumeCode(CODE inputCode) async {
    final codes = await getAll();
    if (codes.second.isEmpty) {
      return RequestResponse.failure;
    }
    for (final code in codes.second) {
      if (code == null) return RequestResponse.failure;
      final salt = code.salt;
      final hashedInputCode = generateHashCode(inputCode, salt);

      if (hashedInputCode == code.id) {
        return RequestResponse.success;
      }
    }
    return RequestResponse.denied;
  }

  /// [_handleError] is an optional helper method that handles errors when calling the Firestore.
  // ignore: unused_element
  Future<T?> _handleError<T>(Future<T?> Function() firestoreCall) async {
    try {
      return await firestoreCall();
    } catch (e) {
      AppLogger.print(
        "Firestore RESULT: Failed request: $e",
        [AuthenticationLoggers.code],
        type: LoggerType.error,
      );
      return null;
    }
  }

  @override
  Query<Map<String, dynamic>> buildQuery(
    void query,
    Query<Map<String, dynamic>> collectionReference,
  ) {
    //TODO: Implement buildQuery
    throw UnimplementedError();
  }
}
