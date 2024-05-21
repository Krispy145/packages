part of "_source.dart";

/// [ApiVideoDataSource] is a class that implements [VideoDataSource] interface.
class ApiVideoDataSource extends ApiDataSource<VideoModel, BasicSearchQueryModel> implements VideoDataSource {
  final String apiKey;

  ApiVideoDataSource({
    required this.apiKey,
  }) : super(
          "https://www.googleapis.com/youtube/v3",
          sourceSuffix: "videos",
          convertDataTypeFromMap: (map) => VideoModel.fromMap(map),
          convertDataTypeToMap: (data) => data.toMap(),
        );

  // BaseOptions(
  //     queryParameters: {
  //       'part': "snippet,contentDetails",
  //       'key': apiKey,
  //     },
  //   )

  @override
  Map<String, dynamic> buildQuery(BasicSearchQueryModel query) {
    return {};
  }

  @override
  Future<VideoModel?> get(String id, {String? pathExtensions, Map<String, dynamic>? queryParameters, bool cancelPreviousRequest = false}) {
    // TODO: implement get
    return super.get(id,
        pathExtensions: pathExtensions,
        queryParameters: {
          'part': "snippet,contentDetails",
          'key': apiKey,
        }..addAll(queryParameters ?? {}),
        cancelPreviousRequest: cancelPreviousRequest);
  }

  @override
  Future<List<VideoModel?>> getAllFromPlaylist(String playlistId) {
    // TODO: implement getAllFromPlaylist
    throw UnimplementedError();
  }
}
