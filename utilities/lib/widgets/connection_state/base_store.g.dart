// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConnectionStateStore on ConnectionStateBaseStore, Store {
  Computed<bool>? _$isOfflineComputed;

  @override
  bool get isOffline =>
      (_$isOfflineComputed ??= Computed<bool>(() => super.isOffline,
              name: 'ConnectionStateBaseStore.isOffline'))
          .value;
  Computed<bool>? _$isOnlineComputed;

  @override
  bool get isOnline =>
      (_$isOnlineComputed ??= Computed<bool>(() => super.isOnline,
              name: 'ConnectionStateBaseStore.isOnline'))
          .value;
  Computed<bool>? _$isSyncingComputed;

  @override
  bool get isSyncing =>
      (_$isSyncingComputed ??= Computed<bool>(() => super.isSyncing,
              name: 'ConnectionStateBaseStore.isSyncing'))
          .value;
  Computed<bool>? _$isPausedComputed;

  @override
  bool get isPaused =>
      (_$isPausedComputed ??= Computed<bool>(() => super.isPaused,
              name: 'ConnectionStateBaseStore.isPaused'))
          .value;
  Computed<bool>? _$isCancelledComputed;

  @override
  bool get isCancelled =>
      (_$isCancelledComputed ??= Computed<bool>(() => super.isCancelled,
              name: 'ConnectionStateBaseStore.isCancelled'))
          .value;

  late final _$currentStateAtom =
      Atom(name: 'ConnectionStateBaseStore.currentState', context: context);

  @override
  ConnectionStoreState get currentState {
    _$currentStateAtom.reportRead();
    return super.currentState;
  }

  @override
  set currentState(ConnectionStoreState value) {
    _$currentStateAtom.reportWrite(value, super.currentState, () {
      super.currentState = value;
    });
  }

  late final _$ConnectionStateBaseStoreActionController =
      ActionController(name: 'ConnectionStateBaseStore', context: context);

  @override
  void setOffline() {
    final _$actionInfo = _$ConnectionStateBaseStoreActionController.startAction(
        name: 'ConnectionStateBaseStore.setOffline');
    try {
      return super.setOffline();
    } finally {
      _$ConnectionStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setOnline() {
    final _$actionInfo = _$ConnectionStateBaseStoreActionController.startAction(
        name: 'ConnectionStateBaseStore.setOnline');
    try {
      return super.setOnline();
    } finally {
      _$ConnectionStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSyncing() {
    final _$actionInfo = _$ConnectionStateBaseStoreActionController.startAction(
        name: 'ConnectionStateBaseStore.setSyncing');
    try {
      return super.setSyncing();
    } finally {
      _$ConnectionStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPaused() {
    final _$actionInfo = _$ConnectionStateBaseStoreActionController.startAction(
        name: 'ConnectionStateBaseStore.setPaused');
    try {
      return super.setPaused();
    } finally {
      _$ConnectionStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCancelled() {
    final _$actionInfo = _$ConnectionStateBaseStoreActionController.startAction(
        name: 'ConnectionStateBaseStore.setCancelled');
    try {
      return super.setCancelled();
    } finally {
      _$ConnectionStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  T handleConnectionSource<T>({required T source, T? offlineBackup}) {
    final _$actionInfo = _$ConnectionStateBaseStoreActionController.startAction(
        name: 'ConnectionStateBaseStore.handleConnectionSource<T>');
    try {
      return super.handleConnectionSource<T>(
          source: source, offlineBackup: offlineBackup);
    } finally {
      _$ConnectionStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _listenOnConnectionStatus() {
    final _$actionInfo = _$ConnectionStateBaseStoreActionController.startAction(
        name: 'ConnectionStateBaseStore._listenOnConnectionStatus');
    try {
      return super._listenOnConnectionStatus();
    } finally {
      _$ConnectionStateBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentState: ${currentState},
isOffline: ${isOffline},
isOnline: ${isOnline},
isSyncing: ${isSyncing},
isPaused: ${isPaused},
isCancelled: ${isCancelled}
    ''';
  }
}
