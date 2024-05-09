import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/models/user_model.dart";
import "package:authentication/data/repositories/_repository.dart";
import "package:authentication/data/repositories/api_auth.repository.dart";
import "package:authentication/data/repositories/firebase_auth.repository.dart";
import "package:authentication/data/repositories/supabase_auth.repository.dart";
import "package:authentication/data/repositories/user.repository.dart";
import "package:authentication/data/source/_source.dart";
import "package:authentication/data/source/api_user.source.dart";
import "package:authentication/data/source/firestore_user.source.dart";
import "package:authentication/data/source/supabase_user.source.dart";
import "package:authentication/helpers/exception.dart";
import "package:authentication/utils/loggers.dart";
import "package:flutter/foundation.dart";
import "package:flutter_facebook_auth/flutter_facebook_auth.dart";
import "package:rxdart/rxdart.dart";
import "package:utilities/logger/logger.dart";

/// [AuthSourceTypes] is an enum that defines the different types of data sources.
enum AuthSourceTypes {
  /// [api] is the api data source.
  api,

  /// [firebase] is the firestore data source.
  firebase,

  /// [supabase] is the supabase data source.
  supabase,
}

/// [AuthenticationRepository] is an abstract class that defines the basic CRUD operations for the [UserModel] entity.
/// It also defines the different types of data sources.
/// It is used to call the different data sources' methods.
/// currently, there are 3 data sources: [ApiUserDataSource], [FirestoreUserDataSource], [SupabaseUserDataSource].
class AuthenticationRepository<T extends UserModel> {
  final String? baseUrl;
  final AuthSourceTypes authSource;

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  /// [userSource] is an instance of [UserDataSource] interface.
  /// It is used to call the different data sources' methods.
  /// currently, there are 3 data sources: [ApiUserDataSource], [FirestoreUserDataSource], [SupabaseUserDataSource].
  final DataSourceTypes userSource;

  /// [facebookAppId] is the facebook app id used for facebook authentication,
  /// [required] for web.
  final String? facebookAppId;

  /// [currentUserModelStream] is the current user model stream.
  BehaviorSubject<T?> get currentUserModelStream => _authenticationDataRepository.currentUserModelSubject;

  T? get currentUserModel => _authenticationDataRepository.currentUserModelSubject.value;

  bool isUserAuthenticated = false;

  // ignore: comment_references
  /// [authStatusStream] is the authentication status stream.
  // Stream<AuthStatus> get authStatusStream => _authStatusSubject.stream;

  // AuthStatus get authStatus => _currentT?.status ?? AuthStatus.unauthenticated;
  // late final BehaviorSubject<T?> currentUserModelSubject;
  // late final BehaviorSubject<AuthStatus> _authStatusSubject;

  /// [AuthenticationRepository.api] constructor.
  AuthenticationRepository.api({
    required this.baseUrl,
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
    this.userSource = DataSourceTypes.api,
    this.facebookAppId,
  }) : authSource = AuthSourceTypes.api {
    if (facebookAppId != null) {
      _initializeFacebookForWeb();
    }
    _initStreams();
  }

  /// [AuthenticationRepository.firebase] constructor.
  AuthenticationRepository.firebase({
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
    this.userSource = DataSourceTypes.firestore,
    this.facebookAppId,
  })  : baseUrl = null,
        authSource = AuthSourceTypes.firebase {
    if (facebookAppId != null) {
      _initializeFacebookForWeb();
    }
    _initStreams();
  }

  /// [AuthenticationRepository.supabase] constructor.
  AuthenticationRepository.supabase({
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
    this.userSource = DataSourceTypes.supabase,
    this.facebookAppId,
  })  : baseUrl = null,
        authSource = AuthSourceTypes.supabase {
    if (facebookAppId != null) {
      _initializeFacebookForWeb();
    }
    _initStreams();
  }
  late final userDataRepository = UserDataRepository<T>(
    userSource,
    baseUrl: baseUrl,
    convertDataTypeFromMap: convertDataTypeFromMap,
    convertDataTypeToMap: convertDataTypeToMap,
  );

  late final AuthenticationDataRepository<T> _authenticationDataRepository = authSource == AuthSourceTypes.api
      ? ApiAuthDataRepository(
          baseUrl: baseUrl!,
          convertDataTypeFromMap: convertDataTypeFromMap,
          convertDataTypeToMap: convertDataTypeToMap,
        )
      : authSource == AuthSourceTypes.firebase
          ? FirebaseAuthDataRepository(
              userDataRepository: userDataRepository,
              convertDataTypeFromMap: convertDataTypeFromMap,
              convertDataTypeToMap: convertDataTypeToMap,
            )
          : SupabaseAuthDataRepository(
              convertDataTypeFromMap: convertDataTypeFromMap,
              convertDataTypeToMap: convertDataTypeToMap,
            );

