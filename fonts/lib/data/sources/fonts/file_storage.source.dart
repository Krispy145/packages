import 'package:fonts/data/models/font_descriptor_and_url.dart';
import 'package:fonts/data/sources/file_io_desktop_and_mobile.source.dart';

import '_source.dart';

/// [FileStorageFontsDataSource] is a class that implements [FontsDataSource] interface.
class FileStorageFontsDataSource implements FontsDataSource {
  @override
  LoadingFontData? loadFont(DOFontVariantAndUrl fontVariantAndUrl) {
    return FontFileIODataSource.loadFontFromDeviceFileSystem(name: fontVariantAndUrl.familyWithVariant.toApiFilenamePrefix());
  }
}
