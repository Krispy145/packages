part of "_source.dart";

/// [DummyPlaylistDataSource] is a class that implements [PlaylistDataSource] interface.
class DummyPlaylistDataSource extends DummyDataSource<PlaylistModel, BasicSearchQueryModel> implements PlaylistDataSource {
  @override
  List<PlaylistModel> get fakeData => PlaylistModel.fakeData;

  @override
  bool matchesID(String id, PlaylistModel item) => item.id == id;

  @override
  bool matchesQuery(BasicSearchQueryModel query, PlaylistModel item) {
    // TODO: implement matchesQuery
    throw UnimplementedError();
  }

  @override
  Future<Pair<RequestResponse, Pair<ResponseModel, List<PlaylistModel?>>>> searchPage({
    ResponseModel? lastResponse,
    int? size,
    required BasicSearchQueryModel query,
  }) {
    // TODO: implement searchPage
    throw UnimplementedError();
  }

  @override
  Future<Pair<RequestResponse, Pair<ResponseModel, List<PlaylistModel?>>>> getPage({
    ResponseModel? lastResponse,
    int? size,
    String? orderBy,
    bool descending = false,
    Map<String, dynamic>? queryParameters,
  }) {
    // TODO: implement getPage
    throw UnimplementedError();
  }
}
