abstract class IStorageService {
  Future<String> uploadFile({
    required String filePath,
    required String fileName,
    bool isPrivate = false,
  });
}
