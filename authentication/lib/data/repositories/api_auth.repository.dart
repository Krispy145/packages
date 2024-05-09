import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/repositories/helpers/auth_repository.helper.dart";
import "package:authentication/helpers/exception.dart";
import "package:authentication/utils/loggers.dart";
import "package:rxdart/rxdart.dart";
import "package:utilities/logger/logger.dart";

import "../models/user_model.dart";
import "../source/api_auth.source.dart";
import "_repository.dart";

/// [ApiAuthDataRepository] is a class that defines the basic CRUD operations for the [UserModel] entity.
class ApiAuthDataRepository<T extends UserModel> implements AuthenticationDataRepository<T> {
  /// [baseUrl] is the base url for the api data source.
  final String baseUrl;

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  T? _currentUserModel;
  @override
  late final BehaviorSubject<T?> currentUserModelSubject;
  ApiAuthDataSource<T, Map<String, dynamic>> get _apiAuthDataSource => ApiAuthDataSource(
        baseUrl,
        convertDataTypeFromMap: convertDataTypeFromMap,
        convertDataTypeToMap: convertDataTypeToMap,
      );

  /// [ApiAuthDataRepository] constructor.
  ApiAuthDataRepository({
    required this.baseUrl,
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
  }) {
    currentUserModelSubject = BehaviorSubject<T>();
    if (_apiAuthDataSource.currentUserModel != null) {
      _currentUserModel = _apiAuthDataSource.currentUserModel;
      currentUserModelSubject.add(_currentUserModel);
    }
  }

  @override
  Future<void> deleteAccount(String userId) async {
    await _apiAuthDataSource.delete(userId);
  }

  @override
  Future<T?> reauthenticate(AuthParams params) async {
    final result = await _apiAuthDataSource.reauthenticate(params: params);
    return result;
  }

  @override
  Future<T?> signInAnonymously(AuthParams params) async {
    final result = await _apiAuthDataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    return userModel;
  }

  @override
  Future<T?> signInWithApple(AuthParams params) async {
    try {
      final appleParams = await AuthRepositoryHelper.signInWithApple(params);
      final result = await _apiAuthDataSource.signIn(params: appleParams);

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
    final result = await _apiAuthDataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    return userModel;
  }

  @override
  Future<T?> signInWithFacebook(AuthParams params) async {
    final facebookParams = await AuthRepositoryHelper.signInWithFacebook(params);
    final result = await _apiAuthDataSource.signIn(params: facebookParams);
    final userModel = _authResponseToUserModel(facebookParams, result != null);
    return userModel;
  }

  @override
  Future<T?> signInWithGitHub(AuthParams params) async {
    final result = await _apiAuthDataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    return userModel;
  }

  @override
  Future<T?> signInWithGoogle(AuthParams params) async {
    final googleParams = await AuthRepositoryHelper.signInWithGoogle(params);
    final result = await _apiAuthDataSource.signIn(params: googleParams);
    final userModel = _authResponseToUserModel(googleParams, result != null);
    return userModel;
  }

  @override
  Future<T?> signInWithMicrosoft(AuthParams params) async {
    final result = await _apiAuthDataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    return userModel;
  }

  @override
  Future<T?> signInWithPasswordlessEmail(
    String email,
    String emailLink,
  ) async {
    final params = AuthParams.passwordless(email: email, password: emailLink);
    final result = await _apiAuthDataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    return userModel;
  }

  @override
  Future<T?> signInWithPhoneNumber(
    String phoneNumber,
    String confirmationCode,
  ) async {
    final params = AuthParams.phone(phoneNumber: phoneNumber, password: confirmationCode);
    final result = await _apiAuthDataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    return userModel;
  }

  @override
  Future<T?> signInWithX(AuthParams params) async {
    final result = await _apiAuthDataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    return userModel;
  }

  @override
  Future<bool> signOut() async {
    try {
      await _apiAuthDataSource.signOut(params: _currentUserModel!.toAuthParams());
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
  Future<T?> signUpWithEmail(String email, String password) async {
    final params = AuthParams.email(email: email, password: password);
    final result = await _apiAuthDataSource.signUp(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    return userModel;
  }

  T? _authResponseToUserModel(AuthParams params, bool result) {
    final _baseUser = UserModel(
      id: _apiAuthDataSource.currentUserModel!.id,
      email: _apiAuthDataSource.currentUserModel!.email,
      phoneNumber: _apiAuthDataSource.currentUserModel!.phoneNumber,
      displayName: params.displayName ?? _apiAuthDataSource.currentUserModel!.email,
      refreshToken: _apiAuthDataSource.currentUserModel!.refreshToken,
      accessToken: _apiAuthDataSource.currentUserModel!.accessToken,
      status: result ? AuthStatus.authenticated : AuthStatus.unauthenticated,
      authType: params.authType,
      createdAt: params.createdAt ?? DateTime.now(),
      updatedAt: DateTime.tryParse(
            _apiAuthDataSource.currentUserModel!.updatedAt.toString(),
          ) ??
          DateTime.now(),
    );
    return convertDataTypeFromMap(_baseUser.toMap());
  }
}
