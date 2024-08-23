import "package:firebase_storage/firebase_storage.dart";
import "package:storage/services/_base.dart";
import "package:storage/services/firebase.dart";

import "_base.dart";

class FirebaseStorageProvider extends BaseStorageProvider {
  final String? folderName;
  final FirebaseStorage _firebaseStorage;

  FirebaseStorageProvider({
    this.folderName,
    FirebaseStorage? firebaseStorage,
  }) : _firebaseStorage = firebaseStorage ?? FirebaseStorage.instance;

  @override
  BaseStorageService getStorageService() {
    return FirebaseStorageService(
      folderName: folderName,
      firebaseStorage: _firebaseStorage,
    );
  }
}
