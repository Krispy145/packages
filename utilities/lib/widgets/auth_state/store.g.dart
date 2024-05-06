// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStateStore on _AuthStateStore, Store {
  Computed<bool>? _$isAuthenticatedComputed;

  @override
  bool get isAuthenticated =>
      (_$isAuthenticatedComputed ??= Computed<bool>(() => super.isAuthenticated,
              name: '_AuthStateStore.isAuthenticated'))
          .value;
  Computed<bool>? _$isUnauthenticatedComputed;

  @override
  bool get isUnauthenticated => (_$isUnauthenticatedComputed ??= Computed<bool>(
          () => super.isUnauthenticated,
          name: '_AuthStateStore.isUnauthenticated'))
      .value;

  late final _$currentAuthStateAtom =
      Atom(name: '_AuthStateStore.currentAuthState', context: context);

  @override
  AuthState get currentAuthState {
    _$currentAuthStateAtom.reportRead();
    return super.currentAuthState;
  }

  @override
  set currentAuthState(AuthState value) {
    _$currentAuthStateAtom.reportWrite(value, super.currentAuthState, () {
      super.currentAuthState = value;
    });
  }

  late final _$_AuthStateStoreActionController =
      ActionController(name: '_AuthStateStore', context: context);

  @override
  void setAuthenticated() {
    final _$actionInfo = _$_AuthStateStoreActionController.startAction(
        name: '_AuthStateStore.setAuthenticated');
    try {
      return super.setAuthenticated();
    } finally {
      _$_AuthStateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUnauthenticated() {
    final _$actionInfo = _$_AuthStateStoreActionController.startAction(
        name: '_AuthStateStore.setUnauthenticated');
    try {
      return super.setUnauthenticated();
    } finally {
      _$_AuthStateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentAuthState: ${currentAuthState},
isAuthenticated: ${isAuthenticated},
isUnauthenticated: ${isUnauthenticated}
    ''';
  }
}
