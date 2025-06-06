import "package:dio/dio.dart";
import "package:maps/constants/map_constants.dart";
import "package:maps/data/models/google/responses_model.dart";
import "package:maps/utils/loggers.dart";
import "package:utilities/constants/env.dart";
import "package:utilities/data/sources/api/source.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";

import "_source.dart";

/// [ApiGooglePlacesDataSource] is a class that implements [GooglePlacesDataSource] interface.
class ApiGooglePlacesDataSource
    extends ApiDataSource<GoogleResponsesModel, Map<String, dynamic>>
    implements GooglePlacesDataSource {
  final String googleApiKey;

  /// [ApiGooglePlacesDataSource] constructor.
  ApiGooglePlacesDataSource({required this.googleApiKey})
      : super(
          MapConstants.googlePrefix,
          // proxy: WebServices.proxy,
          sourceSuffix: MapConstants.googlePlaceSearchSuffix,
          convertDataTypeFromMap: GoogleResponsesModelMapper.fromMap,
          convertDataTypeToMap: (data) => data.toMap(),
          options: BaseOptions(
            queryParameters: {
              "key": googleApiKey,
            },
            headers: PublicHeaders.map,
          ),
        ) {
    AppLogger.print(
      "API RESULT: Configuration set for Google Places API: $googleApiKey, ${MapConstants.googlePrefix}, ${MapConstants.googlePlaceSearchSuffix}",
      [MapLoggers.search],
    );
  }

  @override
  Future<Pair<RequestResponse, GoogleResponsesModel?>> get(
    String id, {
    String? pathExtensions = "details/json",
    Map<String, dynamic>? queryParameters,
    bool cancelPreviousRequest = false,
  }) {
    AppLogger.print(
      "API RESULT: Getting place with id: $id",
      [MapLoggers.search],
    );
    final query = queryParameters ?? {};
    query["place_id"] = id;
    return super.search(query, pathExtensions: pathExtensions);
  }

  @override
  Future<Pair<RequestResponse, GoogleResponsesModel?>> search(
    Map<String, dynamic> query, {
    String? pathExtensions = "textsearch/json",
    bool cancelPreviousRequest = false,
  }) async {
    AppLogger.print(
      "API RESULT: Searching for places with query: $query",
      [MapLoggers.search],
    );
    return super.search(
      query,
      pathExtensions: pathExtensions,
      cancelPreviousRequest: cancelPreviousRequest,
    );
  }

  /// [_handleError] is an optional helper method that handles errors when calling the API.
  // ignore: unused_element
  Future<T?> handleError<T>(Future<T?> Function() apiCall) async {
    try {
      return await apiCall();
    } catch (e) {
      AppLogger.print(
        "API RESULT: Failed request: $e",
        [MapLoggers.search],
        type: LoggerType.error,
      );
      return null;
    }
  }

  @override
  Map<String, dynamic> buildQuery(Map<String, dynamic> query) {
    return query;
  }
}
