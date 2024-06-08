import 'package:maps/data/models/google/place_model.dart';
import 'package:maps/data/models/google/text_search_query_parameters_model.dart';
import 'package:maps/utils/loggers.dart';
import 'package:utilities/logger/logger.dart';

import '/data/repositories/_repositories.dart';
import '/data/sources/google_places/_source.dart';
import '/data/sources/google_places/api.source.dart';

//TODO: If using other map sources for search, enable this and make the relevent named constructors, eg .google, .mapBox, etc.
// /// [MapConfiguration] is a class that defines the configuration for the map.
// class MapConfiguration {
//   final String apiKey;
//   const MapConfiguration.google({required this.apiKey});
// }

/// [GooglePlacesDataRepository] is a class that defines the basic CRUD operations for the [GooglePlace] entity.
class GooglePlacesDataRepository {
  final String googleApiKey;

  const GooglePlacesDataRepository({required this.googleApiKey});

  /// [textSearchGooglePlaces] returns a list of [GooglePlace]s based on the [GoogleTextSearchParameters].
  Future<List<GooglePlace?>> textSearchGooglePlaces({required DataSourceTypes source, required GoogleTextSearchParameters parameters}) async {
    final resultsResponse = await _dataSourceByType(source).search(parameters.toMap());
    final results = resultsResponse.second;
    if (results == null) {
      AppLogger.print(
        "Failed to search for places with parameters: $parameters",
        [MapLoggers.search],
        type: LoggerType.error,
      );
      return [];
    }
    return results.results ?? [];
  }

  /// [getGooglePlaceDetails] returns a [GooglePlace] based on the [placeId].
  Future<GooglePlace?> getGooglePlaceDetails({required DataSourceTypes source, required String placeId}) async {
    final resultResponse = await _dataSourceByType(source).get(placeId);
    final result = resultResponse.second;
    if (result == null) {
      AppLogger.print(
        "Failed to get place details with placeId: $placeId",
        [MapLoggers.search],
        type: LoggerType.error,
      );
      return null;
    }
    return result.result;
  }

  /// [_dataSourceByType] returns the appropriate [GooglePlacesDataSource] based on the [DataSourceTypes] enum.
  /// Defaults to [LocalGooglePlacesDataSource].
  /// This can be in local, an api, or firestore.
  GooglePlacesDataSource _dataSourceByType(DataSourceTypes type) {
    switch (type) {
      case DataSourceTypes.api:
        return ApiGooglePlacesDataSource(googleApiKey: googleApiKey);
      default:
        AppLogger.print(
          "DataSourceType not Available : $type, using default ApiGooglePlacesDataSource",
          [MapLoggers.search],
          type: LoggerType.warning,
        );
        return ApiGooglePlacesDataSource(googleApiKey: googleApiKey);
    }
  }
}
