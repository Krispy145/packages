import "package:dio/dio.dart";
import "package:utilities/data_sources/source.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

/// [ApiDataSource] is a wrapper class for [Dio] which implements [DataSource]
abstract class ApiDataSource<T, Q> with Mappable<T> implements DataSource<T, Q> {
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
    _dio.options = options ?? BaseOptions();
    _dio.interceptors.add(
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
    bool cancelPreviousRequest = false,
  }) async {
    final cancelKey = "$_baseUrl/$requestExtension";
    if (cancelPreviousRequest) {
      _cancel(cancelKey);
    }
    final response = await _dio.post<Map<String, dynamic>>(
      "$_baseUrl/$requestExtension",
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
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
    final cancelKey = "$_url/$id/get";
    if (cancelPreviousRequest) {
      _cancel(cancelKey);
    }
    final response = await _dio.get<Map<String, dynamic>>(
      "$_url/$id",
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
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
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
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
    final cancelKey = "$_url/$id/delete";
    if (cancelPreviousRequest) {
      _cancel(cancelKey);
    }
    await _dio.delete<Map<String, dynamic>>(
      "$_url/$id",
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
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
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
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
    final cancelKey = "$_url/$id/update";
    if (cancelPreviousRequest) {
      _cancel(cancelKey);
    }
    await _dio.put<Map<String, dynamic>>(
      "$_url/$id",
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
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
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
  Future<T?> add(
    T data, {
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
    final cancelKey = "$_url/add";
    if (cancelPreviousRequest) {
      _cancel(cancelKey);
    }
    final _response = await _dio.post<Map<String, dynamic>>(
      _url,
      data: convertDataTypeToMap(data),
      queryParameters: queryParameters,
      cancelToken: _getCancelToken(cancelKey),
    );
    return _response.data != null ? convertDataTypeFromMap(_response.data!) : null;
  }

  @override
  Future<void> addAll(
    List<T> data, {
    String? pathExtensions,
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) async {
    final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
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
      _cancel(cancelKey);
    }
    final response = await _dio.get<Map<String, dynamic>>(
      _url,
      queryParameters: buildQuery(query),
      cancelToken: _getCancelToken(cancelKey),
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
      _cancel(cancelKey);
    }
    final response = await _dio.get<List<Map<String, dynamic>>>(
      _url,
      queryParameters: buildQuery(query),
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

// class APICalls {
//   final Dio _dio = Dio();

//   final Map<String, CancelToken> _cancelTokens = {};

//   /// [baseUrl] is the base url of the API
//   final String baseUrl;

//   /// [sourceSuffix] is the suffix of the API
//   final String sourceSuffix;

//   /// [APICalls] constructor
//   APICalls(
//     this.baseUrl, {
//     required this.sourceSuffix,
//     BaseOptions? options,
//   }) {
//     // Add interceptors to _dio
//     _dio.options = options ?? BaseOptions();
//     _dio.interceptors.add(
//       InterceptorsWrapper(
//         onRequest: (options, handler) {
//           // Log the request
//           AppLogger.print(
//             "REQUEST: Headers: ${options.headers} ${options.method} -> ${options.uri}",
//             [UtilitiesLoggers.apiDataSource],
//           );
//           return handler.next(options);
//         },
//         onResponse: (response, handler) {
//           // Log the response
//           AppLogger.print(
//             "RESPONSE: ${response.statusCode} -> ${response.statusMessage}",
//             [UtilitiesLoggers.apiDataSource],
//           );
//           return handler.next(response);
//         },
//         onError: (e, handler) {
//           // Log errors
//           AppLogger.print(
//             "ERROR: ${e.response?.statusCode} -> ${e.response?.statusMessage}",
//             [UtilitiesLoggers.apiDataSource],
//             type: LoggerType.error,
//           );
//           return handler.next(e);
//         },
//       ),
//     );
//   }

//   String get _baseUrl => "$baseUrl/$sourceSuffix";

//   Future<T?> get<T>(
//     String id, {
//     String? pathExtensions,
//     Map<String, dynamic>? queryParameters,
//     bool cancelPreviousRequest = false,
//   }) async {
//     final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
//     final cancelKey = "$_url/$id/get";
//     if (cancelPreviousRequest) {
//       _cancel(cancelKey);
//     }
//     final response = await _dio.get<T>(
//       "$_url/$id",
//       queryParameters: queryParameters,
//       cancelToken: _getCancelToken(cancelKey),
//     );
//     return response.data;
//   }

//   Future<List<T?>> getAll<T>({
//     String? pathExtensions,
//     Map<String, dynamic>? queryParameters,
//     bool cancelPreviousRequest = false,
//   }) async {
//     final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
//     final cancelKey = "$_url/getAll";
//     if (cancelPreviousRequest) {
//       _cancel(cancelKey);
//     }
//     final response = await _dio.get<List<T?>>(
//       _url,
//       queryParameters: queryParameters,
//       cancelToken: _getCancelToken(cancelKey),
//     );
//     return response.data ?? [];
//   }

//   Future<void> delete<T>(
//     String id, {
//     String? pathExtensions,
//     Map<String, dynamic>? queryParameters,
//     bool cancelPreviousRequest = false,
//   }) async {
//     final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
//     final cancelKey = "$_url/$id/delete";
//     if (cancelPreviousRequest) {
//       _cancel(cancelKey);
//     }
//     await _dio.delete<T>(
//       "$_url/$id",
//       queryParameters: queryParameters,
//       cancelToken: _getCancelToken(cancelKey),
//     );
//   }

//   Future<void> deleteAll<T>({
//     String? pathExtensions,
//     Map<String, dynamic>? queryParameters,
//     bool cancelPreviousRequest = false,
//   }) async {
//     final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
//     final cancelKey = "$_url/deleteAll";
//     if (cancelPreviousRequest) {
//       _cancel(cancelKey);
//     }
//     await _dio.delete<T>(
//       _url,
//       queryParameters: queryParameters,
//       cancelToken: _getCancelToken(cancelKey),
//     );
//   }

//   Future<T> put<T>({
//     String? id,
//     required T data,
//     String? pathExtensions,
//     Map<String, dynamic>? queryParameters,
//     bool cancelPreviousRequest = false,
//   }) async {
//     final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
//     final cancelKey = "$_url/$id/put";
//     if (cancelPreviousRequest) {
//       _cancel(cancelKey);
//     }
//     final response = await _dio.put<T>(
//       "$_url/$id",
//       queryParameters: queryParameters,
//       data: data,
//       cancelToken: _getCancelToken(cancelKey),
//     );
//     return response.data!;
//   }

//   Future<void> putAll<T>({
//     required Map<String, T> data,
//     String? pathExtensions,
//     Map<String, dynamic>? queryParameters,
//     bool cancelPreviousRequest = false,
//   }) async {
//     final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
//     final cancelKey = "$_url/putAll";
//     if (cancelPreviousRequest) {
//       _cancel(cancelKey);
//     }
//     final putMap = <String, T>{};

//     for (final entry in data.entries) {
//       putMap[entry.key] = entry.value;
//     }

//     await _dio.put<Map<String, T>>(
//       _url,
//       data: putMap,
//       queryParameters: queryParameters,
//       cancelToken: _getCancelToken(cancelKey),
//     );
//   }

//   Future<void> post<T>({
//     T? data,
//     String? pathExtensions,
//     Map<String, dynamic>? queryParameters,
//     bool cancelPreviousRequest = false,
//   }) async {
//     final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
//     final cancelKey = "$_url/post";
//     if (cancelPreviousRequest) {
//       _cancel(cancelKey);
//     }
//     await _dio.post<T>(
//       _url,
//       data: data,
//       queryParameters: queryParameters,
//       cancelToken: _getCancelToken(cancelKey),
//     );
//   }

//   Future<void> postAll<T>({
//     required List<T> data,
//     String? pathExtensions,
//     Map<String, dynamic>? queryParameters,
//     bool cancelPreviousRequest = false,
//   }) async {
//     final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
//     final cancelKey = "$_url/postAll";
//     if (cancelPreviousRequest) {
//       _cancel(cancelKey);
//     }

//     final postMap = <String, T>{};
//     for (final entry in data.asMap().entries) {
//       postMap[entry.key.toString()] = entry.value;
//     }

//     await _dio.post<Map<String, T>>(
//       _url,
//       data: postMap,
//       queryParameters: queryParameters,
//       cancelToken: _getCancelToken(cancelKey),
//     );
//   }

//   Future<void> patch<T>({
//     String? id,
//     required T data,
//     String? pathExtensions,
//     Map<String, dynamic>? queryParameters,
//     bool cancelPreviousRequest = false,
//   }) async {
//     final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
//     final cancelKey = "$_url/$id/patch";
//     if (cancelPreviousRequest) {
//       _cancel(cancelKey);
//     }
//     await _dio.patch<T>(
//       "$_url/$id",
//       queryParameters: queryParameters,
//       data: data,
//       cancelToken: _getCancelToken(cancelKey),
//     );
//   }

//   Future<void> patchAll<T>({
//     required Map<String, T> data,
//     String? pathExtensions,
//     Map<String, dynamic>? queryParameters,
//     bool cancelPreviousRequest = false,
//   }) async {
//     final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
//     final cancelKey = "$_url/patchAll";
//     if (cancelPreviousRequest) {
//       _cancel(cancelKey);
//     }
//     final patchMap = <String, T>{};

//     for (final entry in data.entries) {
//       patchMap[entry.key] = entry.value;
//     }

//     await _dio.patch<Map<String, T>>(
//       _url,
//       data: patchMap,
//       queryParameters: queryParameters,
//       cancelToken: _getCancelToken(cancelKey),
//     );
//   }

//   Future<T?> search<T>(
//     Q query, {
//     String? pathExtensions,
//     bool cancelPreviousRequest = false,
//   }) async {
//     final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
//     final cancelKey = "$_url/search";
//     if (cancelPreviousRequest) {
//       _cancel(cancelKey);
//     }
//     final response = await _dio.get<T>(
//       _url,
//       queryParameters: queries,
//       cancelToken: _getCancelToken(cancelKey),
//     );
//     AppLogger.print(response.data.toString(), [UtilitiesLoggers.apiDataSource]);

//     return response.data;
//   }

//   Future<List<T?>> searchAll<T>(
//     Q query, {
//     String? pathExtensions,
//     bool cancelPreviousRequest = false,
//   }) async {
//     final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
//     final cancelKey = "$_url/search";
//     if (cancelPreviousRequest) {
//       _cancel(cancelKey);
//     }
//     final response = await _dio.get<List<T?>>(
//       _url,
//       queryParameters: queries,
//       cancelToken: _getCancelToken(cancelKey),
//     );
//     return response.data ?? [];
//   }

//   CancelToken _getCancelToken(String id) {
//     if (!_cancelTokens.containsKey(id)) {
//       _cancelTokens[id] = CancelToken();
//     }
//     return _cancelTokens[id]!;
//   }

//   void _cancel(String id) {
//     _cancelTokens[id]?.cancel();
//     _cancelTokens.remove(id);
//   }
// }

// abstract mixin class APIPaginatedCalls<LastResp extends ResponseModel> {
//   Future<Pair<LastResp, List<T?>>> getPage<T>({LastResp? lastResponse, int? size});
//   Future<Pair<LastResp, List<T?>>> searchPage<T>({LastResp? lastResponse, int? size, Map<String, String>? queries});
// }
