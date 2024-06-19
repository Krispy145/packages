// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoadStateStore on _LoadStateStore, Store {
  Computed<bool>? _$isInitialComputed;

  @override
  bool get isInitial =>
      (_$isInitialComputed ??= Computed<bool>(() => super.isInitial,
              name: '_LoadStateStore.isInitial'))
          .value;
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_LoadStateStore.isLoading'))
          .value;
  Computed<bool>? _$isLoadedComputed;

  @override
  bool get isLoaded =>
      (_$isLoadedComputed ??= Computed<bool>(() => super.isLoaded,
              name: '_LoadStateStore.isLoaded'))
          .value;
  Computed<bool>? _$isNoMoreToLoadComputed;

  @override
  bool get isNoMoreToLoad =>
      (_$isNoMoreToLoadComputed ??= Computed<bool>(() => super.isNoMoreToLoad,
              name: '_LoadStateStore.isNoMoreToLoad'))
          .value;
  Computed<bool>? _$isEmptyComputed;

  @override
  bool get isEmpty => (_$isEmptyComputed ??=
          Computed<bool>(() => super.isEmpty, name: '_LoadStateStore.isEmpty'))
      .value;
  Computed<bool>? _$isErrorComputed;

  @override
  bool get isError => (_$isErrorComputed ??=
          Computed<bool>(() => super.isError, name: '_LoadStateStore.isError'))
      .value;
  Computed<bool>? _$isIdleComputed;

  @override
  bool get isIdle => (_$isIdleComputed ??=
          Computed<bool>(() => super.isIdle, name: '_LoadStateStore.isIdle'))
      .value;

  late final _$currentStateAtom =
      Atom(name: '_LoadStateStore.currentState', context: context);

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

  late final _$hasShownNoMoreToLoadSnackBarAtom = Atom(
      name: '_LoadStateStore.hasShownNoMoreToLoadSnackBar', context: context);

  @override
  bool get hasShownNoMoreToLoadSnackBar {
    _$hasShownNoMoreToLoadSnackBarAtom.reportRead();
    return super.hasShownNoMoreToLoadSnackBar;
  }

  @override
  set hasShownNoMoreToLoadSnackBar(bool value) {
    _$hasShownNoMoreToLoadSnackBarAtom
        .reportWrite(value, super.hasShownNoMoreToLoadSnackBar, () {
      super.hasShownNoMoreToLoadSnackBar = value;
    });
  }

  late final _$_LoadStateStoreActionController =
      ActionController(name: '_LoadStateStore', context: context);

  @override
  void setInitial() {
    final _$actionInfo = _$_LoadStateStoreActionController.startAction(
        name: '_LoadStateStore.setInitial');
    try {
      return super.setInitial();
    } finally {
      _$_LoadStateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoading() {
    final _$actionInfo = _$_LoadStateStoreActionController.startAction(
        name: '_LoadStateStore.setLoading');
    try {
      return super.setLoading();
    } finally {
      _$_LoadStateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setLoaded() {
    final _$actionInfo = _$_LoadStateStoreActionController.startAction(
        name: '_LoadStateStore.setLoaded');
    try {
      return super.setLoaded();
    } finally {
      _$_LoadStateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNoMoreToLoad() {
    final _$actionInfo = _$_LoadStateStoreActionController.startAction(
        name: '_LoadStateStore.setNoMoreToLoad');
    try {
      return super.setNoMoreToLoad();
    } finally {
      _$_LoadStateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNoMoreToLoadSnackBar() {
    final _$actionInfo = _$_LoadStateStoreActionController.startAction(
        name: '_LoadStateStore.setNoMoreToLoadSnackBar');
    try {
      return super.setNoMoreToLoadSnackBar();
    } finally {
      _$_LoadStateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmpty(String? emptyMessage) {
    final _$actionInfo = _$_LoadStateStoreActionController.startAction(
        name: '_LoadStateStore.setEmpty');
    try {
      return super.setEmpty(emptyMessage);
    } finally {
      _$_LoadStateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String? errorMessage) {
    final _$actionInfo = _$_LoadStateStoreActionController.startAction(
        name: '_LoadStateStore.setError');
    try {
      return super.setError(errorMessage);
    } finally {
      _$_LoadStateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIdle() {
    final _$actionInfo = _$_LoadStateStoreActionController.startAction(
        name: '_LoadStateStore.setIdle');
    try {
      return super.setIdle();
    } finally {
      _$_LoadStateStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentState: ${currentState},
hasShownNoMoreToLoadSnackBar: ${hasShownNoMoreToLoadSnackBar},
isInitial: ${isInitial},
isLoading: ${isLoading},
isLoaded: ${isLoaded},
isNoMoreToLoad: ${isNoMoreToLoad},
isEmpty: ${isEmpty},
isError: ${isError},
isIdle: ${isIdle}
    ''';
  }
}
