import "package:cross_file/cross_file.dart";
import "package:utilities/helpers/tuples.dart";

typedef FilesPreviewCallback = Future<Pair<bool, List<XFile>>> Function(List<XFile> files);
typedef FilePreviewCallback = Future<Pair<bool, XFile>> Function(XFile file);

abstract class BaseFileUploadManager {
  // Picking files/images
  Future<XFile?> pickSingleFile();
  Future<List<XFile>?> pickMultipleFiles();
  Future<XFile?> pickSingleImage();
  Future<XFile?> pickCameraImage();
  Future<List<XFile>?> pickMultipleImages();

  // Uploading files/images
  Future<String?> uploadFile({required XFile file});
  Future<List<String>?> uploadFiles({required List<XFile> files});
  Future<void> deleteFile({required String path});
  Future<void> deleteFiles({required List<String> paths});

  // Combined picking and uploading
  Future<String?> pickAndUploadSingleFile({FilePreviewCallback? previewCallback});
  Future<List<String>?> pickAndUploadMultipleFiles({FilesPreviewCallback? previewCallback});
  Future<String?> pickAndUploadSingleImage({FilePreviewCallback? previewCallback});
  Future<String?> pickAndUploadCameraImage({FilePreviewCallback? previewCallback});
  Future<List<String>?> pickAndUploadMultipleImages({FilesPreviewCallback? previewCallback});
}
