import 'dart:typed_data';

import 'package:fonts/data/sources/font_file_io/file_io_default.source.dart' if (dart.library.io) 'package:fonts/data/sources/font_file_io/file_io_desktop_and_mobile.source.dart' as font_file_io;

class FontFileIODataRepository {
  final _dataSource = font_file_io.source;

  Future<void> saveFontToDeviceFileSystem({required String name, required List<int> bytes}) {
    return _dataSource.saveFontToDeviceFileSystem(name: name, bytes: bytes);
  }

  Future<ByteData?> loadFontFromDeviceFileSystem({required String name}) {
    return _dataSource.loadFontFromDeviceFileSystem(name: name);
  }
}
