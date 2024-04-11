import 'dart:typed_data';

import 'package:fonts/data/models/font_variant_descriptor.dart';
import 'package:utilities/logger/logger.dart';

import '_source.dart';

/// [ApiFontsDataSource] is a class that implements [FontsDataSource] interface.
class ApiFontsDataSource implements FontsDataSource {
  /// [ApiFontsDataSource] constructor.
  ApiFontsDataSource();

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

  @override
  ByteData getFontByteData(String fontFamilyName, DOFontVariantDescriptor fontVariant) {
    // TODO: implement getFontByteData
    throw UnimplementedError();
  }
}
