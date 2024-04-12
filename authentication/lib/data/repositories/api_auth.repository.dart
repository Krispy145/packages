import 'package:authentication/data/models/auth_params.dart';
import 'package:authentication/data/repositories/helpers/auth_repository.helper.dart';
import 'package:authentication/data/source/api_user.source.dart';
import 'package:authentication/data/source/supabase_user.source.dart';
import 'package:authentication/helpers/exception.dart';
import 'package:authentication/utils/loggers.dart';
import 'package:rxdart/rxdart.dart';
import 'package:utilities/logger/logger.dart';

import '../models/user_model.dart';
import '../source/api_auth.source.dart';
import '../source/firestore_user.source.dart';
import '/data/source/_source.dart';
import '_repository.dart';

/// [ApiAuthDataRepository] is a class that defines the basic CRUD operations for the [UserModel] entity.
class ApiAuthDataRepository implements AuthenticationDataRepository {
  /// [baseUrl] is the base url for the api data source.
  final String baseUrl;

  /// [dataSource] is an instance of [AuthenticationDataSource] interface.
  /// It is used to call the different data sources' methods.
  /// currently, there are 3 data sources: [ApiAuthDataSource], [FirestoreUserDataSource], [SupabaseUserDataSource].
  final UserDataSource dataSource;

  /// [logToDatabase] is a boolean that determines whether to log the data to the corresponding database or not.
  final bool logToDatabase;
  UserModel? _currentUserModel;
  @override
  late final BehaviorSubject<UserModel?> currentUserModelSubject;
  ApiAuthDataSource get _apiAuthDataSource => ApiAuthDataSource(baseUrl);

  /// [ApiAuthDataRepository] constructor.
  ApiAuthDataRepository({
    required this.baseUrl,
    required this.logToDatabase,
    UserDataSource? dataSource,
  }) : dataSource = dataSource ?? ApiUserDataSource(baseUrl) {
    currentUserModelSubject = BehaviorSubject<UserModel?>();
    if (_apiAuthDataSource.currentUserModel != null) {
      _currentUserModel = _apiAuthDataSource.currentUserModel;
      currentUserModelSubject.add(_currentUserModel);
    }
  }

  @override
  Future<void> deleteAccount(String userId) async {
    await _apiAuthDataSource.delete(userId);
    if (logToDatabase) return await dataSource.delete(userId);
  }

  @override
  Future<UserModel?> reauthenticate(AuthParams params) async {
    final result = await _apiAuthDataSource.reauthenticate(params: params);
    if (logToDatabase) await dataSource.update(result!.id, result);
    return result;
  }

  @override
  Future<UserModel?> signInAnonymously(AuthParams params) async {
    final result = await _apiAuthDataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<UserModel?> signInWithApple(AuthParams params) async {
    try {
      final appleParams = await AuthRepositoryHelper.signInWithApple(params);
      final result = await _apiAuthDataSource.signIn(params: appleParams);

      final userModel = _authResponseToUserModel(appleParams, result != null);
      if (logToDatabase) await dataSource.update(userModel.id, userModel);
      return userModel;
    } catch (e) {
      AppLogger.print(
        'signIn attempt -> ${params.authType}: $e',
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }

  @override
  Future<UserModel?> signInWithEmail(AuthParams params) async {
    final result = await _apiAuthDataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<UserModel?> signInWithFacebook(AuthParams params) async {
    final facebookParams = await AuthRepositoryHelper.signInWithFacebook(params);
    final result = await _apiAuthDataSource.signIn(params: facebookParams);
    final userModel = _authResponseToUserModel(facebookParams, result != null);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<UserModel?> signInWithGitHub(AuthParams params) async {
    final result = await _apiAuthDataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<UserModel?> signInWithGoogle(AuthParams params) async {
    final googleParams = await AuthRepositoryHelper.signInWithGoogle(params);
    final result = await _apiAuthDataSource.signIn(params: googleParams);
    final userModel = _authResponseToUserModel(googleParams, result != null);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<UserModel?> signInWithMicrosoft(AuthParams params) async {
    final result = await _apiAuthDataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<UserModel?> signInWithPasswordlessEmail(
    String email,
    String emailLink,
  ) async {
    final params = AuthParams.passwordless(email: email, password: emailLink);
    final result = await _apiAuthDataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<UserModel?> signInWithPhoneNumber(
    String phoneNumber,
    String confirmationCode,
  ) async {
    final params = AuthParams.phone(phoneNumber: phoneNumber, password: confirmationCode);
    final result = await _apiAuthDataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<UserModel?> signInWithX(AuthParams params) async {
    final result = await _apiAuthDataSource.signIn(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<void> signOut() async {
    if (logToDatabase) {
      await dataSource.update(
        _currentUserModel!.id,
        _currentUserModel!.copyWith(status: AuthStatus.unauthenticated),
      );
    }
    await _apiAuthDataSource.signOut(params: _currentUserModel!.toAuthParams());
  }

  @override
  Future<UserModel?> signUpWithEmail(String email, String password) async {
    final params = AuthParams.email(email: email, password: password);
    final result = await _apiAuthDataSource.signUp(params: params);
    final userModel = _authResponseToUserModel(params, result != null);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  UserModel _authResponseToUserModel(AuthParams params, bool result) {
    _currentUserModel = UserModel(
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
    return _currentUserModel!;
  }
}
