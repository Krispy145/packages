part of "_source.dart";

/// [DummyYoutubeDataSource] is a class that implements [YoutubeDataSource] interface.
class DummyYoutubeDataSource
    extends DummyDataSource<YoutubeModel, BasicSearchQueryModel>
    implements YoutubeDataSource {
  @override
  List<YoutubeModel> get fakeData => YoutubeModel.fakeData;

  @override
  bool matchesID(String id, YoutubeModel item) => item.id == id;

  @override
  bool matchesQuery(BasicSearchQueryModel query, YoutubeModel item) {
    // TODO: implement matchesQuery
    throw UnimplementedError();
  }
}
