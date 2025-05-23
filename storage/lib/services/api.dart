import "package:cross_file/cross_file.dart";
import "package:http/http.dart" as http;

import "_base.dart";

class ApiStorageService implements BaseStorageService {
  final String apiUrl;

  ApiStorageService(this.apiUrl);

  @override
  Future<String> uploadFile({
    required XFile file,
    bool isPrivate = false,
  }) async {
    final request = http.MultipartRequest("POST", Uri.parse("$apiUrl/upload"));
    request.files.add(await http.MultipartFile.fromPath("file", file.path));
    final response = await request.send();

    if (response.statusCode == 200) {
      final responseBody = await response.stream.bytesToString();
      return responseBody; // Assuming the server returns the URL
    } else {
      throw Exception("Failed to upload file");
    }
  }

  @override
  Future<void> deleteFile(String url) async {
    final response = await http.delete(Uri.parse("$apiUrl/delete/$url"));

    if (response.statusCode != 200) {
      throw Exception("Failed to delete file");
    }
  }

  @override
  Future<XFile?> downloadFile(String url,
      {required bool downloadToDevice,}) async {
    final response = await http.get(Uri.parse("$apiUrl/download/$url"));

    if (response.statusCode == 200) {
      final bytes = response.bodyBytes;
      return XFile.fromData(bytes);
    } else {
      throw Exception("Failed to download file");
    }
  }
}
