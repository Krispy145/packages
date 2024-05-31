import "dart:async";

import "package:authentication/data/models/auth_params.dart";
import "package:authentication/data/repositories/helpers/auth_repository.helper.dart";
import "package:authentication/data/repositories/user.repository.dart";
import "package:authentication/helpers/exception.dart";
import "package:authentication/utils/loggers.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/foundation.dart";
import "package:rxdart/rxdart.dart";
import "package:utilities/logger/logger.dart";

import "../../models/user_model.dart";
import "_repository.dart";

/// [FirebaseAuthDataRepository] is a class that defines the basic CRUD operations for the [UserModel] entity.
class FirebaseAuthDataRepository<T extends UserModel> extends AuthenticationDataRepository<T> {
  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  final _firebaseAuth = FirebaseAuth.instance;
  final bool hasPermission;
  User? get _user => _firebaseAuth.currentUser;

  UserDataRepository<T>? userDataRepository;

  @override
  late final BehaviorSubject<T?> userModelStream = BehaviorSubject<T?>.seeded(null);

  /// [FirebaseAuthDataRepository] constructor.
  FirebaseAuthDataRepository({
    required this.hasPermission,
    this.userDataRepository,
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
    return _user!.delete();
  }

  @override
  Future<T?> reauthenticate(AuthParams params) async {
    UserCredential? userCredential;
    switch (params.authType) {
      case AuthType.google:
        final credential = GoogleAuthProvider.credential(
          accessToken: params.accessToken,
          idToken: params.idToken,
        );
        userCredential = await _user!.reauthenticateWithCredential(credential);
        break;
      case AuthType.facebook:
        final credential = FacebookAuthProvider.credential(params.accessToken!);
        userCredential = await _user!.reauthenticateWithCredential(credential);
        break;
      case AuthType.apple:
        final credential = AppleAuthProvider.credential(params.accessToken!);
        userCredential = await _user!.reauthenticateWithCredential(credential);
        break;
      case AuthType.github:
        final credential = GithubAuthProvider.credential(params.accessToken!);
        userCredential = await _user!.reauthenticateWithCredential(credential);
        break;
      case AuthType.microsoft:
        final credential = MicrosoftAuthProvider.credential(params.accessToken!);
        userCredential = await _user!.reauthenticateWithCredential(credential);
        break;
      case AuthType.x:
        final provider = TwitterAuthProvider();
        await _user!.reauthenticateWithProvider(provider);
        break;

      case AuthType.email:
        final credential = EmailAuthProvider.credential(
          email: params.email!,
          password: params.password!,
        );
        userCredential = await _user!.reauthenticateWithCredential(credential);
        break;
      case AuthType.phone:
      // TODO: Handle reauthenticate with phone.
      case AuthType.anonymous:
      // TODO: Handle reauthenticate with anonymous.
      case AuthType.passwordless:
      // TODO: Handle reauthenticate with passwordless.
      case AuthType.empty:
        break;
    }
    if (userCredential == null) return null;
    final userModel = _userCredentialToUserModel(userCredential, params);
    return userModel;
  }

  @override
  Future<T?> signInAnonymously(AuthParams params) async {
    final userCredential = await _firebaseAuth.signInAnonymously();
    final userModel = _userCredentialToUserModel(userCredential, params);
    return userModel;
  }

  @override
  Future<T?> signInWithApple(AuthParams params) async {
    final appleProvider = AppleAuthProvider()
      ..addScope("email")
      ..addScope("fullName");
    UserCredential userCredential;
    if (kIsWeb) {
      userCredential = await _firebaseAuth.signInWithPopup(appleProvider);
    } else {
      userCredential = await _firebaseAuth.signInWithProvider(appleProvider);
    }

    final userModel = _userCredentialToUserModel(userCredential, params);
    return userModel;
  }

  @override
  Future<T?> signInWithEmail(AuthParams params) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: params.email!,
        password: params.password!,
      );
      final userModel = _userCredentialToUserModel(userCredential, params);
      return userModel;
    } catch (e) {
      AppLogger.print(
        "signIn attempt -> $e",
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }

  @override
  Future<T?> signInWithFacebook(AuthParams params) async {
    try {
      final facebookParams = await AuthRepositoryHelper.signInWithFacebook(params);
      // Create a credential from the access token
      final facebookAuthCredential = FacebookAuthProvider.credential(facebookParams.accessToken!);

      // Once signed in, return the UserCredential
      final userCredential = await _firebaseAuth.signInWithCredential(facebookAuthCredential);
      final userModel = _userCredentialToUserModel(
        userCredential,
        facebookParams,
      );
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
  Future<T?> signInWithGitHub(AuthParams params) async {
    final githubAuthProvider = GithubAuthProvider();
    UserCredential userCredential;
    if (kIsWeb) {
      userCredential = await _firebaseAuth.signInWithPopup(githubAuthProvider);
    } else {
      userCredential = await _firebaseAuth.signInWithProvider(githubAuthProvider);
    }
    final userModel = _userCredentialToUserModel(userCredential, params);
    return userModel;
  }

  @override
  Future<T?> signInWithGoogle(AuthParams params) async {
    try {
      final googleParams = await AuthRepositoryHelper.signInWithGoogle(params);
      UserCredential userCredential;

      // if (kIsWeb) {
      //   GoogleAuthProvider googleProvider = GoogleAuthProvider();
      //   // Once signed in, return the UserCredential
      //   userCredential = await _firebaseAuth.signInWithPopup(googleProvider);
      // } else {
      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleParams.accessToken,
        idToken: googleParams.idToken,
      );
      // Once signed in, return the UserCredential
      userCredential = await _firebaseAuth.signInWithCredential(credential);
      // }
      final userModel = _userCredentialToUserModel(
        userCredential,
        googleParams,
      );
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
  Future<T?> signInWithMicrosoft(AuthParams params) async {
    final microsoftProvider = MicrosoftAuthProvider();
    UserCredential userCredential;
    if (kIsWeb) {
      userCredential = await _firebaseAuth.signInWithPopup(microsoftProvider);
    } else {
      userCredential = await _firebaseAuth.signInWithProvider(microsoftProvider);
    }
    final userModel = _userCredentialToUserModel(userCredential, params);
    return userModel;
  }

  //TODO: add sendEmailLink function
  @override
  Future<T?> signInWithPasswordlessEmail(
    String email,
    String emailLink,
  ) async {
    final isEmailVerified = _firebaseAuth.isSignInWithEmailLink(emailLink);
    if (!isEmailVerified) {
      return null;
    }
    final userCredential = await _firebaseAuth.signInWithEmailLink(
      email: email,
      emailLink: emailLink,
    );
    final userModel = _userCredentialToUserModel(
      userCredential,
      AuthParams.passwordless(email: email, password: emailLink),
    );
    return userModel;
  }

  //TODO: add verifyPhoneNumber function
  @override
  Future<T?> signInWithPhoneNumber(
    String phoneNumber,
    String confirmationCode,
  ) async {
    final confirmationResult = await _firebaseAuth.signInWithPhoneNumber(phoneNumber);

    final userCredential = await confirmationResult.confirm(confirmationCode);

    final userModel = _userCredentialToUserModel(
      userCredential,
      AuthParams.phone(phoneNumber: phoneNumber, password: confirmationCode),
    );
    return userModel;
  }

  @override
  Future<T?> signInWithX(AuthParams params) async {
    final xAuthProvider = TwitterAuthProvider();
    UserCredential userCredential;
    if (kIsWeb) {
      userCredential = await _firebaseAuth.signInWithPopup(xAuthProvider);
    } else {
      userCredential = await _firebaseAuth.signInWithProvider(xAuthProvider);
    }
    final userModel = _userCredentialToUserModel(userCredential, params);
    return userModel;
  }

  @override
  Future<bool> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return true;
    } catch (e) {
      AppLogger.print(
        "signOut attempt -> $e",
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
      return false;
    }
  }

  @override
  Future<T?> signUpWithEmail(String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      await userCredential.user!.sendEmailVerification();
      final userModel = _userCredentialToUserModel(
        userCredential,
        AuthParams.email(email: email, password: password),
      );
      return userModel;
    } on FirebaseAuthException catch (e) {
      AppLogger.print(
        "signUp attempt -> $e",
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.message.toString());
    } catch (e) {
      AppLogger.print(
        "signUp attempt -> $e",
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }

  Future<void> _initStreams() async {
    if (_user != null && userModelStream.value == null) {
      final databaseUser = await userDataRepository?.getUser(_user!.uid);
      if (databaseUser != null) {
        final _currentResponse = convertDataTypeToMap(databaseUser);
        _currentResponse["last_login_at"] = DateTime.now();
        userModelStream.add(convertDataTypeFromMap(_currentResponse));
        await userDataRepository?.updateUser(convertDataTypeFromMap(_currentResponse));
      }
    }
    _firebaseAuth.authStateChanges().listen((event) async {
      if (event?.uid != _user?.uid && userModelStream.value != null) {
        final newUser = await reauthenticate(userModelStream.value!.toAuthParams());
        userModelStream.add(newUser);
      }
      if (event == null && userModelStream.value != null) {
        final _currentResponse = convertDataTypeToMap(userModelStream.value!);
        _currentResponse["last_logout_at"] = DateTime.now();
        _currentResponse["status"] = AuthStatus.unauthenticated;
        userModelStream.add(convertDataTypeFromMap(_currentResponse));
      }
    });
  }

  T _userCredentialToUserModel(
    UserCredential userCredential,
    AuthParams params,
  ) {
    final _baseUser = UserModel(
      id: userCredential.user!.uid,
      email: userCredential.user?.email,
      displayName: userCredential.user?.displayName,
      photoUrl: userCredential.user?.photoURL,
      phoneNumber: userCredential.user?.phoneNumber,
      refreshToken: userCredential.user?.refreshToken,
      accessToken: params.accessToken,
      idToken: params.idToken,
      authType: params.authType,
      status: AuthStatus.authenticated,
      createdAt: params.createdAt ?? DateTime.now(),
      updatedAt: params.updatedAt ?? DateTime.now(),
    );
    return convertDataTypeFromMap(_baseUser.toMap());
  }
}
