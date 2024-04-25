import 'dart:typed_data';

import 'package:map/data/models/google/place_model.dart';
import 'package:map/data/models/google/text_search_query_parameters_model.dart';
import 'package:map/data/sources/place_photo/_source.dart';
import 'package:map/data/sources/place_photo/api.source.dart';
import 'package:map/utils/loggers.dart';
import 'package:utilities/logger/logger.dart';

import '/data/repositories/_repositories.dart';

//TODO: If using other map sources for search, enable this and make the relevent named constructors, eg .google, .mapBox, etc.
// /// [MapConfiguration] is a class that defines the configuration for the map.
// class MapConfiguration {
//   final String apiKey;
//   const MapConfiguration.google({required this.apiKey});
// }

/// [PlacePhotoDataRepository] is a class that defines the basic CRUD operations for the [GooglePlace] entity.
class PlacePhotoDataRepository {
  final String googleApiKey;

  const PlacePhotoDataRepository({required this.googleApiKey});

  /// [textSearchPlacePhoto] returns a list of [GooglePlace]s based on the [GoogleTextSearchParameters].
  Future<ByteData?> getPlacePhoto({required DataSourceTypes source, required String photoReference}) async {
    return _dataSourceByType(source).get(photoReference);
  }

  /// [_dataSourceByType] returns the appropriate [PlacePhotoDataSource] based on the [DataSourceTypes] enum.
  /// Defaults to [LocalPlacePhotoDataSource].
  /// This can be in local, an api, or firestore.
  PlacePhotoDataSource _dataSourceByType(DataSourceTypes type) {
    switch (type) {
      case DataSourceTypes.api:
        return ApiPlacePhotoDataSource(googleApiKey: googleApiKey);
      default:
        AppLogger.print(
          "DataSourceType not Available : $type, using default ApiPlacePhotoDataSource",
          [MapLoggers.search],
          type: LoggerType.warning,
        );
        return ApiPlacePhotoDataSource(googleApiKey: googleApiKey);
    }
  }
}
