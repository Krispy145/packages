import 'package:firebase_storage/firebase_storage.dart';
import 'package:universal_io/io.dart';

import '../interface.dart';

class FirebaseStorageService implements IStorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  @override
  Future<String> uploadFile({
    required String filePath,
    required String fileName,
    bool isPrivate = false,
  }) async {
    final ref = _storage.ref().child(fileName);
    await ref.putFile(File(filePath));
    return await ref.getDownloadURL();
  }
}
