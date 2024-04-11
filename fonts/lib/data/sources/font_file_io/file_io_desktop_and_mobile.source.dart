import 'dart:io';
import 'dart:typed_data';

import 'package:fonts/data/sources/font_file_io/_source.dart';
import 'package:path_provider/path_provider.dart';

final source = FontFileIODataSource();

class FontFileIODataSource extends FontFileIOBaseDataSource {
  @override
  bool get isMacOS => Platform.isMacOS;
  @override
  bool get isAndroid => Platform.isAndroid;
  @override
  bool get isTest => Platform.environment.containsKey('FLUTTER_TEST');

  @override
  Future<void> saveFontToDeviceFileSystem({
    required String name,
    required List<int> bytes,
  }) async {
    final file = await _localFile(name);
    await file.writeAsBytes(bytes);
  }

  @override
  Future<ByteData?> loadFontFromDeviceFileSystem({
    required String name,
  }) async {
    try {
      final file = await _localFile(name);
      final fileExists = file.existsSync();
      if (fileExists) {
        List<int> contents = await file.readAsBytes();
        if (contents.isNotEmpty) {
          return ByteData.view(Uint8List.fromList(contents).buffer);
        }
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  static Future<String> get _localPath async {
    final directory = await getApplicationSupportDirectory();
    return directory.path;
  }

  static Future<File> _localFile(String name) async {
    final path = await _localPath;
    // We expect only ttf files to be provided to us by the Google Fonts API.
    // That's why we can be sure a previously saved Google Font is in the ttf
    // format instead of, for example, otf.
    // return File('$path/${name}_$fileHash.ttf');
    return File('$path/$name.ttf');
  }
}
