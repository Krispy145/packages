import 'package:dio/dio.dart';
import 'package:utilities/data_sources/source.dart';
import 'package:utilities/logger/logger.dart';
import 'package:utilities/utils/loggers.dart';

/// [ApiDataSource] is a wrapper class for [Dio] which implements [DataSource]
class ApiDataSource<T> with Mappable<T> implements DataSource<T> {
  final Dio _dio = Dio();

  final Map<String, CancelToken> _cancelTokens = {};

  /// [baseUrl] is the base url of the API
  final String baseUrl;

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  /// [sourceSuffix] is the suffix of the API
  final String sourceSuffix;

  /// [ApiDataSource] constructor
  ApiDataSource(
    this.baseUrl, {
    required this.sourceSuffix,
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
    BaseOptions? options,
  }) {
    // Add interceptors to _dio
    _dio.options = options ?? BaseOptions();
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
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
            "ERROR: ${e.message}",
            // "ERROR: ${e.response?.statusCode} -> ${e.response?.statusMessage}",
            [UtilitiesLoggers.apiDataSource],
            type: LoggerType.error,
          );
          return handler.next(e);
        },
      ),
    );
  }

  String get _baseUrl => '$baseUrl/$sourceSuffix';

  @override
  T convertFromMap(Map<String, dynamic> data) => convertDataTypeFromMap(data);

  @override
  Map<String, dynamic> convertToMap(T data) => convertDataTypeToMap(data);

  /// [requestData] is a generic function that will be used to request data from the API
  Future<T?> requestData<RequestType>({
    required String requestExtension,
    required RequestType requestType,
    bool cancelPreviousRequest = false,
  }) async {
    final cancelKey = "$_baseUrl/$requestExtension";
    if (cancelPreviousRequest) {
      _cancel(cancelKey);
    }
    final response = await _dio.post<Map<String, dynamic>>(
      '$_baseUrl/$requestExtension',
      data: requestType,
      cancelToken: _getCancelToken(cancelKey),
    );
    return response.data != null ? convertDataTypeFromMap(response.data!) : null;
  }

  @override
  Future<T?> get(
    String id, {
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? '$_baseUrl/$pathExtensions' : _baseUrl;
    final cancelKey = "$_url/$id/get";
    if (cancelPreviousRequest) {
      _cancel(cancelKey);
    }
    final response = await _dio.get<Map<String, dynamic>>(
      '$_url/$id',
      queryParameters: queryParameters,
      cancelToken: _getCancelToken(cancelKey),
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
    final _url = pathExtensions != null ? '$_baseUrl/$pathExtensions' : _baseUrl;
    final cancelKey = "$_url/getAll";
    if (cancelPreviousRequest) {
      _cancel(cancelKey);
    }
    final response = await _dio.get<List<Map<String, dynamic>>>(
      _url,
      queryParameters: queryParameters,
      cancelToken: _getCancelToken(cancelKey),
    );
    return response.data!.map(convertDataTypeFromMap).toList();
  }

  @override
  Future<void> delete(
    String id, {
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? '$_baseUrl/$pathExtensions' : _baseUrl;
    final cancelKey = "$_url/$id/delete";
    if (cancelPreviousRequest) {
      _cancel(cancelKey);
    }
    await _dio.delete<Map<String, dynamic>>(
      '$_url/$id',
      queryParameters: queryParameters,
      cancelToken: _getCancelToken(cancelKey),
    );
  }

  @override
  Future<void> deleteAll({
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? '$_baseUrl/$pathExtensions' : _baseUrl;
    final cancelKey = "$_url/deleteAll";
    if (cancelPreviousRequest) {
      _cancel(cancelKey);
    }
    await _dio.delete<Map<String, dynamic>>(
      _url,
      queryParameters: queryParameters,
      cancelToken: _getCancelToken(cancelKey),
    );
  }

  @override
  Future<void> update(
    String id,
    T data, {
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? '$_baseUrl/$pathExtensions' : _baseUrl;
    final cancelKey = "$_url/$id/update";
    if (cancelPreviousRequest) {
      _cancel(cancelKey);
    }
    await _dio.put<Map<String, dynamic>>(
      '$_url/$id',
      queryParameters: queryParameters,
      data: convertDataTypeToMap(data),
      cancelToken: _getCancelToken(cancelKey),
    );
  }

  @override
  Future<void> updateAll(
    Map<String, T> data, {
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? '$_baseUrl/$pathExtensions' : _baseUrl;
    final cancelKey = "$_url/updateAll";
    if (cancelPreviousRequest) {
      _cancel(cancelKey);
    }
    final updateMap = <String, Map<String, dynamic>>{};

    for (final entry in data.entries) {
      updateMap[entry.key] = convertDataTypeToMap(entry.value);
    }

    await _dio.put<Map<String, Map<String, dynamic>>>(
      _url,
      data: updateMap,
      queryParameters: queryParameters,
      cancelToken: _getCancelToken(cancelKey),
    );
  }

  @override
  Future<void> add(
    T data, {
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? '$_baseUrl/$pathExtensions' : _baseUrl;
    final cancelKey = "$_url/add";
    if (cancelPreviousRequest) {
      _cancel(cancelKey);
    }
    await _dio.post<Map<String, dynamic>>(
      _url,
      data: convertDataTypeToMap(data),
      queryParameters: queryParameters,
      cancelToken: _getCancelToken(cancelKey),
    );
  }

  @override
  Future<void> addAll(
    List<T> data, {
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? '$_baseUrl/$pathExtensions' : _baseUrl;
    final cancelKey = "$_url/addAll";
    if (cancelPreviousRequest) {
      _cancel(cancelKey);
    }

    final addMap = <String, Map<String, dynamic>>{};
    for (final entry in data.asMap().entries) {
      addMap[entry.key.toString()] = convertDataTypeToMap(entry.value);
    }

    await _dio.post<List<Map<String, dynamic>>>(
      _url,
      data: addMap,
      queryParameters: queryParameters,
      cancelToken: _getCancelToken(cancelKey),
    );
  }

  @override
  Future<T?> search(
    Map<String, dynamic> queries, {
    String? pathExtensions,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? '$_baseUrl/$pathExtensions' : _baseUrl;
    final cancelKey = "$_url/search";
    if (cancelPreviousRequest) {
      _cancel(cancelKey);
    }
    final response = await _dio.get<Map<String, dynamic>>(
      _url,
      queryParameters: queries,
      cancelToken: _getCancelToken(cancelKey),
    );
    AppLogger.print(
      "API RESULT: Search response: ${response.data}",
      [UtilitiesLoggers.apiDataSource],
    );
    return response.data != null ? convertDataTypeFromMap(response.data!) : null;
  }

  @override
  Future<List<T?>> searchAll(
    Map<String, dynamic> queries, {
    String? pathExtensions,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? '$_baseUrl/$pathExtensions' : _baseUrl;
    final cancelKey = "$_url/search";
    if (cancelPreviousRequest) {
      _cancel(cancelKey);
    }
    final mergedQueries = {...queries, ..._dio.options.queryParameters};
    AppLogger.print(
      "API RESULT: Searching $_url with queries: $mergedQueries",
      [UtilitiesLoggers.apiDataSource],
    );
    final response = await _dio.get<List<Map<String, dynamic>>>(
      _url,
      queryParameters: queries,
      cancelToken: _getCancelToken(cancelKey),
    );
    return response.data!.map(convertDataTypeFromMap).toList();
  }

  CancelToken _getCancelToken(String id) {
    if (!_cancelTokens.containsKey(id)) {
      _cancelTokens[id] = CancelToken();
    }
    return _cancelTokens[id]!;
  }

  void _cancel(String id) {
    _cancelTokens[id]?.cancel();
    _cancelTokens.remove(id);
  }
}
