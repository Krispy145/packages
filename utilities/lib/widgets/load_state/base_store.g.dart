// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoadStateStore on LoadStateBaseStore, Store {
  Computed<bool>? _$isInitialComputed;

  @override
  bool get isInitial =>
      (_$isInitialComputed ??= Computed<bool>(() => super.isInitial,
              name: 'LoadStateBaseStore.isInitial'))
          .value;
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: 'LoadStateBaseStore.isLoading'))
          .value;
  Computed<bool>? _$isLoadedComputed;

  @override
  bool get isLoaded =>
      (_$isLoadedComputed ??= Computed<bool>(() => super.isLoaded,
              name: 'LoadStateBaseStore.isLoaded'))
          .value;
  Computed<bool>? _$isEmptyComputed;

  @override
  bool get isEmpty => (_$isEmptyComputed ??= Computed<bool>(() => super.isEmpty,
          name: 'LoadStateBaseStore.isEmpty'))
      .value;
  Computed<bool>? _$isErrorComputed;

  @override
  bool get isError => (_$isErrorComputed ??= Computed<bool>(() => super.isError,
          name: 'LoadStateBaseStore.isError'))
      .value;
  Computed<bool>? _$isIdleComputed;

  @override
  bool get isIdle => (_$isIdleComputed ??=
          Computed<bool>(() => super.isIdle, name: 'LoadStateBaseStore.isIdle'))
      .value;

  late final _$currentStateAtom =
      Atom(name: 'LoadStateBaseStore.currentState', context: context);

  @override
  LoadState get currentState {
    _$currentStateAtom.reportRead();
    return super.currentState;
  }

  @override
  set currentState(LoadState value) {
    _$currentStateAtom.reportWrite(value, super.currentState, () {
      super.currentState = value;
    });
  }

  late final _$LoadStateBaseStoreActionController =
      ActionController(name: 'LoadStateBaseStore', context: context);

  @override
  void setInitial() {
    final _$actionInfo = _$LoadStateBaseStoreActionController.startAction(
        name: 'LoadStateBaseStore.setInitial');
    try {
      return super.setInitial();
    } finally {
      _$LoadStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading() {
    final _$actionInfo = _$LoadStateBaseStoreActionController.startAction(
        name: 'LoadStateBaseStore.setLoading');
    try {
      return super.setLoading();
    } finally {
      _$LoadStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoaded() {
    final _$actionInfo = _$LoadStateBaseStoreActionController.startAction(
        name: 'LoadStateBaseStore.setLoaded');
    try {
      return super.setLoaded();
    } finally {
      _$LoadStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmpty() {
    final _$actionInfo = _$LoadStateBaseStoreActionController.startAction(
        name: 'LoadStateBaseStore.setEmpty');
    try {
      return super.setEmpty();
    } finally {
      _$LoadStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError() {
    final _$actionInfo = _$LoadStateBaseStoreActionController.startAction(
        name: 'LoadStateBaseStore.setError');
    try {
      return super.setError();
    } finally {
      _$LoadStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIdle() {
    final _$actionInfo = _$LoadStateBaseStoreActionController.startAction(
        name: 'LoadStateBaseStore.setIdle');
    try {
      return super.setIdle();
    } finally {
      _$LoadStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentState: ${currentState},
isInitial: ${isInitial},
isLoading: ${isLoading},
isLoaded: ${isLoaded},
isEmpty: ${isEmpty},
isError: ${isError},
isIdle: ${isIdle}
    ''';
  }
}
