import "package:authentication/data/models/auth_params.dart";
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
  Future<T?> signInWithGoogle(AuthParams params);
  Future<T?> signInWithFacebook(AuthParams params);
  Future<T?> signInWithApple(AuthParams params);
  Future<T?> signInWithGitHub(AuthParams params);
  Future<T?> signInWithEmail(AuthParams params);
  Future<T?> signInAnonymously(AuthParams params);
  Future<T?> signInWithMicrosoft(AuthParams params);
  Future<T?> signInWithPhoneNumber(
    String phoneNumber,
    String confirmationCode,
  );
  Future<T?> signInWithX(AuthParams params);
  Future<T?> signInWithPasswordlessEmail(
    String email,
    String emailLink,
  );
  Future<T?> signUpWithEmail(AuthParams params);
  Future<T?> reauthenticate(AuthParams params);
  Future<void> deleteAccount(String userId);
  Future<bool> signOut();
  Future<void> sendPasswordResetEmail(String email);
  Future<T?> verifyAndUpdateEmail(String email);
  Future<void> changePassword(String password);
}
