import 'package:authentication/data/models/auth_params.dart';
import 'package:authentication/data/repositories/helpers/auth_repository.helper.dart';
import 'package:authentication/data/source/api_user.source.dart';
import 'package:authentication/data/source/supabase_user.source.dart';
import 'package:authentication/helpers/exception.dart';
import 'package:authentication/utils/loggers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:rxdart/rxdart.dart';
import 'package:utilities/logger/logger.dart';

import '../models/user_model.dart';
import '../source/firestore_user.source.dart';
import '/data/source/_source.dart';
import '_repository.dart';

/// [FirebaseAuthDataRepository] is a class that defines the basic CRUD operations for the [UserModel] entity.
class FirebaseAuthDataRepository implements AuthenticationDataRepository {
  /// [dataSource] is an instance of [UserDataSource] interface.
  /// It is used to call the different data sources' methods.
  /// currently, there are 3 data sources: [ApiUserDataSource], [FirestoreUserDataSource], [SupabaseUserDataSource].
  final UserDataSource dataSource;

  /// [logToDatabase] is a boolean that determines whether to log the data to the corresponding database or not.
  final bool logToDatabase;

  final _firebaseAuth = FirebaseAuth.instance;
  User? get _user => _firebaseAuth.currentUser;
  UserModel? _currentUserModel;

  @override
  late final BehaviorSubject<UserModel?> currentUserModelSubject;

  /// [FirebaseAuthDataRepository] constructor.
  FirebaseAuthDataRepository({
    required this.logToDatabase,
    UserDataSource? dataSource,
  }) : dataSource = dataSource ?? FirestoreUserDataSource() {
    _initStreams();
  }

  @override
  Future<void> deleteAccount(String userId) async {
    if (logToDatabase) {
      await dataSource.delete(userId);
    }
    return await _user!.delete();
  }

  @override
  Future<UserModel?> reauthenticate(AuthParams params) async {
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
    if (logToDatabase) {
      await dataSource.update(userModel.id, userModel);
    }
    return userModel;
  }

  @override
  Future<UserModel?> signInAnonymously(AuthParams params) async {
    final userCredential = await _firebaseAuth.signInAnonymously();
    final userModel = _userCredentialToUserModel(userCredential, params);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<UserModel?> signInWithApple(AuthParams params) async {
    final appleProvider = AppleAuthProvider()
      ..addScope('email')
      ..addScope('fullName');
    UserCredential userCredential;
    if (kIsWeb) {
      userCredential = await _firebaseAuth.signInWithPopup(appleProvider);
    } else {
      userCredential = await _firebaseAuth.signInWithProvider(appleProvider);
    }

    final userModel = _userCredentialToUserModel(userCredential, params);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<UserModel?> signInWithEmail(AuthParams params) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: params.email!,
        password: params.password!,
      );
      final userModel = _userCredentialToUserModel(userCredential, params);
      if (logToDatabase) await dataSource.update(userModel.id, userModel);
      return userModel;
    } catch (e) {
      AppLogger.print(
        'signIn attempt -> $e',
        [AuthenticationPackageLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }

  @override
  Future<UserModel?> signInWithFacebook(AuthParams params) async {
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
      if (logToDatabase) await dataSource.update(userModel.id, userModel);
      return userModel;
    } catch (e) {
      AppLogger.print(
        'signIn attempt -> ${params.authType}: $e',
        [AuthenticationPackageLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }

  @override
  Future<UserModel?> signInWithGitHub(AuthParams params) async {
    final githubAuthProvider = GithubAuthProvider();
    UserCredential userCredential;
    if (kIsWeb) {
      userCredential = await _firebaseAuth.signInWithPopup(githubAuthProvider);
    } else {
      userCredential = await _firebaseAuth.signInWithProvider(githubAuthProvider);
    }
    final userModel = _userCredentialToUserModel(userCredential, params);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<UserModel?> signInWithGoogle(AuthParams params) async {
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
      if (logToDatabase) await dataSource.update(userModel.id, userModel);
      return userModel;
    } catch (e) {
      AppLogger.print(
        'signIn attempt -> ${params.authType}: $e',
        [AuthenticationPackageLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }

  @override
  Future<UserModel?> signInWithMicrosoft(AuthParams params) async {
    final microsoftProvider = MicrosoftAuthProvider();
    UserCredential userCredential;
    if (kIsWeb) {
      userCredential = await _firebaseAuth.signInWithPopup(microsoftProvider);
    } else {
      userCredential = await _firebaseAuth.signInWithProvider(microsoftProvider);
    }
    final userModel = _userCredentialToUserModel(userCredential, params);
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  //TODO: add sendEmailLink function
  @override
  Future<UserModel?> signInWithPasswordlessEmail(
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
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  //TODO: add verifyPhoneNumber function
  @override
  Future<UserModel?> signInWithPhoneNumber(
    String phoneNumber,
    String confirmationCode,
  ) async {
    final confirmationResult = await _firebaseAuth.signInWithPhoneNumber(phoneNumber);

    final userCredential = await confirmationResult.confirm(confirmationCode);

    final userModel = _userCredentialToUserModel(
      userCredential,
      AuthParams.phone(phoneNumber: phoneNumber, password: confirmationCode),
    );
    if (logToDatabase) await dataSource.update(userModel.id, userModel);
    return userModel;
  }

  @override
  Future<UserModel?> signInWithX(AuthParams params) async {
    final xAuthProvider = TwitterAuthProvider();
    UserCredential userCredential;
    if (kIsWeb) {
      userCredential = await _firebaseAuth.signInWithPopup(xAuthProvider);
    } else {
      userCredential = await _firebaseAuth.signInWithProvider(xAuthProvider);
    }
    final userModel = _userCredentialToUserModel(userCredential, params);
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
    return await _firebaseAuth.signOut();
  }

  @override
  Future<UserModel?> signUpWithEmail(String email, String password) async {
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
      if (logToDatabase) await dataSource.update(userModel.id, userModel);
      return null;
    } on FirebaseAuthException catch (e) {
      AppLogger.print(
        'signUp attempt -> $e',
        [AuthenticationPackageLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.message.toString());
    } catch (e) {
      AppLogger.print(
        'signUp attempt -> $e',
        [AuthenticationPackageLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }

  Future<void> _initStreams() async {
    currentUserModelSubject = BehaviorSubject<UserModel?>.seeded(_currentUserModel);
    if (_user != null && _currentUserModel == null) {
      final databaseUser = await dataSource.get(_user!.uid);
      if (databaseUser != null) {
        _currentUserModel = databaseUser.copyWith(
          lastLoginAt: DateTime.now(),
        );
        dataSource.update(_currentUserModel!.id, _currentUserModel!);
        currentUserModelSubject.add(_currentUserModel);
      }
    }
    _firebaseAuth.authStateChanges().listen((event) async {
      if (event?.uid != _user?.uid && _currentUserModel != null) {
        final newUser = await reauthenticate(_currentUserModel!.toAuthParams());
        _currentUserModel = newUser;
        currentUserModelSubject.add(_currentUserModel);
      }
      if (event == null && _currentUserModel != null) {
        _currentUserModel = _currentUserModel!.copyWith(status: AuthStatus.unauthenticated);
        currentUserModelSubject.add(_currentUserModel);
      }
    });
  }

  UserModel _userCredentialToUserModel(
    UserCredential userCredential,
    AuthParams params,
  ) {
    _currentUserModel = UserModel(
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
    return _currentUserModel!;
  }
}
