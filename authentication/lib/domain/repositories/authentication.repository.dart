import 'package:authentication/data/models/auth_params.dart';
import 'package:authentication/data/models/user_model.dart';
import 'package:authentication/data/repositories/_repository.dart';
import 'package:authentication/data/repositories/api_auth.repository.dart';
import 'package:authentication/data/repositories/firebase_auth.repository.dart';
import 'package:authentication/data/repositories/supabase_auth.repository.dart';
import 'package:authentication/data/source/_source.dart';
import 'package:authentication/data/source/api_user.source.dart';
import 'package:authentication/data/source/firestore_user.source.dart';
import 'package:authentication/data/source/supabase_user.source.dart';
import 'package:authentication/helpers/exception.dart';
import 'package:authentication/utils/loggers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:rxdart/rxdart.dart';
import 'package:utilities/logger/logger.dart';

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
/// the [logToDatabase] parameter is used to determine whether to log the data to the corresponding database or not.
/// e.g. if [logToDatabase] is true, then the data will be added to the firestore database within "users" collection.
class AuthenticationRepository {
  final String? baseUrl;
  final AuthSourceTypes source;
  final bool logToDatabase;

  /// [dataSource] is an instance of [UserDataSource] interface.
  /// It is used to call the different data sources' methods.
  /// currently, there are 3 data sources: [ApiUserDataSource], [FirestoreUserDataSource], [SupabaseUserDataSource].
  final UserDataSource? dataSource;

  /// [facebookAppId] is the facebook app id used for facebook authentication,
  /// [required] for web.
  final String? facebookAppId;

  /// [_currentUserModelStream] is the current user model stream.
  BehaviorSubject<UserModel?> get currentUserModelStream => _authenticationDataRepository.currentUserModelSubject;

  UserModel? get currentUserModel => _authenticationDataRepository.currentUserModelSubject.value;

  /// [authStatusStream] is the authentication status stream.
  // Stream<AuthStatus> get authStatusStream => _authStatusSubject.stream;

  // AuthStatus get authStatus => _currentUserModel?.status ?? AuthStatus.unauthenticated;
  // late final BehaviorSubject<UserModel?> currentUserModelSubject;
  // late final BehaviorSubject<AuthStatus> _authStatusSubject;

  /// [AuthenticationRepository.api] constructor.
  AuthenticationRepository.api({
    required this.baseUrl,
    this.logToDatabase = true,
    this.dataSource,
    this.facebookAppId,
  }) : source = AuthSourceTypes.api {
    if (facebookAppId != null) {
      _initializeFacebookForWeb();
    }
    // _initStreams();
  }

  /// [AuthenticationRepository.firestore] constructor.
  /// [dataSource] defaults to [FirestoreAuthDataSource]
  AuthenticationRepository.firebase({
    this.logToDatabase = true,
    this.dataSource,
    this.facebookAppId,
  })  : baseUrl = null,
        source = AuthSourceTypes.firebase {
    if (facebookAppId != null) {
      _initializeFacebookForWeb();
    }
    // _initStreams();
  }

  /// [AuthenticationRepository.supabase] constructor.
  AuthenticationRepository.supabase({
    this.logToDatabase = true,
    this.dataSource,
    this.facebookAppId,
  })  : baseUrl = null,
        source = AuthSourceTypes.supabase {
    if (facebookAppId != null) {
      _initializeFacebookForWeb();
    }
    // _initStreams();
  }

  late final AuthenticationDataRepository _authenticationDataRepository = source == AuthSourceTypes.api
      ? ApiAuthDataRepository(
          baseUrl: baseUrl!,
          logToDatabase: logToDatabase,
          dataSource: dataSource,
        )
      : source == AuthSourceTypes.firebase
          ? FirebaseAuthDataRepository(
              logToDatabase: logToDatabase,
              dataSource: dataSource,
            )
          : SupabaseAuthDataRepository(
              logToDatabase: logToDatabase,
              dataSource: dataSource,
            );

  /// [signIn] signs in the user.
  Future<UserModel?> signIn({required AuthParams params}) async {
    AppLogger.print(
      'signIn attempt -> ${params.authType}',
      [AuthenticationLoggers.authentication],
    );
    UserModel? changedUserModel;
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
            'AuthType.empty not implemented for signIn',
            [AuthenticationLoggers.authentication],
            type: LoggerType.error,
          );
      }
      // _authStatusSubject.add(__currentUserModel?.status ?? AuthStatus.unauthenticated);
      currentUserModelStream.add(changedUserModel);
      return changedUserModel;
    } catch (e) {
      AppLogger.print(
        'signIn attempt -> ${params.authType}: $e',
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }

  /// [signOut] signs out the user.
  Future<void> signOut() async {
    AppLogger.print('signOut attempt', [AuthenticationLoggers.authentication]);
    return await _authenticationDataRepository.signOut();
  }

  /// [signUpWithEmail] signs up the use with email and password.
  Future<UserModel?> signUpWithEmail({required AuthParams params}) async {
    AppLogger.print(
      'signUp attempt -> ${params.authType}',
      [AuthenticationLoggers.authentication],
    );
    return await _authenticationDataRepository.signUpWithEmail(
      params.email!,
      params.password!,
    );
  }

  /// [params] refreshes the user's token.
  Future<UserModel?> reauthenticate({required AuthParams params}) async {
    AppLogger.print('refreshToken attempt', [AuthenticationLoggers.authentication]);
    return await _authenticationDataRepository.reauthenticate(params);
  }

  /// [deleteAccount] deletes the user's account.
  Future<void> deleteAccount({required String userId}) async {
    AppLogger.print('deleteAccount attempt', [AuthenticationLoggers.authentication]);
    return await _authenticationDataRepository.deleteAccount(userId);
  }

  // void _initStreams() {
  //   currentUserModelSubject = BehaviorSubject<UserModel?>.seeded(null);
  //   currentUserModelSubject.add(_authenticationDataRepository.currentUserModel);

  //   // _authStatusSubject = BehaviorSubject<AuthStatus>.seeded(_currentUserModel?.status ?? AuthStatus.unauthenticated);

  //   // authStatusStream.listen((event) {
  //   //   if (event != _authStatusSubject.value) {
  //   //     _authStatusSubject.add(event);
  //   //     AppLogger.print('authStatusStream -> $event', [AuthenticationLoggers.authentication]);
  //   //   }
  //   // });
  //   _currentUserModelStream.listen((event) {
  //     if (event != null && event != currentUserModelSubject.value) {
  //       currentUserModelSubject.add(event);
  //       AppLogger.print('currentUserModelStreamChanged -> $event', [AuthenticationLoggers.authentication]);
  //     }
  //     // else {
  //     //   AppLogger.print('currentUserModelStreamRemained -> $event', [AuthenticationLoggers.authentication]);
  //     // }
  //   });
  // }

  Future<void> _initializeFacebookForWeb() async {
    // check if is running on Web
    if (kIsWeb) {
      try {
        // initialiaze the facebook javascript SDK
        await FacebookAuth.i.webAndDesktopInitialize(
          appId: facebookAppId!,
          cookie: true,
          xfbml: true,
          version: "v15.0",
        );
      } catch (e) {
        AppLogger.print(
          'initializeFacebookForWeb attempt -> $e',
          [AuthenticationLoggers.authentication],
          type: LoggerType.error,
        );
      }
    }
  }
}
