import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/models/user_model.dart";
import "package:rxdart/rxdart.dart";

/// [AuthenticationDataRepository] is an abstract class that defines the authentication methods.
abstract class AuthenticationDataRepository {
  BehaviorSubject<UserModel?> get currentUserModelSubject;
  Future<UserModel?> signInWithGoogle(AuthParams params);
  Future<UserModel?> signInWithFacebook(AuthParams params);
  Future<UserModel?> signInWithApple(AuthParams params);
  Future<UserModel?> signInWithGitHub(AuthParams params);
  Future<UserModel?> signInWithEmail(AuthParams params);
  Future<UserModel?> signInAnonymously(AuthParams params);
  Future<UserModel?> signInWithMicrosoft(AuthParams params);
  Future<UserModel?> signInWithPhoneNumber(
      String phoneNumber, String confirmationCode,);
  Future<UserModel?> signInWithX(AuthParams params);
  Future<UserModel?> signInWithPasswordlessEmail(
      String email, String emailLink,);
  Future<UserModel?> signUpWithEmail(String email, String password);
  Future<UserModel?> reauthenticate(AuthParams params);
  Future<void> deleteAccount(String userId);
  Future<void> signOut();
}
