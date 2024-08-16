import 'dart:io';

import 'package:path_provider/path_provider.dart';

import '../interface.dart';

class LocalStorageService implements IStorageService {
  @override
  Future<String> uploadFile({
    required String filePath,
    required String fileName,
    bool isPrivate = false,
  }) async {
    final directory = await getApplicationDocumentsDirectory();
    final newFile = File('${directory.path}/$fileName');
    await File(filePath).copy(newFile.path);
    return newFile.path; // Return the local file path
  }
}
