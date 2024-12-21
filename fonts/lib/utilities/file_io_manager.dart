import "dart:convert";

import "package:cross_file/cross_file.dart";
import "package:flutter/foundation.dart";
import "package:path_provider/path_provider.dart";
import "package:universal_io/io.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data/sources/hive/source.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

// TODO: Create local data source for file storage based on this

class FontFileIOManager extends HiveDataSource<XFile, BasicSearchQueryModel> {
  FontFileIOManager()
      : super(
          "local-fonts",
          getIdFromDataType: (data) => data.name,
          convertDataTypeFromJson: (jsonString) {
            final json = jsonDecode(jsonString) as Map<String, String>;
            return XFile(json["path"]!, name: json["name"]);
          },
          convertDataTypeToJson: (data) => jsonEncode({"name": data.name, "path": data.path}),
        );

  bool get isMacOS => Platform.isMacOS;

  bool get isAndroid => Platform.isAndroid;

  bool get isTest => Platform.environment.containsKey("FLUTTER_TEST");

  Future<void> saveFontToDeviceFileSystem({
    required String name,
    required List<int> bytes,
  }) async {
    if (kIsWeb) {
      await super.add(XFile(name, name: name));
    } else {
      final file = await _localFile(name);
      await file.writeAsBytes(bytes);
    }
  }

  Future<ByteData?> loadFontFromDeviceFileSystem({
    required String name,
  }) async {
    try {
      if (kIsWeb) {
        final file = await super.get(name);
        if (file.second != null) {
          final _bytes = await file.second!.readAsBytes();
          return ByteData.view(Uint8List.fromList(_bytes).buffer);
        }
      } else {
        final file = await _localFile(name);
        final fileExists = file.existsSync();
        if (fileExists) {
          final List<int> contents = await file.readAsBytes();
          if (contents.isNotEmpty) {
            return ByteData.view(Uint8List.fromList(contents).buffer);
          }
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
    return File("$path/$name.ttf");
  }

  @override
  bool matchesQuery(BasicSearchQueryModel query, XFile item) {
    // TODO: implement matchesQuery
    throw UnimplementedError();
  }

  @override
  Future<Pair<RequestResponse, XFile?>> search(BasicSearchQueryModel query) {
    // TODO: implement search
    throw UnimplementedError();
  }

  @override
  Future<Pair<RequestResponse, List<XFile?>>> searchAll(BasicSearchQueryModel query) {
    // TODO: implement searchAll
    throw UnimplementedError();
  }

  @override
  void closeStreams() {
    // TODO: implement closeStreams
  }
}
