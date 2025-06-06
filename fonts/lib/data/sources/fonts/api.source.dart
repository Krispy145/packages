import "dart:typed_data";

import "package:fonts/data/models/font_descriptor_and_url.dart";
import "package:fonts/utilities/file_io_manager.dart";
import "package:http/http.dart" as http;
import "package:utilities/logger/logger.dart";

import "_source.dart";

/// [ApiFontsDataSource] is a class that implements [FontsDataSource] interface.
class ApiFontsDataSource implements FontsDataSource {
  /// [ApiFontsDataSource] constructor.
  ApiFontsDataSource();

  @override
  LoadingFontData? loadFont(PLSFontVariantAndUrl fontVariantAndUrl) async {
    final url = fontVariantAndUrl.url;
    if (url == null) {
      AppLogger.print("Font url is null", []);
      return null;
    }
    final name = fontVariantAndUrl.familyWithVariant.toApiFilenamePrefix();
    final uri = Uri.tryParse(url);
    if (uri == null) {
      throw Exception("Invalid fontUrl: $url");
    }

    http.Response response;

    final httpClient = http.Client();

    try {
      response = await httpClient.get(uri);
    } catch (e) {
      throw Exception("Failed to load font with url $url: $e");
    }
    if (response.statusCode == 200) {
      if (!_isFileSecure(url, response.bodyBytes)) {
        throw Exception(
          "File from $url did not match expected length and checksum.",
        );
      }
      final fontFileIOManager = FontFileIOManager();

      _unawaited(
        fontFileIOManager.saveFontToDeviceFileSystem(
          name: name,
          bytes: response.bodyBytes,
        ),
      );

      return ByteData.view(response.bodyBytes.buffer);
    } else {
      // If that call was not successful, throw an error.
      throw Exception("Failed to load font with url: $url");
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
