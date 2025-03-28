import "package:cross_file/cross_file.dart";
import "package:storage/managers/_base.dart";
import "package:storage/pickers/_base.dart";
import "package:storage/repository.dart";
import "package:utilities/helpers/tuples.dart";

class LYFileUploadManager implements BaseFileUploadManager {
  final BaseFilePicker filePickerService;
  final StorageRepository storageRepository;

  LYFileUploadManager({
    required this.filePickerService,
    required this.storageRepository,
  });

  // Picking Functions
  @override
  Future<XFile?> pickSingleFile() {
    return filePickerService.pickFile();
  }

  @override
  Future<List<XFile>?> pickMultipleFiles() {
    return filePickerService.pickMultipleFiles();
  }

  @override
  Future<XFile?> pickSingleImage() {
    return filePickerService.pickImage();
  }

  @override
  Future<XFile?> pickCameraImage() {
    return filePickerService.takePhoto();
  }

  @override
  Future<List<XFile>?> pickMultipleImages() {
    return filePickerService.pickMultipleImages();
  }

  // Uploading Functions
  @override
  Future<String?> uploadFile({required XFile file}) {
    return storageRepository.uploadFile(file: file);
  }

  @override
  Future<List<String>?> uploadFiles({required List<XFile> files}) {
    return storageRepository.uploadMultipleFiles(files: files);
  }

  Future<String?> uploadImage({required XFile image}) {
    return storageRepository.uploadImage(image: image);
  }

  Future<List<String>?> uploadImages({required List<XFile> images}) async {
    return storageRepository.uploadMultipleImages(images: images);
  }

  // Combined Picking and Uploading Functions
  @override
  Future<String?> pickAndUploadSingleFile({
    FilePreviewCallback? previewCallback,
  }) async {
    final file = await pickSingleFile();
    if (file != null) {
      var confirm = Pair(true, file);
      if (previewCallback != null) {
        confirm = await previewCallback(file);
      }
      if (confirm.first) {
        return uploadFile(file: confirm.second);
      }
    }
    return null;
  }

  @override
  Future<List<String>?> pickAndUploadMultipleFiles({
    FilesPreviewCallback? previewCallback,
  }) async {
    final files = await pickMultipleFiles();
    if (files != null && files.isNotEmpty) {
      var confirm = Pair(true, files);
      if (previewCallback != null) {
        confirm = await previewCallback(files);
      }
      if (confirm.first) {
        return uploadFiles(files: confirm.second);
      }
    }
    return null;
  }

  @override
  Future<String?> pickAndUploadSingleImage({
    FilePreviewCallback? previewCallback,
  }) async {
    final image = await pickSingleImage();
    if (image != null) {
      var confirm = Pair(true, image);
      if (previewCallback != null) {
        confirm = await previewCallback(image);
      }
      if (confirm.first) {
        return uploadImage(image: confirm.second);
      }
    }
    return null;
  }

  @override
  Future<String?> pickAndUploadCameraImage({
    FilePreviewCallback? previewCallback,
  }) async {
    final image = await pickCameraImage();
    if (image != null) {
      var confirm = Pair(true, image);
      if (previewCallback != null) {
        confirm = await previewCallback(image);
      }
      if (confirm.first) {
        return uploadImage(image: confirm.second);
      }
    }
    return null;
  }

  @override
  Future<List<String>?> pickAndUploadMultipleImages({
    FilesPreviewCallback? previewCallback,
  }) async {
    final images = await pickMultipleImages();
    if (images != null && images.isNotEmpty) {
      var confirm = Pair(true, images);
      if (previewCallback != null) {
        confirm = await previewCallback(images);
      }
      if (confirm.first) {
        return uploadImages(images: confirm.second);
      }
    }
    return null;
  }

  @override
  Future<void> deleteFile({required String path}) {
    return storageRepository.deleteFile(path);
  }

  @override
  Future<void> deleteFiles({required List<String> paths}) {
    return storageRepository.deleteFiles(paths);
  }

  @override
  Future<XFile?> downloadFile({required String path}) {
    return storageRepository.downloadFile(path);
  }

  @override
  Future<List<XFile>?> downloadFiles({required List<String> paths}) {
    return storageRepository.downloadFiles(paths);
  }
}
