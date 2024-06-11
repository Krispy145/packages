part of "_source.dart";

/// [DummyVideoDataSource] is a class that implements [VideoDataSource] interface.
class DummyVideoDataSource extends DummyDataSource<VideoModel, BasicSearchQueryModel> implements VideoDataSource {
  @override
  List<VideoModel> get fakeData => VideoModel.fakeData;

  @override
  bool matchesID(String id, VideoModel item) => item.id == id;

  @override
  bool matchesQuery(BasicSearchQueryModel query, VideoModel item) {
    // TODO: implement matchesQuery
    throw UnimplementedError();
  }

  @override
  Future<Pair<RequestResponse, Pair<ResponseModel, List<VideoModel?>>>> searchPage({
    ResponseModel? lastResponse,
    int? size,
    required BasicSearchQueryModel query,
  }) {
    // TODO: implement searchPage
    throw UnimplementedError();
  }

  @override
  Future<Pair<RequestResponse, Pair<ResponseModel, List<VideoModel?>>>> getPage({
    ResponseModel? lastResponse,
    int? size,
    String? orderBy,
    Map<String, dynamic>? queryParameters,
  }) {
    // TODO: implement getPage
    throw UnimplementedError();
  }
}
