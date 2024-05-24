part of "_source.dart";

/// [DummyPlaylistItemDataSource] is a class that implements [PlaylistItemDataSource] interface.
class DummyPlaylistItemDataSource extends DummyDataSource<PlaylistItemModel, BasicSearchQueryModel> implements PlaylistItemDataSource {
  @override
  List<PlaylistItemModel> get fakeData => PlaylistItemModel.fakeData;

  @override
  bool matchesID(String id, PlaylistItemModel item) => item.id == id;

  @override
  bool matchesQuery(BasicSearchQueryModel query, PlaylistItemModel item) {
    // TODO: implement matchesQuery
    throw UnimplementedError();
  }

  @override
  Future<Pair<ResponseModel, List<PlaylistItemModel?>>> searchPage({
    ResponseModel? lastResponse,
    int? size,
    required BasicSearchQueryModel query,
  }) {
    // TODO: implement searchPage
    throw UnimplementedError();
  }

  @override
  Future<Pair<ResponseModel, List<PlaylistItemModel?>>> getPage({
    ResponseModel? lastResponse,
    int? size,
    String? orderBy,
    Map<String, dynamic>? queryParameters,
  }) {
    // TODO: implement getPage
    throw UnimplementedError();
  }
}
