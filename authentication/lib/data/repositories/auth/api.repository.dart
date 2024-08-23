import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/repositories/helpers/auth_repository.helper.dart";
import "package:authentication/data/sources/auth/_source.dart";
import "package:authentication/helpers/exception.dart";
import "package:authentication/utils/loggers.dart";
import "package:rxdart/rxdart.dart";
import "package:utilities/logger/logger.dart";

import "../../models/user_model.dart";
import "_repository.dart";

/// [ApiAuthDataRepository] is a class that defines the basic CRUD operations for the [UserModel] entity.
class ApiAuthDataRepository<T extends UserModel, Q> extends AuthenticationDataRepository<T> {
  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  final AuthenticationDataSource<T, Q> dataSource;
  @override
  late final BehaviorSubject<T?> userModelStream = BehaviorSubject<T?>.seeded(dataSource.currentUserModel);

  /// [ApiAuthDataRepository] constructor.
  ApiAuthDataRepository({
    required this.dataSource,
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
  }) {
    if (dataSource.currentUserModel != null) {
      userModelStream.add(dataSource.currentUserModel);
    }
  }

  @override
  Future<T?> updateUserModel(T userModel) async {
    await dataSource.update(userModel.id, userModel);
    userModelStream.add(userModel);
    return userModel;
  }

  @override
  Future<void> deleteAccount(String userId) async {
    await dataSource.delete(userId);
  }

  @override
  Future<T?> reauthenticate(AuthParams params) async {
    final result = await dataSource.reauthenticate(params: params);
    return result;
  }

  @override
  Future<T?> signInAnonymously(AuthParams params) async {
    final result = await dataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    return userModel;
  }

  @override
  Future<T?> signInWithApple(AuthParams params) async {
    try {
      final appleParams = await AuthRepositoryHelper.signInWithApple(params);
      final result = await dataSource.signIn(params: appleParams);

      final userModel = _authResponseToUserModel(appleParams, result != null);
      return userModel;
    } catch (e) {
      AppLogger.print(
        "signIn attempt -> ${params.authType}: $e",
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }

  @override
  Future<T?> signInWithEmail(AuthParams params) async {
    final result = await dataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    return userModel;
  }

  @override
  Future<T?> signInWithFacebook(AuthParams params) async {
    final facebookParams = await AuthRepositoryHelper.signInWithFacebook(params);
    final result = await dataSource.signIn(params: facebookParams);
    final userModel = _authResponseToUserModel(facebookParams, result != null);
    return userModel;
  }

  @override
  Future<T?> signInWithGitHub(AuthParams params) async {
    final result = await dataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    return userModel;
  }

  @override
  Future<T?> signInWithGoogle(AuthParams params) async {
    final googleParams = await AuthRepositoryHelper.signInWithGoogle(params);
    final result = await dataSource.signIn(params: googleParams);
    final userModel = _authResponseToUserModel(googleParams, result != null);
    return userModel;
  }

  @override
  Future<T?> signInWithMicrosoft(AuthParams params) async {
    final result = await dataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    return userModel;
  }

  @override
  Future<T?> signInWithPasswordlessEmail(
    String email,
    String emailLink,
  ) async {
    final params = AuthParams.passwordless(email: email, password: emailLink);
    final result = await dataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    return userModel;
  }

  @override
  Future<T?> signInWithPhoneNumber(
    String phoneNumber,
    String confirmationCode,
  ) async {
    final params = AuthParams.phone(phoneNumber: phoneNumber, password: confirmationCode);
    final result = await dataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    return userModel;
  }

  @override
  Future<T?> signInWithX(AuthParams params) async {
    final result = await dataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    return userModel;
  }

  @override
  Future<bool> signOut() async {
    try {
      await dataSource.signOut(
        params: userModelStream.value!.toAuthParams(),
      );
      return true;
    } catch (e) {
      AppLogger.print(
        "signOut attempt: $e",
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
      return false;
    }
  }

  @override
  Future<T?> signUpWithEmail(AuthParams params) async {
    final result = await dataSource.signUp(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    return userModel;
  }

  T? _authResponseToUserModel(AuthParams params, bool result) {
    final _baseUser = UserModel(
      id: dataSource.currentUserModel!.id,
      email: dataSource.currentUserModel!.email,
      phoneNumber: dataSource.currentUserModel!.phoneNumber,
      displayName: params.displayName ?? dataSource.currentUserModel!.email,
      code: params.code,
      refreshToken: dataSource.currentUserModel!.refreshToken,
      accessToken: dataSource.currentUserModel!.accessToken,
      isAuthorized: params.isAuthorized ?? false,
      status: result ? AuthStatus.authenticated : AuthStatus.unauthenticated,
      authType: params.authType,
      createdAt: params.createdAt ?? DateTime.now(),
      updatedAt: DateTime.tryParse(
            dataSource.currentUserModel!.updatedAt.toString(),
          ) ??
          DateTime.now(),
    );
    return convertDataTypeFromMap(_baseUser.toMap());
  }
}
