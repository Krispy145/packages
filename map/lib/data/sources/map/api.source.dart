import 'package:map/data/models/map_model.dart';
import 'package:map/utils/loggers.dart';
import 'package:utilities/data_sources/remote/api.dart';
import 'package:utilities/logger/logger.dart';

import '_source.dart';

/// [ApiMapDataSource] is a class that implements [MapDataSource] interface.
class ApiMapDataSource extends ApiDataSource<MapModel> implements MapDataSource {
  /// [ApiMapDataSource] constructor.
  ApiMapDataSource()
      : super(
          '', // Managers.flavor.apiPrefix,
          sourceSuffix: "map",
          convertDataTypeFromMap: MapModel.fromJson,
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
        [MapLoggers.map],
        type: LoggerType.error,
      );
      return null;
    }
  }
}
