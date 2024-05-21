part of "_source.dart";

/// [DummyVideoDataSource] is a class that implements [VideoDataSource] interface.
class DummyVideoDataSource extends DummyDataSource<VideoModel, BasicSearchQueryModel> implements VideoDataSource {
  @override
  List<VideoModel> get fakeData => VideoModel.fakeData;

  @override
  bool matchesID(String id, VideoModel item) => item.hashCode == id;

  @override
  bool matchesQuery(BasicSearchQueryModel query, VideoModel item) {
    if (query.searchTerm.isEmpty) return true;
    return item.snippet?.title?.contains(query.searchTerm) ?? false;
  }

  @override
  Future<List<VideoModel?>> getAllFromPlaylist(String playlistId) {
    return Future.value([]);
  }
}
