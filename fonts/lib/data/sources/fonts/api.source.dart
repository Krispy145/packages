import 'package:utilities/data_sources/remote/api.dart';
import 'package:utilities/logger/logger.dart';

import '../../models/fonts_model.dart';
import '_source.dart';

/// [ApiFontsDataSource] is a class that implements [FontsDataSource] interface.
class ApiFontsDataSource extends ApiDataSource<FontsModel> implements FontsDataSource {
  /// [ApiFontsDataSource] constructor.
  ApiFontsDataSource()
      : super(
          '',
          // Managers.flavor.apiPrefix,
          sourceSuffix: "fonts",
          convertDataTypeFromMap: FontsModel.fromJson,
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
        [PackageFeatures.fonts],
        type: LoggerType.error,
      );
      return null;
    }
  }
}
