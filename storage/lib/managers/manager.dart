import "package:cross_file/cross_file.dart";
import "package:storage/managers/_base.dart";
import "package:storage/pickers/_base.dart";
import "package:storage/repository.dart";

typedef FilesPreviewCallback = Future<bool> Function(List<XFile> files);
typedef FilePreviewCallback = Future<bool> Function(XFile file);

class DOFileUploadManager implements BaseFileUploadManager {
  final BaseFilePicker filePickerService;
  final StorageRepository storageRepository;

  DOFileUploadManager({
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
  Future<String?> pickAndUploadSingleFile({FilePreviewCallback? previewCallback}) async {
    final file = await pickSingleFile();
    if (file != null) {
      var confirm = true;
      if (previewCallback != null) {
        confirm = await previewCallback(file);
      }
      if (confirm) {
        return uploadFile(file: file);
      }
    }
    return null;
  }

  @override
  Future<List<String>?> pickAndUploadMultipleFiles({FilesPreviewCallback? previewCallback}) async {
    final files = await pickMultipleFiles();
    if (files != null && files.isNotEmpty) {
      var confirm = true;
      if (previewCallback != null) {
        confirm = await previewCallback(files);
      }
      if (confirm) {
        return uploadFiles(files: files);
      }
    }
    return null;
  }

  @override
  Future<String?> pickAndUploadSingleImage({FilePreviewCallback? previewCallback}) async {
    final image = await pickSingleImage();
    if (image != null) {
      var confirm = true;
      if (previewCallback != null) {
        confirm = await previewCallback(image);
      }
      if (confirm) {
        return uploadImage(image: image);
      }
    }
    return null;
  }

  @override
  Future<String?> pickAndUploadCameraImage({FilePreviewCallback? previewCallback}) async {
    final image = await pickCameraImage();
    if (image != null) {
      var confirm = true;
      if (previewCallback != null) {
        confirm = await previewCallback(image);
      }
      if (confirm) {
        return uploadImage(image: image);
      }
    }
    return null;
  }

  @override
  Future<List<String>?> pickAndUploadMultipleImages({FilesPreviewCallback? previewCallback}) async {
    final images = await pickMultipleImages();
    if (images != null && images.isNotEmpty) {
      var confirm = true;
      if (previewCallback != null) {
        confirm = await previewCallback(images);
      }
      if (confirm) {
        return uploadImages(images: images);
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
}
