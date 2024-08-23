import "package:utilities/data/sources/api/source.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/utils/loggers.dart";

abstract class PaginatedApiDataSource<Resp extends ResponseModel, T, Q> extends ApiDataSource<T, Q> with Paginated<Resp, T, Q> {
  /// [PaginatedApiDataSource] constructor
  PaginatedApiDataSource(
    super.baseUrl, {
    super.proxy,
    required super.sourceSuffix,
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
    required this.convertResponseTypeFromMap,
    required this.getNexPageParametersFromResponse,
    required this.getItemsFromResponse,
    super.options,
  });

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final Resp Function(Map<String, dynamic>) convertResponseTypeFromMap;

  final List<T?> Function(Resp) getItemsFromResponse;

  final Map<String, dynamic> Function(Resp? lastResponse, int? size, String? orderBy) getNexPageParametersFromResponse;

  @override
  Future<Pair<RequestResponse, Pair<Resp?, List<T?>>>> getPage({
    Resp? lastResponse,
    int? size,
    String? orderBy,
    Map<String, dynamic>? queryParameters,
  }) async {
    final _url = "$baseUrl/$sourceSuffix";
    final nextPageParameters = getNexPageParametersFromResponse(lastResponse, size, orderBy);
    final parameters = {...?queryParameters, ...nextPageParameters};

    try {
      final response = await dio.get<Map<String, dynamic>>(
        _url,
        queryParameters: parameters,
        cancelToken: getCancelToken(_url),
      );
      final convertedResponse = response.data != null ? convertResponseTypeFromMap(response.data!) : null;
      if (convertedResponse == null) {
        return Pair(RequestResponse.failure, Pair(lastResponse, []));
      }
      final items = getItemsFromResponse(convertedResponse);
      AppLogger.print("Response: $_url, QueryParams: $parameters, Items: $items", [UtilitiesLoggers.apiDataSource]);
      return Pair(RequestResponse.success, Pair(convertedResponse, items));
    } catch (e) {
      AppLogger.print("Error caught: $_url, $e", [UtilitiesLoggers.apiDataSource], type: LoggerType.error);
      return Pair(RequestResponse.failure, Pair(lastResponse, []));
    }
  }

  @override
  Future<Pair<RequestResponse, Pair<Resp?, List<T?>>>> searchPage({
    Resp? lastResponse,
    int? size,
    String? orderBy,
    required Q query,
  }) async {
    throw UnimplementedError();
    // final _url = pathExtensions != null ? "$baseUrl/$pathExtensions" : baseUrl;
    // final nextPageParameters = getNexPageParametersFromResponse(lastResponse, size, orderBy);
    // final parameters = {...?queryParameters, ...nextPageParameters};
    // final response = await dio.get<Map<String, dynamic>>(
    //   _url,
    //   queryParameters: parameters,
    //   // cancelToken: _getCancelToken(cancelKey),
    // );

    // final convertedResponse = response.data != null ? convertResponseTypeFromMap(response.data!) : null;
    // if (convertedResponse == null) {
    //   return Pair(lastResponse, []);
    // }
    // final items = getItemsFromResponse(convertedResponse);

    // return Pair(convertedResponse, items);
  }
}
