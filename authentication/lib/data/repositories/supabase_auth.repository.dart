import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/repositories/helpers/auth_repository.helper.dart";
import "package:authentication/data/source/api_user.source.dart";
import "package:authentication/data/source/supabase_user.source.dart";
import "package:authentication/helpers/exception.dart";
import "package:authentication/utils/loggers.dart";
import "package:rxdart/rxdart.dart";
import "package:supabase_flutter/supabase_flutter.dart";
import "package:utilities/logger/logger.dart";

import "../models/user_model.dart";
import "../source/firestore_user.source.dart";
import "/data/source/_source.dart";
import "_repository.dart";

/// [_OAuthProviderExtension] is an extension on [AuthType] enum.
/// It is used to convert [AuthType] to [OAuthProvider] for supabase authentication.
extension _OAuthProviderExtension on AuthType {
  OAuthProvider toOAuthProvider() {
    switch (this) {
      case AuthType.google:
        return OAuthProvider.google;
      case AuthType.facebook:
        return OAuthProvider.facebook;
      case AuthType.apple:
        return OAuthProvider.apple;
      case AuthType.github:
        return OAuthProvider.github;
      case AuthType.x:
        return OAuthProvider.twitter;
      case AuthType.microsoft:
        throw const AuthenticationException("Microsoft is not set up yet");
      default:
        throw AuthenticationException("$name is not set up yet}");
    }
  }

  // ignore: unused_element
  AuthType toAuthType(OAuthProvider provider) {
    switch (provider) {
      case OAuthProvider.google:
        return AuthType.google;
      case OAuthProvider.facebook:
        return AuthType.facebook;
      case OAuthProvider.apple:
        return AuthType.apple;
      case OAuthProvider.github:
        return AuthType.github;
      case OAuthProvider.twitter:
        return AuthType.x;
      default:
        throw AuthenticationException("$name is not set up yet}");
    }
  }
}

/// [SupabaseAuthDataRepository] is a class that defines the basic CRUD operations for the [UserModel] entity.
class SupabaseAuthDataRepository implements AuthenticationDataRepository {
  /// [dataSource] is an instance of [UserDataSource] interface.
  /// It is used to call the different data sources' methods.
  /// currently, there are 3 data sources: [ApiUserDataSource], [FirestoreUserDataSource], [SupabaseUserDataSource].
  final UserDataSource dataSource;

  /// [logToDatabase] is a boolean that determines whether to log the data to the corresponding database or not.
  final bool logToDatabase;

  final _supabaseAuth = Supabase.instance.client.auth;
  Session? get _session => _supabaseAuth.currentSession;
  User? get _user => _supabaseAuth.currentUser;
  UserModel? _currentUserModel;
  @override
  late final BehaviorSubject<UserModel?> currentUserModelSubject;

  /// [SupabaseAuthDataRepository] constructor.
  SupabaseAuthDataRepository({
    required this.logToDatabase,
    UserDataSource? dataSource,
  }) : dataSource = dataSource ?? SupabaseUserDataSource() {
    currentUserModelSubject =
        BehaviorSubject<UserModel?>.seeded(_currentUserModel);
    _initStreams();
  }

  @override
  Future<void> deleteAccount(String userId) async {
    if (logToDatabase) await dataSource.delete(userId);
  }

  @override
  Future<UserModel?> reauthenticate(AuthParams params) async {
    try {
      final result = await _supabaseAuth.refreshSession();
      final userModel = _authResponseToUserModel(params, result.user != null);
      if (logToDatabase) await dataSource.update(userModel.id, userModel);
      return userModel;
    } on AuthException catch (e) {
      AppLogger.print(
        "reauthenticate attempt -> ${params.authType}: $e",
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.message);
    }
  }

  @override
  Future<UserModel?> signInAnonymously(AuthParams params) {
    throw const AuthenticationException(
      "Anonymous authentication is not set up yet for supabase",
    );
  }

  @override
  Future<UserModel?> signInWithApple(AuthParams params) async {
    try {
      final appleParams = await AuthRepositoryHelper.signInWithApple(params);
      final result = await _supabaseAuth.signInWithIdToken(
        provider: OAuthProvider.apple,
        idToken: appleParams.idToken!,
        nonce: appleParams.nonce,
      );

      final userModel =
          _authResponseToUserModel(appleParams, result.user != null);
      if (logToDatabase) await dataSource.update(userModel.id, userModel);
      return userModel;
    } on AuthException catch (e) {
      AppLogger.print(
        "signIn attempt -> ${params.authType}: $e",
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.message);
    }
  }

  @override
  Future<UserModel?> signInWithEmail(AuthParams params) async {
    try {
      final result = await _supabaseAuth.signInWithPassword(
        email: params.email,
        password: params.password!,
      );
      final userModel = _authResponseToUserModel(params, result.user != null);
      if (logToDatabase) await dataSource.update(userModel.id, userModel);
      return userModel;
    } on AuthException catch (e) {
      AppLogger.print(
        "signIn attempt -> ${params.authType}: $e",
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.message);
    }
  }

