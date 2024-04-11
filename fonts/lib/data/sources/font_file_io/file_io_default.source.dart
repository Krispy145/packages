import 'dart:typed_data' show ByteData;

import 'package:fonts/data/sources/font_file_io/_source.dart';

final source = FallbackFontFileIODataSource();

class FallbackFontFileIODataSource extends FontFileIOBaseDataSource {
  @override
  bool get isMacOS => false;
  @override
  bool get isAndroid => false;
  @override
  bool get isTest => false;

  /// By default, file IO is stubbed out.
  ///
  /// If the path provider library is available (on mobile or desktop), then the
  /// implementation in `file_io_desktop_and_mobile.dart` is used.

  /// Stubbed out version of saveFontToDeviceFileSystem from
  /// `file_io_desktop_and_mobile.dart`.
  @override
  Future<void> saveFontToDeviceFileSystem({
    required String name,
    required List<int> bytes,
  }) {
    return Future.value(null);
  }

  /// Stubbed out version of loadFontFromDeviceFileSystem from
  /// `file_io_desktop_and_mobile.dart`.
  @override
  Future<ByteData?> loadFontFromDeviceFileSystem({
    required String name,
  }) {
    return Future.value(null);
  }
}
