import 'package:http/http.dart' as http;

import '../interface.dart';

class ApiStorageService implements IStorageService {
  final String apiUrl;

  ApiStorageService(this.apiUrl);

  @override
  Future<String> uploadFile({
    required String filePath,
    required String fileName,
    bool isPrivate = false,
  }) async {
    final request = http.MultipartRequest('POST', Uri.parse('$apiUrl/upload'));
    request.files.add(await http.MultipartFile.fromPath('file', filePath));
    final response = await request.send();

    if (response.statusCode == 200) {
      final responseBody = await response.stream.bytesToString();
      return responseBody; // Assuming the server returns the URL
    } else {
      throw Exception('Failed to upload file');
    }
  }
}
