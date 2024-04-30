// import "package:dio/dio.dart";
// import "package:utilities/data_sources/paginated_source.dart";
// import "package:utilities/data_sources/remote/api.dart";
// import "package:utilities/logger/logger.dart";
// import "package:utilities/utils/loggers.dart";

// /// [PaginatedApiDataSource] is a wrapper class for [Dio] which implements [PaginationDataSource]
// /// It is used to fetch paginated data from the API
// /// It implements [PaginationDataSource]
// /// It is used to fetch paginated data from the API
// class PaginatedApiDataSource<Req extends PaginatedRequestModel, T> extends ApiDataSource<T> implements PaginationDataSource<Req, T> {
//   final Dio _dio = Dio();

//   final Map<String, CancelToken> _cancelTokens = {};

//   /// [responseTypeFromMap] is the function that will be used to convert the paginated value from [Map<String, dynamic>] to [PaginatedResponseModel<T>]
//   final PaginatedResponseModel<T?> Function(Map<String, dynamic>) responseTypeFromMap;

//   /// [responseToTypeMap] is the function that will be used to convert the paginated value from [PaginatedResponseModel<T>] to [Map<String, dynamic>]
//   final Map<String, dynamic> Function(PaginatedResponseModel<T?>) responseToTypeMap;

//   /// [requestTypeFromMap] is the function that will be used to convert the request value from [Map<String, dynamic>] to [PaginatedRequestModel]
//   final Req Function(Map<String, dynamic>) requestTypeFromMap;

//   /// [requestToTypeMap] is the function that will be used to convert the request value from [PaginatedRequestModel] to [Map<String, dynamic>]
//   final Map<String, dynamic> Function(Req) requestToTypeMap;

//   /// [PaginatedApiDataSource] constructor
//   PaginatedApiDataSource(
//     super.baseUrl, {
//     required super.convertDataTypeFromMap,
//     required super.convertDataTypeToMap,
//     required super.sourceSuffix,
//     required this.requestTypeFromMap,
//     required this.requestToTypeMap,
//     required this.responseTypeFromMap,
//     required this.responseToTypeMap,
//     BaseOptions? options,
//   }) {
//     // Add interceptors to _dio
//     _dio.options = options ?? BaseOptions();
//     _dio.interceptors.add(
//       InterceptorsWrapper(
//         onRequest: (options, handler) {
//           // Log the request
//           AppLogger.print(
//             "REQUEST: ${options.method} -> ${options.uri}",
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

//   @override
//   Req requestFromMap(Map<String, dynamic> data) => requestTypeFromMap(data);

//   @override
//   Map<String, dynamic> requestToMap(Req data) => requestToTypeMap(data);

//   @override
//   PaginatedResponseModel<T?> responseFromMap(Map<String, dynamic> data) => responseTypeFromMap(data);

//   @override
//   Map<String, dynamic> responseToMap(PaginatedResponseModel<T?> data) => responseToTypeMap(data);

//   @override
//   Future<PaginatedResponseModel<T?>?> getPage(
//     Req? lastPaginatedValue, {
//     String? extensionPath,
//     Map<String, dynamic>? queryParameters,
//     bool cancelPreviousRequest = false,
//   }) async {
//     final _url = extensionPath != null ? "$_baseUrl/$extensionPath" : _baseUrl;
//     final cancelKey = "$_url/getPage";
//     if (cancelPreviousRequest) {
//       _cancel(cancelKey);
//     }
//     final queries = queryParameters ?? {};
//     if (lastPaginatedValue != null) {
//       queries.addAll(requestToTypeMap(lastPaginatedValue));
//     }
//     final response = await _dio.get<Map<String, dynamic>>(
//       _url,
//       queryParameters: queries,
//       cancelToken: _getCancelToken(cancelKey),
//     );
//     final convertedResponse = response.data != null ? responseTypeFromMap(response.data!) : null;
//     return convertedResponse;
//   }

//   @override
//   Future<PaginatedResponseModel<T?>?> searchPage(
//     Map<String, dynamic> queries,
//     Req? lastPaginatedValue, {
//     String? pathExtensions,
//     bool cancelPreviousRequest = false,
//   }) async {
//     final _url = pathExtensions != null ? "$_baseUrl/$pathExtensions" : _baseUrl;
//     final cancelKey = "$_url/searchPage";
//     if (cancelPreviousRequest) {
//       _cancel(cancelKey);
//     }
//     if (lastPaginatedValue != null) {
//       queries.addAll(requestToTypeMap(lastPaginatedValue));
//     }
//     final response = await _dio.get<Map<String, dynamic>>(
//       _url,
//       queryParameters: queries,
//       cancelToken: _getCancelToken(cancelKey),
//     );
//     final convertedResponse = response.data != null ? responseTypeFromMap(response.data!) : null;
//     return convertedResponse;
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
