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
  Future<List<PlaylistModel?>> getAll({String? channelId}) {
    // return super.getAll(channelId);
    throw UnimplementedError();
  }
}
