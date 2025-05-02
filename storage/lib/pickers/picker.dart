import "package:file_picker/file_picker.dart";
import "package:image_picker/image_picker.dart";
import "package:storage/pickers/_base.dart";

class LYFilePicker implements BaseFilePicker {
  final ImagePicker _imagePicker = ImagePicker();
  final FilePicker _filePicker = FilePicker.platform;

  @override
  Future<XFile?> pickFile() async {
    final result = await _filePicker.pickFiles(withData: true);

    if (result != null && result.files.isNotEmpty) {
      return result.files.first.xFile;
      // _getXFileFromPlatformFile(result.files.first);
    }
    return null; // No file selected
  }

  @override
  Future<List<XFile>> pickMultipleFiles() async {
    final result = await _filePicker.pickFiles(allowMultiple: true, withData: true);

    if (result != null && result.files.isNotEmpty) {
      return result.files.map((e) => e.xFile).toList();
      // result.files.map(_getXFileFromPlatformFile).toList();
    }
    return []; // No files selected
  }

  @override
  Future<XFile?> pickImage() async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      return image;
    }
    return null; // No image selected
  }

  @override
  Future<List<XFile>> pickMultipleImages() async {
    final images = await _imagePicker.pickMultiImage();

    if (images.isNotEmpty) {
      final _images = images.map((image) async {
        final _mimeType = image.mimeType;
        final _size = await image.length();
        return XFile(image.path, name: _fileName(image.path), mimeType: _mimeType, length: _size);
      }).toList();
      return Future.wait(_images);
    }
    return []; // No images selected
  }

  @override
  Future<XFile?> takePhoto() async {
    final image = await _imagePicker.pickImage(source: ImageSource.camera);

    if (image != null) {
      return image;
    }
    return null; // No photo taken
  }

  String _fileName(String path) {
    final parts = path.split("/");
    return parts.last;
  }

  // XFile _getXFileFromPlatformFile(PlatformFile file) {
  //   if (kIsWeb) {
  //     return file.xFile;
  //   }
  //   return XFile(file.path!, name: _fileName(file.path!), bytes: file.bytes);
  // }
}