  /// [signIn] signs in the user.
  Future<T?> signIn({required AuthParams params}) async {
    AppLogger.print(
      "signIn attempt -> ${params.authType}",
      [AuthenticationLoggers.authentication],
    );
    T? changedUserModel;
    try {
      switch (params.authType) {
        case AuthType.email:
          changedUserModel = await _authenticationDataRepository.signInWithEmail(params);
        case AuthType.google:
          changedUserModel = await _authenticationDataRepository.signInWithGoogle(params);
        case AuthType.facebook:
          changedUserModel = await _authenticationDataRepository.signInWithFacebook(params);
        case AuthType.apple:
          changedUserModel = await _authenticationDataRepository.signInWithApple(params);
        case AuthType.github:
          changedUserModel = await _authenticationDataRepository.signInWithGitHub(params);
        case AuthType.microsoft:
          changedUserModel = await _authenticationDataRepository.signInWithMicrosoft(params);
        case AuthType.anonymous:
          changedUserModel = await _authenticationDataRepository.signInAnonymously(params);
        case AuthType.passwordless:
          changedUserModel = await _authenticationDataRepository.signInWithPasswordlessEmail(params.email!, params.password!);
        case AuthType.phone:
          changedUserModel = await _authenticationDataRepository.signInWithPhoneNumber(params.phoneNumber!, params.password!);
        case AuthType.x:
          changedUserModel = await _authenticationDataRepository.signInWithX(params);
        case AuthType.empty:
          AppLogger.print(
            "AuthType.empty not implemented for signIn",
            [AuthenticationLoggers.authentication],
            type: LoggerType.error,
          );
      }
      final _currentResponse = convertDataTypeToMap(changedUserModel!);
      _currentResponse["last_login_at"] = DateTime.now();
      changedUserModel = convertDataTypeFromMap(_currentResponse);
      await userDataRepository.updateUser(user: changedUserModel);
      currentUserModelStream.add(changedUserModel);
      return changedUserModel;
    } catch (e) {
      AppLogger.print(
        "signIn attempt -> ${params.authType}: $e",
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }

  /// [signOut] signs out the user.
  Future<bool> signOut() async {
    AppLogger.print("signOut attempt", [AuthenticationLoggers.authentication]);
    final _currentResponse = convertDataTypeToMap(currentUserModel!);
    _currentResponse["last_logout_at"] = DateTime.now();
    _currentResponse["status"] = AuthStatus.unauthenticated;
    final changedUserModel = convertDataTypeFromMap(_currentResponse);
    await userDataRepository.updateUser(user: changedUserModel);
    return _authenticationDataRepository.signOut();
  }

  /// [signUpWithEmail] signs up the use with email and password.
  Future<T?> signUpWithEmail({required AuthParams params}) async {
    AppLogger.print(
      "signUp attempt -> ${params.authType}",
      [AuthenticationLoggers.authentication],
    );
    final _currentResponse = convertDataTypeToMap(currentUserModel!);
    _currentResponse["last_login_at"] = DateTime.now();
    _currentResponse["status"] = AuthStatus.authenticated;
    final changedUserModel = convertDataTypeFromMap(_currentResponse);
    await userDataRepository.updateUser(user: changedUserModel);
    return _authenticationDataRepository.signUpWithEmail(
      params.email!,
      params.password!,
    );
  }

  /// [params] refreshes the user's token.
  Future<T?> reauthenticate({required AuthParams params}) async {
    AppLogger.print(
      "refreshToken attempt",
      [AuthenticationLoggers.authentication],
    );
    await userDataRepository.updateUser(user: currentUserModel!);
    return _authenticationDataRepository.reauthenticate(params);
  }

  /// [deleteAccount] deletes the user's account.
  Future<void> deleteAccount({required String userId}) async {
    AppLogger.print(
      "deleteAccount attempt",
      [AuthenticationLoggers.authentication],
    );
    await userDataRepository.deleteUser(id: userId);
    return _authenticationDataRepository.deleteAccount(userId);
  }

  void _initStreams() {
    currentUserModelStream.listen((value) {
      if (value?.status == AuthStatus.authenticated && isUserAuthenticated == false) {
        AppLogger.print("User is authenticated", [AuthenticationLoggers.authentication]);
        isUserAuthenticated = true;
      }
      if (value?.status == AuthStatus.unauthenticated && isUserAuthenticated == true) {
        AppLogger.print("User is unauthenticated", [AuthenticationLoggers.authentication]);
        isUserAuthenticated = false;
      }
    });
  }

  Future<void> _initializeFacebookForWeb() async {
    // check if is running on Web
    if (kIsWeb) {
      try {
        // initialize the facebook javascript SDK
        await FacebookAuth.i.webAndDesktopInitialize(
          appId: facebookAppId!,
          cookie: true,
          xfbml: true,
          version: "v15.0",
        );
      } catch (e) {
        AppLogger.print(
          "initializeFacebookForWeb attempt -> $e",
          [AuthenticationLoggers.authentication],
          type: LoggerType.error,
        );
      }
    }
  }
}
