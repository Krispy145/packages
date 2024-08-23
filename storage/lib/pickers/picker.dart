import "package:file_picker/file_picker.dart";
import "package:image_picker/image_picker.dart";
import "package:storage/pickers/_base.dart";

class DOFilePicker implements BaseFilePicker {
  final ImagePicker _imagePicker = ImagePicker();
  final FilePicker _filePicker = FilePicker.platform;

  @override
  Future<XFile?> pickFile() async {
    final result = await _filePicker.pickFiles(withData: true);

    if (result != null && result.files.isNotEmpty) {
      return XFile(result.files.first.path!, name: _fileName(result.files.first.path!), bytes: result.files.first.bytes);
    }
    return null; // No file selected
  }

  @override
  Future<List<XFile>?> pickMultipleFiles() async {
    final result = await _filePicker.pickFiles(allowMultiple: true, withData: true);

    if (result != null && result.files.isNotEmpty) {
      return result.files.map((file) => XFile(file.path!, name: _fileName(file.path!), bytes: file.bytes)).toList();
    }
    return null; // No files selected
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
  Future<List<XFile>?> pickMultipleImages() async {
    final images = await _imagePicker.pickMultiImage();

    if (images.isNotEmpty) {
      return images.map((image) => XFile(image.path, name: _fileName(image.path))).toList();
    }
    return null; // No images selected
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
}
