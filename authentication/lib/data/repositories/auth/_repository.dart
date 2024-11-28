import "package:authentication/data/models/user_model.dart";
import "package:rxdart/rxdart.dart";

enum AuthSourceTypes {
  firebase,
  supabase,
  api,
}

/// [AuthenticationDataRepository] is an abstract class that defines the authentication methods.
abstract class AuthenticationDataRepository<T extends UserModel> {
  final BehaviorSubject<T?> userModelStream = BehaviorSubject<T?>();
  Future<T?> updateUserModel(T userModel);
  Future<T?> signInWithGoogle(UserModel params);
  Future<T?> signInWithFacebook(UserModel params);
  Future<T?> signInWithApple(UserModel params);
  Future<T?> signInWithGitHub(UserModel params);
  Future<T?> signInWithEmail(UserModel params);
  Future<T?> signInAnonymously(UserModel params);
  Future<T?> signInWithMicrosoft(UserModel params);
  Future<T?> signInWithPhoneNumber(
    String phoneNumber,
    String confirmationCode,
  );
  Future<T?> signInWithX(UserModel params);
  Future<T?> signInWithPasswordlessEmail(
    String email,
    String emailLink,
  );
  Future<T?> signUpWithEmail(UserModel params);
  Future<T?> reauthenticate(UserModel params);
  Future<void> deleteAccount(String userId);
  Future<bool> signOut();
  Future<void> sendPasswordResetEmail(String email);
  Future<T?> verifyAndUpdateEmail(String email);
  Future<void> changePassword(String password);
}