  @override
  Future<UserModel?> signInWithFacebook(AuthParams params) async {
    final result = await _supabaseAuth.signInWithOAuth(
      params.authType.toOAuthProvider(),
    );
    final userModel = _authResponseToUserModel(params, result);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<UserModel?> signInWithGitHub(AuthParams params) async {
    final result = await _supabaseAuth.signInWithOAuth(
      params.authType.toOAuthProvider(),
    );
    final userModel = _authResponseToUserModel(params, result);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<UserModel?> signInWithGoogle(AuthParams params) async {
    final googleParams = await AuthRepositoryHelper.signInWithGoogle(params);
    final result = await _supabaseAuth.signInWithIdToken(
      provider: googleParams.authType.toOAuthProvider(),
      idToken: googleParams.idToken!,
    );
    final userModel =
        _authResponseToUserModel(googleParams, result.user != null);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<UserModel?> signInWithMicrosoft(AuthParams params) {
    throw const AuthenticationException(
      "Microsoft authentication is not set up yet for supabase",
    );
  }

  @override
  Future<UserModel?> signInWithPasswordlessEmail(
    String email,
    String emailLink,
  ) {
    throw const AuthenticationException(
      "Passwordless authentication is not set up yet for supabase",
    );
  }

  @override
  Future<UserModel?> signInWithPhoneNumber(
    String phoneNumber,
    String confirmationCode,
  ) async {
    final result = await _supabaseAuth.signInWithPassword(
      phone: phoneNumber,
      password: confirmationCode,
    );
    final userModel = _authResponseToUserModel(
      AuthParams.phone(phoneNumber: phoneNumber, password: confirmationCode),
      result.user != null,
    );
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<UserModel?> signInWithX(AuthParams params) async {
    final result = await _supabaseAuth.signInWithOAuth(
      params.authType.toOAuthProvider(),
    );
    final userModel = _authResponseToUserModel(params, result);
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
    await _supabaseAuth.signOut();
  }

  @override
  Future<UserModel?> signUpWithEmail(String email, String password) async {
    final result = await _supabaseAuth.signUp(password: password, email: email);
    if (result.session != null && result.user != null) {
      return signInWithEmail(
        AuthParams.email(email: email, password: password),
      );
    }
    return null;
  }

  void _initStreams() {
    _supabaseAuth.onAuthStateChange.listen((event) async {
      if (event.event == AuthChangeEvent.initialSession) {
        _currentUserModel = _supabaseUserToUserModel();
        currentUserModelSubject.add(_currentUserModel);
        AppLogger.print(
          "Supabase user initialSession: ${_currentUserModel?.authType ?? AuthType.empty}",
          [AuthenticationLoggers.authentication],
        );
      }
      if (event.event == AuthChangeEvent.signedIn) {
        _currentUserModel = _supabaseUserToUserModel();
        currentUserModelSubject.add(_currentUserModel);
        AppLogger.print(
          "Supabase user signedIn: ${_currentUserModel?.authType ?? AuthType.empty}",
          [AuthenticationLoggers.authentication],
        );
      }
      if (event.event == AuthChangeEvent.signedOut) {
        currentUserModelSubject.add(
          _currentUserModel?.copyWith(status: AuthStatus.unauthenticated),
        );
        AppLogger.print(
          "Supabase user signedOut: ${_currentUserModel?.authType ?? AuthType.empty}",
          [AuthenticationLoggers.authentication],
        );
      }
      if (event.event == AuthChangeEvent.tokenRefreshed) {
        _currentUserModel =
            await reauthenticate(_currentUserModel!.toAuthParams());
        currentUserModelSubject.add(_currentUserModel);
        AppLogger.print(
          "Supabase user tokenRefreshed: ${_currentUserModel?.authType ?? AuthType.empty}",
          [AuthenticationLoggers.authentication],
        );
      }
    });
  }

  UserModel? _supabaseUserToUserModel() {
    if (_user == null) return null;
    return UserModel(
      id: _user!.aud,
      email: _user!.email,
      phoneNumber: _user!.phone,
      displayName: _user!.email,
      refreshToken: _session!.refreshToken ?? _session!.providerRefreshToken,
      accessToken: _session!.accessToken,
      status: AuthStatus.authenticated,
      authType: _currentUserModel?.authType ?? AuthType.empty,
      createdAt: DateTime.tryParse(_user!.createdAt) ?? DateTime.now(),
      updatedAt:
          DateTime.tryParse(_user!.updatedAt.toString()) ?? DateTime.now(),
    );
  }

  UserModel _authResponseToUserModel(AuthParams params, bool result) {
    _currentUserModel = UserModel(
      id: _user!.id,
      email: _user!.email,
      phoneNumber: _user!.phone,
      displayName: params.displayName ?? _user!.email,
      refreshToken: _session!.refreshToken ?? _session!.providerRefreshToken,
      accessToken: _session!.accessToken,
      status: result ? AuthStatus.authenticated : AuthStatus.unauthenticated,
      authType: params.authType,
      createdAt: params.createdAt ?? DateTime.now(),
      updatedAt:
          DateTime.tryParse(_user!.updatedAt.toString()) ?? DateTime.now(),
    );
    return _currentUserModel!;
  }
}
