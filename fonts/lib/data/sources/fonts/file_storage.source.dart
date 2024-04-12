import 'package:fonts/data/models/font_descriptor_and_url.dart';
import 'package:fonts/data/repositories/font_file_io.repository.dart';

import '_source.dart';

/// [FileStorageFontsDataSource] is a class that implements [FontsDataSource] interface.
class FileStorageFontsDataSource implements FontsDataSource {
  final repository = FontFileIODataRepository();

  @override
  LoadingFontData? loadFont(DOFontVariantAndUrl fontVariantAndUrl) {
    return repository.loadFontFromDeviceFileSystem(name: fontVariantAndUrl.familyWithVariant.toApiFilenamePrefix());
  }
}
