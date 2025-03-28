import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/models/user_model.dart";
import "package:authentication/data/repositories/auth/_repository.dart";
import "package:authentication/data/repositories/auth/api.repository.dart";
import "package:authentication/data/repositories/auth/firebase.repository.dart";
import "package:authentication/data/repositories/auth/supabase.repository.dart";
import "package:authentication/data/repositories/user.repository.dart";
import "package:authentication/data/sources/user/_source.dart";
import "package:authentication/domain/repositories/code.repository.dart";
import "package:authentication/helpers/exception.dart";
import "package:authentication/utils/loggers.dart";
import "package:flutter/foundation.dart";
import "package:flutter_facebook_auth/flutter_facebook_auth.dart";
import "package:rxdart/rxdart.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/extensions/string.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";

/// [AuthenticationRepository] is an abstract class that defines the basic CRUD operations for the [UserModel] entity.
/// It also defines the different types of data sources.
/// It is used to call the different data sources' methods.
/// currently, there are 3 data sources: [ApiUserDataSource], [FirestoreUserDataSource], [SupabaseUserDataSource].
class AuthenticationRepository<T extends UserModel> {
  final String? baseUrl;
  final ApiAuthDataRepository<T, dynamic>? dataRepository;

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  final String Function(T) titleFromType;

  /// [userSource] is an instance of [UserDataSource] interface.
  /// It is used to call the different data sources' methods.
  /// currently, there are 3 data sources: [ApiUserDataSource], [FirestoreUserDataSource], [SupabaseUserDataSource].
  final UserDataSourceTypes userSource;
  final bool hasPermissions;

  /// [authSource] is an instance of [AuthSourceTypes] interface.
  AuthSourceTypes authSource;

  /// [facebookAppId] is the facebook app id used for facebook authentication,
  /// [required] for web.
  final String? facebookAppId;

