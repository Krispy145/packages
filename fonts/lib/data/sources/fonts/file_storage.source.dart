import "package:fonts/data/models/font_descriptor_and_url.dart";
import "package:fonts/utilities/file_io_manager.dart";

import "_source.dart";

/// [FileStorageFontsDataSource] is a class that implements [FontsDataSource] interface.
class FileStorageFontsDataSource implements FontsDataSource {
  @override
  LoadingFontData? loadFont(LYFontVariantAndUrl fontVariantAndUrl) {
    final fontFileIOManager = FontFileIOManager();
    return fontFileIOManager.loadFontFromDeviceFileSystem(
      name: fontVariantAndUrl.familyWithVariant.toApiFilenamePrefix(),
    );
  }
}
