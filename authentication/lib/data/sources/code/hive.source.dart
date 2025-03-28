part of "_source.dart";

/// [HiveCodeDataSource] is a class that implements [CodeDataSource] interface.
class HiveCodeDataSource extends HiveDataSource<CodeModel, void>
    implements CodeDataSource {
  /// [HiveCodeDataSource] constructor.
  HiveCodeDataSource()
      : super(
          "codes",
          getIdFromDataType: (data) => data.salt,
          convertDataTypeFromJson: CodeModel.fromJson,
          convertDataTypeToJson: (data) => data.toJson(),
        );

  @override
  Future<RequestResponse> verifyAndConsumeCode(CODE code) {
    // TODO: implement verifyAndConsumeCode
    throw UnimplementedError();
  }

  @override
  bool matchesQuery(void query, CodeModel item) {
    // TODO: implement matchesQuery
    throw UnimplementedError();
  }

  @override
  Future<Pair<RequestResponse, CodeModel?>> search(void query) {
    // TODO: implement search
    throw UnimplementedError();
  }

  @override
  Future<Pair<RequestResponse, List<CodeModel?>>> searchAll(void query) {
    // TODO: implement searchAll
    throw UnimplementedError();
  }
}
