import 'dart:typed_data' show ByteData;

import 'package:flutter/foundation.dart';

/// [FontFileIOBaseDataSource] is an abstract class that defines the basic CRUD operations for the [ByteData] entity.
abstract class FontFileIOBaseDataSource {
  //
  bool get isMacOS;
  bool get isAndroid;
  bool get isTest;

  /// By default, file IO is stubbed out.
  ///
  /// If the path provider library is available (on mobile or desktop), then the
  /// implementation in `file_io_desktop_and_mobile.dart` is used.

  /// Stubbed out version of saveFontToDeviceFileSystem from
  /// `file_io_desktop_and_mobile.dart`.
  Future<void> saveFontToDeviceFileSystem({
    required String name,
    required List<int> bytes,
  });

  /// Stubbed out version of loadFontFromDeviceFileSystem from
  /// `file_io_desktop_and_mobile.dart`.
  Future<ByteData?> loadFontFromDeviceFileSystem({
    required String name,
  });
}
