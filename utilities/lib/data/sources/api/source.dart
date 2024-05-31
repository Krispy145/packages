import "package:dio/dio.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

/// [ApiDataSource] is a wrapper class for [Dio] which implements [DataSource]
abstract class ApiDataSource<T, Q> with Mappable<T> implements DataSource<T, Q> {
  final Dio dio = Dio();

  final Map<String, CancelToken> cancelTokens = {};

  /// [baseUrl] is the base url of the API
  final String baseUrl;

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  /// [sourceSuffix] is the suffix of the API
  final String sourceSuffix;

  final String? proxy;

  /// [ApiDataSource] constructor
  ApiDataSource(
    this.baseUrl, {
    this.proxy,
    required this.sourceSuffix,
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
    BaseOptions? options,
  }) {
    // Add interceptors to _dio
    dio.options = options ?? BaseOptions();
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          if (proxy != null) {
            final _queryParametersString = options.queryParameters.entries.map((e) => "${e.key}=${e.value}").join("&");
            options
              ..path = "$proxy${Uri.encodeComponent("${options.path}?$_queryParametersString")}"
              ..queryParameters = {};
          }
          // Log the request
          AppLogger.print(
            "REQUEST: Headers: ${options.headers} ${options.method} -> ${options.uri}",
            [UtilitiesLoggers.apiDataSource],
          );
          return handler.next(options);
        },
        onResponse: (response, handler) {
          // Log the response
          AppLogger.print(
            "RESPONSE: ${response.statusCode} -> ${response.statusMessage}",
            [UtilitiesLoggers.apiDataSource],
          );
          return handler.next(response);
        },
        onError: (e, handler) {
          // Log errors
          AppLogger.print(
            "ERROR: ${e.response?.statusCode} -> ${e.response?.statusMessage}",
            [UtilitiesLoggers.apiDataSource],
            type: LoggerType.error,
          );
          return handler.next(e);
        },
      ),
    );
  }

  String get _baseUrl => "$baseUrl/$sourceSuffix";

  @override
  T convertFromMap(Map<String, dynamic> data) => convertDataTypeFromMap(data);

  @override
  Map<String, dynamic> convertToMap(T data) => convertDataTypeToMap(data);

  /// [requestData] is a generic function that will be used to request data from the API
  Future<T?> requestData<RequestType>({
    required String requestExtension,
    required RequestType requestType,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final cancelKey = "$_baseUrl/$requestExtension";
    if (cancelPreviousRequest) {
      cancel(cancelKey);
    }
    final response = await dio.post<Map<String, dynamic>>(
      "$_baseUrl/$requestExtension",
      data: requestType,
      queryParameters: queryParameters,
      cancelToken: getCancelToken(cancelKey),
    );
    return response.data != null ? convertDataTypeFromMap(response.data!) : null;
  }

  Pair<String, Map<String, dynamic>?> createUrlWithId(String url, String id) => Pair("$url/$id", null);

  @override
  Future<T?> get(
    String id, {
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
    final cancelKey = "$_url/$id/get";
    if (cancelPreviousRequest) {
      cancel(cancelKey);
    }
    final response = await dio.get<Map<String, dynamic>>(
      createUrlWithId(_url, id).first,
      queryParameters: {...?queryParameters, ...?createUrlWithId(_url, id).second},
      cancelToken: getCancelToken(cancelKey),
    );
    final convertedResponse = response.data != null ? convertDataTypeFromMap(response.data!) : null;
    return convertedResponse;
  }

  @override
  Future<List<T?>> getAll({
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
    final cancelKey = "$_url/getAll";
    if (cancelPreviousRequest) {
      cancel(cancelKey);
    }
    final response = await dio.get<List<Map<String, dynamic>>>(
      _url,
      queryParameters: queryParameters,
      cancelToken: getCancelToken(cancelKey),
    );
    return response.data!.map(convertDataTypeFromMap).toList();
  }

  @override
  Future<RequestResponse> delete(
    String id, {
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
    final cancelKey = "$_url/$id/delete";
    if (cancelPreviousRequest) {
      cancel(cancelKey);
    }
    await dio.delete<Map<String, dynamic>>(
      createUrlWithId(_url, id).first,
      queryParameters: {...?queryParameters, ...?createUrlWithId(_url, id).second},
      cancelToken: getCancelToken(cancelKey),
    );
    return RequestResponse.success;
  }

  @override
  Future<RequestResponse> deleteAll({
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
    final cancelKey = "$_url/deleteAll";
    if (cancelPreviousRequest) {
      cancel(cancelKey);
    }
    await dio.delete<Map<String, dynamic>>(
      _url,
      queryParameters: queryParameters,
      cancelToken: getCancelToken(cancelKey),
    );
    return RequestResponse.success;
  }

  @override
  Future<RequestResponse> update(
    String id,
    T data, {
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
    final cancelKey = "$_url/$id/update";
    if (cancelPreviousRequest) {
      cancel(cancelKey);
    }
    await dio.put<Map<String, dynamic>>(
      createUrlWithId(_url, id).first,
      queryParameters: {...?queryParameters, ...?createUrlWithId(_url, id).second},
      data: convertDataTypeToMap(data),
      cancelToken: getCancelToken(cancelKey),
    );
    return RequestResponse.success;
  }

  @override
  Future<RequestResponse> updateAll(
    Map<String, T> data, {
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
    final cancelKey = "$_url/updateAll";
    if (cancelPreviousRequest) {
      cancel(cancelKey);
    }
    final updateMap = <String, Map<String, dynamic>>{};

    for (final entry in data.entries) {
      updateMap[entry.key] = convertDataTypeToMap(entry.value);
    }

    await dio.put<Map<String, Map<String, dynamic>>>(
      _url,
      data: updateMap,
      queryParameters: queryParameters,
      cancelToken: getCancelToken(cancelKey),
    );
    return RequestResponse.success;
  }

  @override
  Future<Pair<RequestResponse, T?>> add(
    T data, {
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
    final cancelKey = "$_url/add";
    if (cancelPreviousRequest) {
      cancel(cancelKey);
    }
    final _response = await dio.post<Map<String, dynamic>>(
      _url,
      data: convertDataTypeToMap(data),
      queryParameters: queryParameters,
      cancelToken: getCancelToken(cancelKey),
    );
    if (_response.data != null) {
      AppLogger.print(_response.data.toString(), [UtilitiesLoggers.apiDataSource]);
      return Pair(RequestResponse.success, convertDataTypeFromMap(_response.data!));
    }
    AppLogger.print("Error: ${_response.data}", [UtilitiesLoggers.apiDataSource]);
    return const Pair(RequestResponse.failure, null);
  }

  @override
  Future<RequestResponse> addAll(
    List<T> data, {
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
    final cancelKey = "$_url/addAll";
    if (cancelPreviousRequest) {
      cancel(cancelKey);
    }

    final addMap = <String, Map<String, dynamic>>{};
    for (final entry in data.asMap().entries) {
      addMap[entry.key.toString()] = convertDataTypeToMap(entry.value);
    }

    await dio.post<List<Map<String, dynamic>>>(
      _url,
      data: addMap,
      queryParameters: queryParameters,
      cancelToken: getCancelToken(cancelKey),
    );
    return RequestResponse.success;
  }

  // TODO: Take into account query parameters, body, path parameters
  Map<String, dynamic> buildQuery(Q query);

  @override
  Future<T?> search(
    Q query, {
    String? pathExtensions,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
    final cancelKey = "$_url/search";
    if (cancelPreviousRequest) {
      cancel(cancelKey);
    }
    final response = await dio.get<Map<String, dynamic>>(
      _url,
      queryParameters: buildQuery(query),
      cancelToken: getCancelToken(cancelKey),
    );
    AppLogger.print(response.data.toString(), [UtilitiesLoggers.apiDataSource]);

    return response.data != null ? convertDataTypeFromMap(response.data!) : null;
  }

  @override
  Future<List<T?>> searchAll(
    Q query, {
    String? pathExtensions,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
    final cancelKey = "$_url/search";
    if (cancelPreviousRequest) {
      cancel(cancelKey);
    }
    final response = await dio.get<List<Map<String, dynamic>>>(
      _url,
      queryParameters: buildQuery(query),
      cancelToken: getCancelToken(cancelKey),
    );
    return response.data!.map(convertDataTypeFromMap).toList();
  }

  CancelToken getCancelToken(String id) {
    if (!cancelTokens.containsKey(id)) {
      cancelTokens[id] = CancelToken();
    }
    return cancelTokens[id]!;
  }

  void cancel(String id) {
    cancelTokens[id]?.cancel();
    cancelTokens.remove(id);
  }
}
