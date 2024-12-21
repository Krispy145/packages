part of "_source.dart";

/// [SupabaseCodeDataSource] is a class that implements [CodeDataSource] interface.
/// /// TODO: Setup a SupabaseResponseModel that can be used to handle API responses.
class SupabaseCodeDataSource extends SupabaseDataSource<CodeModel, void> implements CodeDataSource {
  /// [SupabaseCodeDataSource] constructor.
  SupabaseCodeDataSource()
      : super(
          "codes",
          convertDataTypeFromMap: CodeModel.fromMap,
          convertDataTypeToMap: (data) => data.toMap(),
        );

  @override
  Future<RequestResponse> verifyAndConsumeCode(CODE code) {
    // TODO: implement verifyAndConsumeCode
    throw UnimplementedError();
  }

  @override
  SupabaseQueryBuilder buildQuery(void query, SupabaseQueryBuilder table) {
    // TODO: implement buildQuery
    throw UnimplementedError();
  }

  @override
  void closeStreams() {
    // TODO: implement closeStreams
  }
}
