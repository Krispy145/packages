import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:map/constants/map_constants.dart';
import 'package:map/utils/loggers.dart';
import 'package:utilities/data_sources/remote/api.dart';
import 'package:utilities/logger/logger.dart';

import '_source.dart';

/// [ApiPlacePhotoDataSource] is a class that implements [PlacePhotoDataSource] interface.
class ApiPlacePhotoDataSource extends ApiDataSource<ByteData> implements PlacePhotoDataSource {
  final String googleApiKey;

  /// [ApiPlacePhotoDataSource.textSearch] constructor.
  ApiPlacePhotoDataSource({required this.googleApiKey})
      : super(
          MapConstants.googlePrefix,
          sourceSuffix: MapConstants.googlePlaceTextSearchSuffix,

          //TODO: Fix this, we need to make another apiDataSource for retrieving file data/images etc
          convertDataTypeFromMap: (data) => data.entries.first.value,
          convertDataTypeToMap: (data) => {},
          options: BaseOptions(queryParameters: {
            "key": googleApiKey,
          }),
        );

  /// [_handleError] is an optional helper method that handles errors when calling the API.
  // ignore: unused_element
  Future<T?> _handleError<T>(Future<T?> Function() apiCall) async {
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
