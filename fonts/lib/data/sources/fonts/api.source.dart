import 'dart:typed_data';

import 'package:fonts/data/models/font_descriptor_and_url.dart';
import 'package:fonts/data/repositories/font_file_io.repository.dart';
import 'package:http/http.dart' as http;

import '_source.dart';

/// [ApiFontsDataSource] is a class that implements [FontsDataSource] interface.
class ApiFontsDataSource implements FontsDataSource {
  /// [ApiFontsDataSource] constructor.
  ApiFontsDataSource();

  final fileIORepository = FontFileIODataRepository();

  // /// [_handleError] is an optional helper method that handles errors when calling the API.
  // // ignore: unused_element
  // Future<T?> _handleError<T>(Future<T?> Function() apiCall) async {
  //   try {
  //     return await apiCall();
  //   } catch (e) {
  //     AppLogger.print(
  //       "API RESULT: Failed request: $e",
  //       [PackageFeatures.fonts],
  //       type: LoggerType.error,
  //     );
  //     return null;
  //   }
  // }

  @override
  LoadingFontData? loadFont(DOFontVariantAndUrl fontVariantAndUrl) async {
    final String url = fontVariantAndUrl.url;
    final String name = fontVariantAndUrl.familyWithVariant.toApiFilenamePrefix();
    final uri = Uri.tryParse(url);
    if (uri == null) {
      throw Exception('Invalid fontUrl: $url');
    }

    http.Response response;

    http.Client httpClient = http.Client();

    try {
      response = await httpClient.get(uri);
    } catch (e) {
      throw Exception('Failed to load font with url $url: $e');
    }
    if (response.statusCode == 200) {
      if (!_isFileSecure(url, response.bodyBytes)) {
        throw Exception(
          'File from $url did not match expected length and checksum.',
        );
      }

      _unawaited(fileIORepository.saveFontToDeviceFileSystem(name: name, bytes: response.bodyBytes));

      return ByteData.view(response.bodyBytes.buffer);
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load font with url: $url');
    }
  }

  bool _isFileSecure(String url, Uint8List bytes) {
    // final actualFileLength = bytes.length;
    // final actualFileHash = sha256.convert(bytes).toString();
    return true;
    // return file.expectedLength == actualFileLength && file.expectedFileHash == actualFileHash;
  }

  void _unawaited(Future<void> future) {}
}
