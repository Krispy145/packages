// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore<T extends UserModel> on _AuthStore<T>, Store {
  late final _$userModelAtom =
      Atom(name: '_AuthStore.userModel', context: context);

  @override
  UserModel? get userModel {
    _$userModelAtom.reportRead();
    return super.userModel;
  }

  @override
  set userModel(UserModel? value) {
    _$userModelAtom.reportWrite(value, super.userModel, () {
      super.userModel = value;
    });
  }

  late final _$initAsyncAction =
      AsyncAction('_AuthStore.init', context: context);

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  late final _$_handleSilentAsyncAction =
      AsyncAction('_AuthStore._handleSilent', context: context);

  @override
  Future<void> _handleSilent() {
    return _$_handleSilentAsyncAction.run(() => super._handleSilent());
  }

  late final _$_handleAuthenticateThenSilentAsyncAction =
      AsyncAction('_AuthStore._handleAuthenticateThenSilent', context: context);

  @override
  Future<void> _handleAuthenticateThenSilent() {
    return _$_handleAuthenticateThenSilentAsyncAction
        .run(() => super._handleAuthenticateThenSilent());
  }

  late final _$_handleAuthenticateAsyncAction =
      AsyncAction('_AuthStore._handleAuthenticate', context: context);

  @override
  Future<void> _handleAuthenticate() {
    return _$_handleAuthenticateAsyncAction
        .run(() => super._handleAuthenticate());
  }

  late final _$_signInAnonymouslyAsyncAction =
      AsyncAction('_AuthStore._signInAnonymously', context: context);

  @override
  Future<void> _signInAnonymously() {
    return _$_signInAnonymouslyAsyncAction
        .run(() => super._signInAnonymously());
  }

  @override
  String toString() {
    return '''
userModel: ${userModel}
    ''';
  }
}
