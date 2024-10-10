// Abstract class definition
import "package:cross_file/cross_file.dart";

abstract class BaseFilePicker {
  Future<XFile?> pickFile();
  Future<List<XFile>> pickMultipleFiles();
  Future<XFile?> pickImage();
  Future<List<XFile>> pickMultipleImages();
  Future<XFile?> takePhoto();
}
