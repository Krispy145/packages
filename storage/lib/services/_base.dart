import "package:cross_file/cross_file.dart";

abstract class BaseStorageService {
  Future<String> uploadFile({
    required XFile file,
    bool isPrivate = false,
  });

  Future<void> deleteFile(String url);

  Future<XFile?> downloadFile(String url);
}
