import "package:authentication/data/models/auth_params.dart";
import "package:utilities/data_sources/source.dart";

import "../models/user_model.dart";

/// [AuthenticationDataSource] is an abstract class that defines the basic CRUD operations for the [UserModel] entity.
abstract class AuthenticationDataSource {
  /// [signIn] signs in the user.
  Future<UserModel?> signIn({required AuthParams params});

  /// [signOut] signs out the user.
  Future<void> signOut({required AuthParams params});

  /// [signUp] signs up the user.
  Future<UserModel?> signUp({required AuthParams params});

  /// [reauthenticate] refreshes the user's token.
  Future<UserModel?> reauthenticate({required AuthParams params});

  /// [deleteAccount] deletes the user's account.
  Future<void> deleteAccount({required String userId});
}

/// [UserDataSource] is an abstract class that defines the basic CRUD operations for the [UserModel] entity.
abstract class UserDataSource extends DataSource<UserModel> {}
