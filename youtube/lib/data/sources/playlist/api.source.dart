part of "_source.dart";

/// [ApiPlaylistDataSource] is a class that implements [PlaylistDataSource] interface.
class ApiPlaylistDataSource extends ApiDataSource<PlaylistModel, BasicSearchQueryModel> implements PlaylistDataSource {
  final String apiKey;

  ApiPlaylistDataSource({
    required this.apiKey,
  }) : super(
          "https://www.googleapis.com/youtube/v3",
          sourceSuffix: "playlists",
          convertDataTypeFromMap: (map) => PlaylistModel.fromMap(map),
          convertDataTypeToMap: (data) => data.toMap(),
        );

  @override
  Map<String, dynamic> buildQuery(BasicSearchQueryModel query) {
    return {};
  }

  @override
  Future<PlaylistModel?> get(String id, {String? pathExtensions, Map<String, dynamic>? queryParameters, bool cancelPreviousRequest = false}) {
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
  Future<List<PlaylistModel?>> getAll({bool cancelPreviousRequest = true, String? pathExtensions, Map<String, dynamic>? queryParameters, String? channelId}) {
    assert(channelId != null, "Channel ID must not be null.");
    return super.getAll(
        pathExtensions: pathExtensions,
        queryParameters: {
          'part': "snippet,contentDetails",
          'channelId': channelId,
          'key': apiKey,
        }..addAll(queryParameters ?? {}),
        cancelPreviousRequest: cancelPreviousRequest);
  }
}
