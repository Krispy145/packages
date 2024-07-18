// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ReactiveAuthStore<T extends UserModel> on _ReactiveAuthStore<T>, Store {
  late final _$authActionAtom =
      Atom(name: '_ReactiveAuthStore.authAction', context: context);

  @override
  AuthAction get authAction {
    _$authActionAtom.reportRead();
    return super.authAction;
  }

  @override
  set authAction(AuthAction value) {
    _$authActionAtom.reportWrite(value, super.authAction, () {
      super.authAction = value;
    });
  }

  late final _$formAtom =
      Atom(name: '_ReactiveAuthStore.form', context: context);

  @override
  FormGroup get form {
    _$formAtom.reportRead();
    return super.form;
  }

  bool _formIsInitialized = false;

  @override
  set form(FormGroup value) {
    _$formAtom.reportWrite(value, _formIsInitialized ? super.form : null, () {
      super.form = value;
      _formIsInitialized = true;
    });
  }

  late final _$initAsyncAction =
      AsyncAction('_ReactiveAuthStore.init', context: context);

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  late final _$signInAsyncAction =
      AsyncAction('_ReactiveAuthStore.signIn', context: context);

  @override
  Future<T?> signIn(AuthParams params) {
    return _$signInAsyncAction.run(() => super.signIn(params));
  }

  late final _$signUpWithEmailAsyncAction =
      AsyncAction('_ReactiveAuthStore.signUpWithEmail', context: context);

  @override
  Future<T?> signUpWithEmail() {
    return _$signUpWithEmailAsyncAction.run(() => super.signUpWithEmail());
  }

  late final _$_handleSilentAsyncAction =
      AsyncAction('_ReactiveAuthStore._handleSilent', context: context);

  @override
  Future<void> _handleSilent() {
    return _$_handleSilentAsyncAction.run(() => super._handleSilent());
  }

  late final _$_handleAuthenticateThenSilentAsyncAction = AsyncAction(
      '_ReactiveAuthStore._handleAuthenticateThenSilent',
      context: context);

  @override
  Future<void> _handleAuthenticateThenSilent() {
    return _$_handleAuthenticateThenSilentAsyncAction
        .run(() => super._handleAuthenticateThenSilent());
  }

  late final _$_handleAuthenticateAsyncAction =
      AsyncAction('_ReactiveAuthStore._handleAuthenticate', context: context);

  @override
  Future<void> _handleAuthenticate() {
    return _$_handleAuthenticateAsyncAction
        .run(() => super._handleAuthenticate());
  }

  late final _$_signInAnonymouslyAsyncAction =
      AsyncAction('_ReactiveAuthStore._signInAnonymously', context: context);

  @override
  Future<void> _signInAnonymously() {
    return _$_signInAnonymouslyAsyncAction
        .run(() => super._signInAnonymously());
  }

  late final _$_ReactiveAuthStoreActionController =
      ActionController(name: '_ReactiveAuthStore', context: context);

  @override
  void toggleSignIn() {
    final _$actionInfo = _$_ReactiveAuthStoreActionController.startAction(
        name: '_ReactiveAuthStore.toggleSignIn');
    try {
      return super.toggleSignIn();
    } finally {
      _$_ReactiveAuthStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
authAction: ${authAction},
form: ${form}
    ''';
  }
}
