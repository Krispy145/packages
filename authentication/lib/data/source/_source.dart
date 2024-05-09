import "package:authentication/data/models/auth_params.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data_sources/source.dart";

import "../models/user_model.dart";

/// [AuthenticationDataSource] is an abstract class that defines the basic CRUD operations for the [UserModel] entity.
abstract class AuthenticationDataSource<T extends UserModel, Q> extends DataSource<T, Q> {
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

/// [UserDataSource] is an abstract class that defines the basic CRUD operations for the [UserModel] entity.
abstract class UserDataSource<T extends UserModel> extends DataSource<T, BasicSearchQueryModel> {}
