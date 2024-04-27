import 'package:dio/dio.dart';
import 'package:map/constants/map_constants.dart';
import 'package:map/data/models/google/text_search_responses_model.dart';
import 'package:map/utils/loggers.dart';
import 'package:utilities/data_sources/remote/api.dart';
import 'package:utilities/logger/logger.dart';

import '_source.dart';

/// [ApiGooglePlacesDataSource] is a class that implements [GooglePlacesDataSource] interface.
class ApiGooglePlacesDataSource
    extends ApiDataSource<GoogleTextSearchResponsesModel>
    implements GooglePlacesDataSource {
  final String googleApiKey;

  /// [ApiGooglePlacesDataSource.textSearch] constructor.
  ApiGooglePlacesDataSource({required this.googleApiKey})
      : super(
          MapConstants.googlePrefix,
          sourceSuffix: MapConstants.googlePlaceTextSearchSuffix,
          convertDataTypeFromMap: GoogleTextSearchResponsesModelMapper.fromMap,
          convertDataTypeToMap: (data) => data.toMap(),
          options: BaseOptions(queryParameters: {
            "key": googleApiKey,
          }, headers: {
            "Access-Control-Allow-Origin": "*",
            "Access-Control-Allow-Methods": "GET, POST, PUT, DELETE, OPTIONS",
            "Access-Control-Allow-Headers":
                "Origin,Content-Type,X-Amz-Date,Authorization,X-Api-Key,X-Amz-Security-Token,locale",
            "Content-Type": "application/json",
            "Access-Control-Allow-Credentials": "true"
          }),
        ) {
    AppLogger.print(
        "API RESULT: Configuration set for Google Places API: $googleApiKey, ${MapConstants.googlePrefix}, ${MapConstants.googlePlaceTextSearchSuffix}",
        [MapLoggers.search]);
  }

  @override
  Future<GoogleTextSearchResponsesModel?> search(
    Map<String, dynamic> queries, {
    String? pathExtensions,
    bool cancelPreviousRequest = false,
  }) {
    AppLogger.print(
      "API RESULT: Searching for places with queries: $queries",
      [MapLoggers.search],
    );
    return super.search(
      queries,
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
}
