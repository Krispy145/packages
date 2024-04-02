// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStateStore on AuthStateBaseStore, Store {
  Computed<bool>? _$isAuthenticatedComputed;

  @override
  bool get isAuthenticated =>
      (_$isAuthenticatedComputed ??= Computed<bool>(() => super.isAuthenticated,
              name: 'AuthStateBaseStore.isAuthenticated'))
          .value;
  Computed<bool>? _$isUnauthenticatedComputed;

  @override
  bool get isUnauthenticated => (_$isUnauthenticatedComputed ??= Computed<bool>(
          () => super.isUnauthenticated,
          name: 'AuthStateBaseStore.isUnauthenticated'))
      .value;

  late final _$currentStateAtom =
      Atom(name: 'AuthStateBaseStore.currentState', context: context);

  @override
  AuthState get currentState {
    _$currentStateAtom.reportRead();
    return super.currentState;
  }

  @override
  set currentState(AuthState value) {
    _$currentStateAtom.reportWrite(value, super.currentState, () {
      super.currentState = value;
    });
  }

  late final _$AuthStateBaseStoreActionController =
      ActionController(name: 'AuthStateBaseStore', context: context);

  @override
  void setAuthenticated() {
    final _$actionInfo = _$AuthStateBaseStoreActionController.startAction(
        name: 'AuthStateBaseStore.setAuthenticated');
    try {
      return super.setAuthenticated();
    } finally {
      _$AuthStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUnauthenticated() {
    final _$actionInfo = _$AuthStateBaseStoreActionController.startAction(
        name: 'AuthStateBaseStore.setUnauthenticated');
    try {
      return super.setUnauthenticated();
    } finally {
      _$AuthStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentState: ${currentState},
isAuthenticated: ${isAuthenticated},
isUnauthenticated: ${isUnauthenticated}
    ''';
  }
}
