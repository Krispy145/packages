import 'package:map/data/models/marker_model.dart';
import 'package:map/utils/loggers.dart';
import 'package:utilities/data_sources/remote/api.dart';
import 'package:utilities/logger/logger.dart';

import '_source.dart';

/// [ApiMarkerDataSource] is a class that implements [MarkerDataSource] interface.
class ApiMarkerDataSource extends ApiDataSource<MarkerModel> implements MarkerDataSource {
  /// [ApiMarkerDataSource] constructor.
  ApiMarkerDataSource()
      : super(
          '',
          sourceSuffix: "markers",
          convertDataTypeFromMap: MarkerModel.fromJson,
          convertDataTypeToMap: (data) => data.toJson(),
        );

  /// [_handleError] is an optional helper method that handles errors when calling the API.
  // ignore: unused_element
  Future<T?> _handleError<T>(Future<T?> Function() apiCall) async {
    try {
      return await apiCall();
    } catch (e) {
      AppLogger.print(
        "API RESULT: Failed request: $e",
        [MapLoggers.markers],
        type: LoggerType.error,
      );
      return null;
    }
  }
}