  BehaviorSubject<T?> get currentUserModelStream =>
      _authenticationDataRepository.userModelStream;

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
    required this.dataRepository,
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
    required this.titleFromType,
    required this.hasPermissions,
    this.userSource = UserDataSourceTypes.api,
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
    required this.hasPermissions,
    required this.titleFromType,
    this.userSource = UserDataSourceTypes.firestore,
    this.facebookAppId,
  })  : baseUrl = null,
        dataRepository = null,
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
    required this.titleFromType,
    required this.hasPermissions,
    this.userSource = UserDataSourceTypes.supabase,
    this.facebookAppId,
  })  : baseUrl = null,
        dataRepository = null,
        authSource = AuthSourceTypes.supabase {
    if (facebookAppId != null) {
      _initializeFacebookForWeb();
    }
    _initStreams();
  }

  CodeDataSourceType? _codeSource;

  void setCodeSource(CodeDataSourceType codeSource) {
    this._codeSource = codeSource;
  }

  late final userDataRepository = UserDataRepository<T>(
    userSource,
    hasPermissions,
    baseUrl: baseUrl,
    convertDataTypeFromMap: convertDataTypeFromMap,
    convertDataTypeToMap: convertDataTypeToMap,
    titleFromType: titleFromType,
  );

  late final AuthenticationDataRepository<T> _authenticationDataRepository =
      authSource == AuthSourceTypes.api
          ? dataRepository!
          : authSource == AuthSourceTypes.firebase
              ? FirebaseAuthDataRepository(
                  hasPermission: hasPermissions,
                  userDataRepository: userDataRepository,
                  convertDataTypeFromMap: convertDataTypeFromMap,
                  convertDataTypeToMap: convertDataTypeToMap,
                )
              : SupabaseAuthDataRepository(
                  convertDataTypeFromMap: convertDataTypeFromMap,
                  convertDataTypeToMap: convertDataTypeToMap,
                );

  Future<Pair<RequestResponse, T>> updateCurrentUserModel(T userModel) async {
    try {
      final _currentResponse = convertDataTypeToMap(userModel);
      _currentResponse["updated_at_timestamp"] = DateTime.now();
      final changedUserModel = convertDataTypeFromMap(_currentResponse);
      await userDataRepository.updateUserModel(userModel: changedUserModel);
      await _authenticationDataRepository.updateUserModel(changedUserModel);
      currentUserModelStream.add(changedUserModel);
      return Pair(RequestResponse.success, changedUserModel);
    } catch (e) {
      AppLogger.print(
        "Error in updating user model: $e",
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
      return Pair(RequestResponse.failure, userModel);
    }
  }

  /// [signIn] signs in the user.
  Future<T?> signIn({required T params}) async {
    AppLogger.print(
      "signIn attempt -> ${params.authType}",
      [AuthenticationLoggers.authentication],
    );
    T? changedUserModel;
    try {
      switch (params.authType) {
        case AuthType.email:
          changedUserModel =
              await _authenticationDataRepository.signInWithEmail(params);
        case AuthType.google:
          changedUserModel =
              await _authenticationDataRepository.signInWithGoogle(params);
        case AuthType.facebook:
          changedUserModel =
              await _authenticationDataRepository.signInWithFacebook(params);
        case AuthType.apple:
          changedUserModel =
              await _authenticationDataRepository.signInWithApple(params);
        case AuthType.github:
          changedUserModel =
              await _authenticationDataRepository.signInWithGitHub(params);
        case AuthType.microsoft:
          changedUserModel =
              await _authenticationDataRepository.signInWithMicrosoft(params);
        case AuthType.anonymous:
          changedUserModel =
              await _authenticationDataRepository.signInAnonymously(params);
        case AuthType.passwordless:
          changedUserModel = await _authenticationDataRepository
              .signInWithPasswordlessEmail(params.email!, params.password!);
        case AuthType.phone:
          changedUserModel = await _authenticationDataRepository
              .signInWithPhoneNumber(params.phoneNumber!, params.password!);
        case AuthType.x:
          changedUserModel =
              await _authenticationDataRepository.signInWithX(params);
        case AuthType.empty:
          AppLogger.print(
            "${params.authType.name} not implemented for signIn",
            [AuthenticationLoggers.authentication],
            type: LoggerType.error,
          );
      }
      final _currentResponse = convertDataTypeToMap(changedUserModel!);
      await _verifyCode(params, changedUserModel);
      _currentResponse["last_login_at_timestamp"] = DateTime.now();
      await userDataRepository.initPermissions(changedUserModel.id);
      if (userDataRepository.currentPermissionModelStream.value != null) {
        _currentResponse["role"] =
            userDataRepository.currentPermissionModelStream.value!.role;
      }
      changedUserModel = convertDataTypeFromMap(_currentResponse);
      final _currentUserResponse =
          await userDataRepository.getUserModel(id: changedUserModel.id);
      final _isAuthorized = _currentUserResponse.second?.isAuthorized ?? false;
      if (_isAuthorized) {
        _currentResponse["is_authorized"] = true;
        changedUserModel = convertDataTypeFromMap(_currentResponse);
      }

      await userDataRepository.updateUserModel(userModel: changedUserModel);
      final _updatedUserResponse =
          await userDataRepository.getUserModel(id: changedUserModel.id);
      changedUserModel = _updatedUserResponse.second ?? changedUserModel;
      try {
        await _authenticationDataRepository.updateUserModel(changedUserModel);
      } catch (e) {
        AppLogger.print(
          "Error in updating user model: $e, trying to add user model",
          [AuthenticationLoggers.authentication],
          type: LoggerType.error,
        );
        await userDataRepository.addUserModel(userModel: changedUserModel);
      }
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

  Future<void> _verifyCode(T params, UserModel changedUserModel) async {
    if (params.code != null && _codeSource != null) {
      final response =
          await _codeSource?.source.verifyAndConsumeCode(params.code!);
      if (response == RequestResponse.failure) {
        throw const AuthenticationException("Error in verifying code");
      }
      if (response == RequestResponse.denied) {
        await deleteAccount(userId: changedUserModel.id);
        throw const AuthenticationException("Invalid code");
      }
    }
  }

  /// [signOut] signs out the user.
  Future<bool> signOut() async {
    AppLogger.print("signOut attempt", [AuthenticationLoggers.authentication]);
    final _currentResponse =
        convertDataTypeToMap(currentUserModelStream.value!);
    _currentResponse["last_logout_at_timestamp"] = DateTime.now();
    _currentResponse["status"] = AuthStatus.unauthenticated;
    final changedUserModel = convertDataTypeFromMap(_currentResponse);
    await userDataRepository.updateUserModel(userModel: changedUserModel);
    userDataRepository.currentPermissionModelStream.add(null);
    return _authenticationDataRepository.signOut();
  }

  /// [signUpWithEmail] signs up the use with email and password.
  Future<T?> signUpWithEmail({required T params}) async {
    AppLogger.print(
      "signUp attempt -> ${params.authType}",
      [AuthenticationLoggers.authentication],
    );

    final result = await _authenticationDataRepository.signUpWithEmail(
      params,
    );
    var changedUserModel = result;
    if (result != null) {
      await _verifyCode(params, result);
      final _currentResponse = result.toMap();
      _currentResponse["last_login_at_timestamp"] = DateTime.now();
      _currentResponse["status"] = AuthStatus.authenticated;
      _currentResponse["id"] = result.id;

      for (final element in _currentResponse.entries) {
        if (element.key != "email" &&
            element.key != "password" &&
            element.value != null) {
          _currentResponse[element.key.camelCaseToSnakeCase()] = element.value;
        }
      }
      changedUserModel = convertDataTypeFromMap(_currentResponse);
      await userDataRepository.updateUserModel(userModel: changedUserModel);
    }
    return changedUserModel;
  }

  /// [params] refreshes the user's token.
  Future<T?> reauthenticate({required T params}) async {
    AppLogger.print(
      "refreshToken attempt",
      [AuthenticationLoggers.authentication],
    );
    final _user = await _authenticationDataRepository.reauthenticate(params);
    try {
      await userDataRepository.updateUserModel(
        userModel: currentUserModelStream.value!,
      );
    } catch (e) {
      AppLogger.print(
        "Error in updating user model: $e",
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
    }
    await userDataRepository.initPermissions(currentUserModelStream.value!.id);
    return _user;
  }

  /// [deleteAccount] deletes the user's account.
  Future<RequestResponse> deleteAccount({required String userId}) async {
    AppLogger.print(
      "deleteAccount attempt",
      [AuthenticationLoggers.authentication],
    );
    final _userResult = await userDataRepository.deleteUserModel(id: userId);
    await _authenticationDataRepository.deleteAccount(userId);
    return _userResult;
  }

  /// [sendPasswordResetEmail] sends a password reset email to the user.
  Future<RequestResponse> sendPasswordResetEmail({
    required String email,
  }) async {
    AppLogger.print(
      "sendPasswordResetEmail attempt",
      [AuthenticationLoggers.authentication],
    );
    await _authenticationDataRepository.sendPasswordResetEmail(email);
    return RequestResponse.success;
  }

  /// [verifyAndUpdateEmail] verifies the email and updates the user's email.
  Future<Pair<RequestResponse, T?>> verifyAndUpdateEmail({
    required String newEmail,
  }) async {
    AppLogger.print(
      "verifyAndUpdateEmail attempt",
      [AuthenticationLoggers.authentication],
    );
    final _response =
        await _authenticationDataRepository.verifyAndUpdateEmail(newEmail);
    if (_response != null) {
      final _currentResponse = convertDataTypeToMap(_response);
      _currentResponse["email"] = newEmail;
      final changedUserModel = convertDataTypeFromMap(_currentResponse);
      await userDataRepository.updateUserModel(userModel: changedUserModel);
      return Pair(RequestResponse.success, changedUserModel);
    }
    return Pair(RequestResponse.failure, null);
  }

  /// [changePassword] changes the user's password.
  Future<void> changePassword({required String password}) async {
    AppLogger.print(
      "changePassword attempt",
      [AuthenticationLoggers.authentication],
    );
    return _authenticationDataRepository.changePassword(password);
  }

  Future<void> _initStreams() async {
    try {
      currentUserModelStream.listen((event) async {
        if (event?.status == AuthStatus.authenticated &&
            isUserAuthenticated == false) {
          AppLogger.print(
            "User is authenticated",
            [AuthenticationLoggers.authentication],
          );
          isUserAuthenticated = true;
          if (event != null && hasPermissions) {
            final _user = convertDataTypeFromMap(convertDataTypeToMap(event));
            await userDataRepository.initPermissions(_user.id);
          }
        } else if (event?.status == AuthStatus.unauthenticated &&
            isUserAuthenticated == true) {
          AppLogger.print(
            "User is unauthenticated",
            [AuthenticationLoggers.authentication],
          );

          isUserAuthenticated = false;
        }
      });
    } catch (e) {
      AppLogger.print(
        "Error in initStreams: $e",
        [AuthenticationLoggers.authentication],
      );
    }
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
