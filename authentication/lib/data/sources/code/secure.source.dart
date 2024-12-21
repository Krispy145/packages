part of "_source.dart";

/// [SecureCodeDataSource] is a class that implements [CodeDataSource] interface.
class SecureCodeDataSource extends PaginatedSecureDataSource<CodeModel, void> implements CodeDataSource {
  /// [SecureCodeDataSource] constructor.
  SecureCodeDataSource()
      : super(
          convertDataTypeFromMap: CodeModel.fromMap,
          convertDataTypeToMap: (data) => data.toMap(),
        );

  @override
  Future<RequestResponse> verifyAndConsumeCode(CODE code) {
    // TODO: implement verifyAndConsumeCode
    throw UnimplementedError();
  }

  @override
  bool matchesID(String key, CodeModel item) {
    // TODO: implement matchesID
    throw UnimplementedError();
  }

  @override
  bool matchesQuery(void query, CodeModel item) {
    // TODO: implement matchesQuery
    throw UnimplementedError();
  }

  @override
  void closeStreams() {
    // TODO: implement closeStreams
  }
}
