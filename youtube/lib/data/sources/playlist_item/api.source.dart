part of "_source.dart";

/// [ApiPlaylistItemDataSource] is a class that implements [PlaylistItemDataSource] interface.
class ApiPlaylistItemDataSource extends PaginatedApiDataSource<PagedResponse<PlaylistItemModel>, PlaylistItemModel, BasicSearchQueryModel>
    implements PlaylistItemDataSource<PagedResponse<PlaylistItemModel>> {
  final String apiKey;

  /// [ApiPlaylistItemDataSource] constructor.
  ApiPlaylistItemDataSource(this.apiKey)
      : super(
          "https://www.googleapis.com/youtube/v3",
          sourceSuffix: "playlistItems",
          convertDataTypeFromMap: (map) => PlaylistItemModel.fromMap(map),
          convertDataTypeToMap: (data) => data.toMap(),
          convertResponseTypeFromMap: (data) => PagedResponse.fromJson(data, PlaylistItemModel.fromMap),
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
            headers: {
              "Access-Control-Allow-Origin": "*",
              "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE, OPTIONS, HEAD",
              "Access-Control-Allow-Headers": "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
              "Content-Type": "application/json",
              "Access-Control-Allow-Credentials": "true"
            },
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
  Future<PlaylistItemModel?> _handleError(Future<PlaylistItemModel?> Function() apiCall) async {
    try {
      return await apiCall();
    } catch (e) {
      AppLogger.print(
        "API RESULT: Failed request: $e",
        [YoutubeLoggers.video],
        type: LoggerType.error,
      );
      throw Exception(e.toString());
    }
  }

  /// [_handleError] is an optional helper method that handles errors when calling the API.
  // ignore: unused_element
  Future<Pair<PagedResponse<PlaylistItemModel>?, List<PlaylistItemModel?>>> _handlePagedError(Future<Pair<PagedResponse<PlaylistItemModel>?, List<PlaylistItemModel?>>> Function() apiCall) async {
    try {
      return await apiCall();
    } catch (e) {
      AppLogger.print(
        "API RESULT: Failed request: $e",
        [YoutubeLoggers.video],
        type: LoggerType.error,
      );
      throw Exception(e.toString());
    }
  }

  @override
  Future<Pair<PagedResponse<PlaylistItemModel>?, List<PlaylistItemModel?>>> getPage({
    PagedResponse<PlaylistItemModel>? lastResponse,
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
  Future<Pair<PagedResponse<PlaylistItemModel>, List<PlaylistItemModel?>>> searchPage({
    PagedResponse<PlaylistItemModel>? lastResponse,
    int? size,
    required BasicSearchQueryModel query,
    String? orderBy,
    Map<String, dynamic>? queryParameters,
  }) {
    // TODO: implement searchPage
    throw UnimplementedError();
  }
}
