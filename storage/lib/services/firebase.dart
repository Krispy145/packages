import "package:cross_file/cross_file.dart";
import "package:firebase_storage/firebase_storage.dart";
import "package:flutter/foundation.dart";
import "package:universal_html/html.dart" as html;
import "package:universal_io/io.dart" as io;

import "_base.dart";

class FirebaseStorageService implements BaseStorageService {
  final String? folderName;
  final FirebaseStorage _firebaseStorage;

  FirebaseStorageService({this.folderName, FirebaseStorage? firebaseStorage}) : _firebaseStorage = firebaseStorage ?? FirebaseStorage.instance;

  @override
  Future<String> uploadFile({
    required XFile file,
    bool isPrivate = false,
  }) async {
    var fileName = file.name;
    try {
      if (folderName != null) {
        fileName = "$folderName/$fileName";
      }
      final ref = _firebaseStorage.ref().child(fileName);

      final _metadata = SettableMetadata(
        contentType: file.mimeType,
        customMetadata: {
          "isPrivate": isPrivate.toString(),
        },
      );
      if (kIsWeb) {
        final _bytes = await file.readAsBytes();
        final _htmlFile = html.File([_bytes], fileName);
        await ref.putBlob(_htmlFile, _metadata);
      } else {
        final _ioFile = io.File(file.path);
        await ref.putFile(_ioFile, _metadata);
      }
      final _result = await ref.getDownloadURL();
      return _result;
    } catch (e) {
      throw Exception("Failed to upload file to Firebase Storage: $e");
    }
  }

  @override
  Future<void> deleteFile(String url) async {
    try {
      final ref = _firebaseStorage.refFromURL(url);
      await ref.delete();
    } catch (e) {
      throw Exception("Failed to delete file from Firebase Storage: $e");
    }
  }
}
