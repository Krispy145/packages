import 'interface.dart';

enum StorageProvider {
  firebase,
  awsS3,
  supabase,
  local,
  api,
}

class StorageRepository {
  final Map<StorageProvider, IStorageService> storageServices;

  StorageRepository({required this.storageServices});

  Future<String> uploadFile({
    required String filePath,
    required String fileName,
    required StorageProvider provider,
    bool isPrivate = false,
  }) async {
    final storageService = storageServices[provider];
    if (storageService != null) {
      return await storageService.uploadFile(
        filePath: filePath,
        fileName: fileName,
        isPrivate: isPrivate,
      );
    } else {
      throw Exception('Storage provider not found');
    }
  }
}
