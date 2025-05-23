import "package:cross_file/cross_file.dart";
import "package:storage/providers/_base.dart";

class StorageRepository {
  final BaseStorageProvider storageProvider;

  StorageRepository({required this.storageProvider});

  Future<String> uploadFile({
    required XFile file,
    bool isPrivate = false,
  }) async {
    final storageService = storageProvider.getStorageService();
    return storageService.uploadFile(
      file: file,
      isPrivate: isPrivate,
    );
  }

  Future<List<String>> uploadMultipleFiles({
    required List<XFile> files,
    bool isPrivate = false,
  }) async {
    final storageService = storageProvider.getStorageService();
    final uploadUrls = <String>[];

    for (var i = 0; i < files.length; i++) {
      final url = await storageService.uploadFile(
        file: files[i],
        isPrivate: isPrivate,
      );
      uploadUrls.add(url);
    }

    return uploadUrls;
  }

  Future<String> uploadImage({
    required XFile image,
    bool isPrivate = false,
  }) async {
    return uploadFile(
      file: image,
      isPrivate: isPrivate,
    );
  }

  Future<List<String>> uploadMultipleImages({
    required List<XFile> images,
    bool isPrivate = false,
  }) async {
    return uploadMultipleFiles(
      files: images,
      isPrivate: isPrivate,
    );
  }

  Future<void> deleteFile(String path) async {
    final storageService = storageProvider.getStorageService();
    return storageService.deleteFile(path);
  }

  Future<void> deleteFiles(List<String> paths) async {
    final storageService = storageProvider.getStorageService();
    for (var i = 0; i < paths.length; i++) {
      await storageService.deleteFile(paths[i]);
    }
  }

  Future<XFile?> downloadFile(String url,
      {required bool downloadToDevice,}) async {
    final storageService = storageProvider.getStorageService();
    return storageService.downloadFile(url, downloadToDevice: downloadToDevice);
  }

  Future<List<XFile>> downloadFiles(List<String> urls,
      {required bool downloadToDevice,}) async {
    final storageService = storageProvider.getStorageService();
    final files = <XFile>[];

    for (var i = 0; i < urls.length; i++) {
      final file = await storageService.downloadFile(urls[i],
          downloadToDevice: downloadToDevice,);
      if (file != null) {
        files.add(file);
      }
    }

    return files;
  }
}
