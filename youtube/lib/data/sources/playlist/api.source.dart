part of "_source.dart";

/// [ApiPlaylistDataSource] is a class that implements [PlaylistDataSource] interface.
class ApiPlaylistDataSource extends PaginatedApiDataSource<PagedResponse<PlaylistModel>, PlaylistModel, BasicSearchQueryModel> implements PlaylistDataSource<PagedResponse<PlaylistModel>> {
  final String apiKey;

  /// [ApiPlaylistDataSource] constructor.
  ApiPlaylistDataSource(this.apiKey)
      : super(
          "https://www.googleapis.com/youtube/v3",
          sourceSuffix: "playlists",
          convertDataTypeFromMap: (map) => PlaylistModel.fromMap(map),
          convertDataTypeToMap: (data) => data.toMap(),
          convertResponseTypeFromMap: (data) => PagedResponse.fromJson(data, PlaylistModel.fromMap),
          getNexPageParametersFromResponse: (lastResponse, size, orderBy) {
            final parameters = <String, dynamic>{};
            if (lastResponse != null) {
              parameters["pageToken"] = lastResponse.nextPageToken;
            }
            if (size != null) {
              parameters["maxResults"] = size;
            }
            return parameters;
          },
          getItemsFromResponse: (response) => response.items,
          options: BaseOptions(
            queryParameters: {
              "key": apiKey,
              "part": "id,snippet,contentDetails,status",
            },
            // headers: {
            //   "Access-Control-Allow-Origin": "*",
            //   "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE, OPTIONS, HEAD",
            //   "Access-Control-Allow-Headers": "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
            //   "Content-Type": "application/json",
            //   "Access-Control-Allow-Credentials": "true"
            // },
          ),
        );

  @override
  Map<String, dynamic> buildQuery(BasicSearchQueryModel query) {
    return {
      "q": query.searchTerm,
    };
  }

  @override
  Pair<String, Map<String, dynamic>?> createUrlWithId(String url, String id) => Pair(url, {"id": id});

  /// [_handleError] is an optional helper method that handles errors when calling the API.
  // ignore: unused_element
  Future<PlaylistModel?> _handleError(Future<PlaylistModel?> Function() apiCall) async {
    try {
      return await apiCall();
    } catch (e) {
      AppLogger.print(
        "API RESULT: Failed request: $e",
        [YoutubeLoggers.playlist],
        type: LoggerType.error,
      );
      throw Exception(e.toString());
    }
  }

  /// [_handleError] is an optional helper method that handles errors when calling the API.
  // ignore: unused_element
  Future<Pair<RequestResponse, Pair<PagedResponse<PlaylistModel>?, List<PlaylistModel?>>>> _handlePagedError(
    Future<Pair<RequestResponse, Pair<PagedResponse<PlaylistModel>?, List<PlaylistModel?>>>> Function() apiCall,
  ) async {
    try {
      return await apiCall();
    } catch (e) {
      AppLogger.print(
        "API RESULT: Failed request: $e",
        [YoutubeLoggers.playlist],
        type: LoggerType.error,
      );
      throw Exception(e.toString());
    }
  }

  @override
  Future<Pair<RequestResponse, Pair<PagedResponse<PlaylistModel>?, List<PlaylistModel?>>>> getPage({
    PagedResponse<PlaylistModel>? lastResponse,
    int? size,
    String? orderBy,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _handlePagedError(
      () async {
        final page = await super.getPage(
          lastResponse: lastResponse,
          size: size,
          orderBy: orderBy,
          queryParameters: queryParameters,
        );
        return page;
      },
    );
  }

  @override
  Future<Pair<RequestResponse, Pair<PagedResponse<PlaylistModel>, List<PlaylistModel?>>>> searchPage({
    PagedResponse<PlaylistModel>? lastResponse,
    int? size,
    required BasicSearchQueryModel query,
    String? orderBy,
    Map<String, dynamic>? queryParameters,
  }) {
    // TODO: implement searchPage
    throw UnimplementedError();
  }
}
