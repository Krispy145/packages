import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/models/user_model.dart";
import "package:utilities/data/sources/source.dart";

/// [AuthenticationDataSource] is an abstract class that defines the basic CRUD operations for the [UserModel] entity.
abstract class AuthenticationDataSource<T extends UserModel, Q> with DataSource<T, Q> {
  T? _currentUserModel;
  T? get currentUserModel => _currentUserModel;

  /// [signIn] signs in the user.
  Future<T?> signIn({required AuthParams params});

  /// [signOut] signs out the user.
  Future<void> signOut({required AuthParams params});

  /// [signUp] signs up the user.
  Future<T?> signUp({required AuthParams params});

  /// [reauthenticate] refreshes the user's token.
  Future<T?> reauthenticate({required AuthParams params});

  /// [deleteAccount] deletes the user's account.
  Future<void> deleteAccount({required String userId});
}
