import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/repositories/helpers/auth_repository.helper.dart";
import "package:authentication/helpers/exception.dart";
import "package:authentication/utils/loggers.dart";
import "package:rxdart/rxdart.dart";
import "package:supabase_flutter/supabase_flutter.dart";
import "package:utilities/logger/logger.dart";

import "../../models/user_model.dart";
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
class SupabaseAuthDataRepository<T extends UserModel> extends AuthenticationDataRepository<T> {
  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  final _supabaseAuth = Supabase.instance.client.auth;
  Session? get _session => _supabaseAuth.currentSession;
  User? get _user => _supabaseAuth.currentUser;

  @override
  late final BehaviorSubject<T?> userModelStream = BehaviorSubject<T?>.seeded(null);

  /// [SupabaseAuthDataRepository] constructor.
  SupabaseAuthDataRepository({
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
  }) {
    _initStreams();
  }

  @override
  Future<T?> updateUserModel(T userModel) async {
    userModelStream.add(userModel);
    return userModel;
  }

  @override
  Future<void> deleteAccount(String userId) async {
    // if (logToDatabase) await dataSource.delete(userId);
  }

  @override
  Future<T?> reauthenticate(AuthParams params) async {
    try {
      final result = await _supabaseAuth.refreshSession();
      final userModel = _authResponseToUserModel(params, result.user != null);
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
  Future<T?> signInAnonymously(AuthParams params) {
    throw const AuthenticationException(
      "Anonymous authentication is not set up yet for supabase",
    );
  }

  @override
  Future<T?> signInWithApple(AuthParams params) async {
    try {
      final appleParams = await AuthRepositoryHelper.signInWithApple(params);
      final result = await _supabaseAuth.signInWithIdToken(
        provider: OAuthProvider.apple,
        idToken: appleParams.idToken!,
        nonce: appleParams.nonce,
      );

      final userModel = _authResponseToUserModel(appleParams, result.user != null);
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
  Future<T?> signInWithEmail(AuthParams params) async {
    try {
      final result = await _supabaseAuth.signInWithPassword(
        email: params.email,
        password: params.password!,
      );
      final userModel = _authResponseToUserModel(params, result.user != null);
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
  Future<T?> signInWithFacebook(AuthParams params) async {
    final result = await _supabaseAuth.signInWithOAuth(
      params.authType.toOAuthProvider(),
    );
    final userModel = _authResponseToUserModel(params, result);
    return userModel;
  }

  @override
  Future<T?> signInWithGitHub(AuthParams params) async {
    final result = await _supabaseAuth.signInWithOAuth(
      params.authType.toOAuthProvider(),
    );
    final userModel = _authResponseToUserModel(params, result);
    return userModel;
  }

  @override
  Future<T?> signInWithGoogle(AuthParams params) async {
    final googleParams = await AuthRepositoryHelper.signInWithGoogle(params);
    final result = await _supabaseAuth.signInWithIdToken(
      provider: googleParams.authType.toOAuthProvider(),
      idToken: googleParams.idToken!,
    );
    final userModel = _authResponseToUserModel(googleParams, result.user != null);
    return userModel;
  }

  @override
  Future<T?> signInWithMicrosoft(AuthParams params) {
    throw const AuthenticationException(
      "Microsoft authentication is not set up yet for supabase",
    );
  }

  @override
  Future<T?> signInWithPasswordlessEmail(
    String email,
    String emailLink,
  ) {
    throw const AuthenticationException(
      "Passwordless authentication is not set up yet for supabase",
    );
  }

  @override
  Future<T?> signInWithPhoneNumber(
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
    return userModel;
  }

  @override
  Future<T?> signInWithX(AuthParams params) async {
    final result = await _supabaseAuth.signInWithOAuth(
      params.authType.toOAuthProvider(),
    );
    final userModel = _authResponseToUserModel(params, result);
    return userModel;
  }

  @override
  Future<bool> signOut() async {
    try {
      await _supabaseAuth.signOut();
      return true;
    } on AuthException catch (e) {
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
    final result = await _supabaseAuth.signUp(password: params.password!, email: params.email);
    if (result.session != null && result.user != null) {
      return signInWithEmail(
        params,
      );
    }
    return null;
  }

  void _initStreams() {
    _supabaseAuth.onAuthStateChange.listen((event) async {
      if (event.event == AuthChangeEvent.initialSession) {
        userModelStream.add(_supabaseUserToUserModel());
        AppLogger.print(
          "Supabase user initialSession: ${userModelStream.value?.authType ?? AuthType.empty}",
          [AuthenticationLoggers.authentication],
        );
      }
      if (event.event == AuthChangeEvent.signedIn) {
        userModelStream.add(_supabaseUserToUserModel());
        AppLogger.print(
          "Supabase user signedIn: ${userModelStream.value?.authType ?? AuthType.empty}",
          [AuthenticationLoggers.authentication],
        );
      }
      if (event.event == AuthChangeEvent.signedOut) {
        final _currentResponse = convertDataTypeToMap(userModelStream.value!);
        _currentResponse["status"] = AuthStatus.unauthenticated;
        userModelStream.add(convertDataTypeFromMap(_currentResponse));
        AppLogger.print(
          "Supabase user signedOut: ${userModelStream.value?.authType ?? AuthType.empty}",
          [AuthenticationLoggers.authentication],
        );
      }
      if (event.event == AuthChangeEvent.tokenRefreshed) {
        userModelStream.add(_supabaseUserToUserModel());
        AppLogger.print(
          "Supabase user tokenRefreshed: ${userModelStream.value?.authType ?? AuthType.empty}",
          [AuthenticationLoggers.authentication],
        );
      }
    });
  }

  T? _supabaseUserToUserModel() {
    if (_user == null) return null;
    final _baseUser = UserModel(
      id: _user!.aud,
      email: _user!.email,
      phoneNumber: _user!.phone,
      displayName: _user!.email,
      refreshToken: _session!.refreshToken ?? _session!.providerRefreshToken,
      accessToken: _session!.accessToken,
      status: AuthStatus.authenticated,
      authType: userModelStream.value?.authType ?? AuthType.empty,
      createdAt: DateTime.tryParse(_user!.createdAt) ?? DateTime.now(),
      updatedAt: DateTime.tryParse(_user!.updatedAt.toString()) ?? DateTime.now(),
    );
    return convertDataTypeFromMap(_baseUser.toMap());
  }

  T _authResponseToUserModel(AuthParams params, bool result) {
    final _baseUser = UserModel(
      id: _user!.id,
      email: _user!.email ?? params.email,
      phoneNumber: _user!.phone ?? params.phoneNumber,
      displayName: params.displayName ?? _user!.email,
      refreshToken: _session!.refreshToken ?? _session!.providerRefreshToken,
      accessToken: _session!.accessToken,
      code: params.code,
      status: result ? AuthStatus.authenticated : AuthStatus.unauthenticated,
      authType: params.authType,
      createdAt: params.createdAt ?? DateTime.now(),
      updatedAt: DateTime.tryParse(_user!.updatedAt.toString()) ?? DateTime.now(),
    );
    return convertDataTypeFromMap(_baseUser.toMap());
  }
}
