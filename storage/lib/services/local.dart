import "package:cross_file/cross_file.dart";
import "package:path_provider/path_provider.dart";
import "package:universal_io/io.dart";

import "_base.dart";

class LocalStorageService implements BaseStorageService {
  @override
  Future<String> uploadFile({
    required XFile file,
    bool isPrivate = false,
  }) async {
    final directory = await getApplicationDocumentsDirectory();
    final newFile = File("${directory.path}/${file.name}");
    await File(file.path).copy(newFile.path);
    return newFile.path; // Return the local file path
  }

  @override
  Future<void> deleteFile(String url) async {
    final file = File(url);
    if (file.existsSync()) {
      await file.delete();
    }
  }
}
