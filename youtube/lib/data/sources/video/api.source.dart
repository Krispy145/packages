part of "_source.dart";

/// [ApiVideoDataSource] is a class that implements [VideoDataSource] interface.
class ApiVideoDataSource extends PaginatedApiDataSource<PagedResponse<VideoModel>, VideoModel, BasicSearchQueryModel> implements VideoDataSource<PagedResponse<VideoModel>> {
  final String apiKey;

  /// [ApiVideoDataSource] constructor.
  ApiVideoDataSource(this.apiKey)
      : super(
          "https://www.googleapis.com/youtube/v3",
          sourceSuffix: "videos",
          convertDataTypeFromMap: (map) => VideoModel.fromMap(map),
          convertDataTypeToMap: (data) => data.toMap(),
          convertResponseTypeFromMap: (data) => PagedResponse.fromJson(data, VideoModel.fromMap),
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
              "Access-Control-Allow-Credentials": "true",
            },
          ),
        );

  @override
  Pair<String, Map<String, dynamic>?> createUrlWithId(String url, String id) => Pair(url, {"id": id});

  @override
  Map<String, dynamic> buildQuery(BasicSearchQueryModel query) {
    return {
      "q": query.searchTerm,
    };
  }

  @override
  Future<Pair<RequestResponse, VideoModel?>> get(
    String id, {
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? "$baseUrlWithSuffix/$pathExtensions" : baseUrlWithSuffix;
    final cancelKey = "$_url/$id/get";
    if (cancelPreviousRequest) {
      cancel(cancelKey);
    }
    final response = await dio.get<Map<String, dynamic>>(
      createUrlWithId(_url, id).first,
      queryParameters: {...?queryParameters, ...?createUrlWithId(_url, id).second},
      cancelToken: getCancelToken(cancelKey),
    );
    final convertedResponse = response.data != null ? convertResponseTypeFromMap(response.data!) : null;
    if (convertedResponse == null) {
      return const Pair(RequestResponse.failure, null);
    }
    return Pair(RequestResponse.success, convertedResponse.items.firstOrNull);
  }

  /// [_handleError] is an optional helper method that handles errors when calling the API.
  // ignore: unused_element
  Future<VideoModel?> _handleError(Future<VideoModel?> Function() apiCall) async {
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
  Future<Pair<RequestResponse, Pair<PagedResponse<VideoModel>?, List<VideoModel?>>>> _handlePagedError(
    Future<Pair<RequestResponse, Pair<PagedResponse<VideoModel>?, List<VideoModel?>>>> Function() apiCall,
  ) async {
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
  Future<Pair<RequestResponse, Pair<PagedResponse<VideoModel>?, List<VideoModel?>>>> getPage({
    PagedResponse<VideoModel>? lastResponse,
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
  Future<Pair<RequestResponse, Pair<PagedResponse<VideoModel>, List<VideoModel?>>>> searchPage({
    PagedResponse<VideoModel>? lastResponse,
    int? size,
    required BasicSearchQueryModel query,
    String? orderBy,
    Map<String, dynamic>? queryParameters,
  }) {
    // TODO: implement searchPage
    throw UnimplementedError();
  }
}
