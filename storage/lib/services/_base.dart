import "package:cross_file/cross_file.dart";

abstract class BaseStorageService {
  Future<String> uploadFile({
    required XFile file,
    bool isPrivate = false,
  });

  Future<void> deleteFile(String url);

  // Additional methods can be added here if needed, like downloading files, deleting files, etc.
}
