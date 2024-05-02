// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_location_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserLocationStore on _UserLocationStore, Store {
  late final _$isPermissionGrantedAtom =
      Atom(name: '_UserLocationStore.isPermissionGranted', context: context);

  @override
  bool get isPermissionGranted {
    _$isPermissionGrantedAtom.reportRead();
    return super.isPermissionGranted;
  }

  @override
  set isPermissionGranted(bool value) {
    _$isPermissionGrantedAtom.reportWrite(value, super.isPermissionGranted, () {
      super.isPermissionGranted = value;
    });
  }

  late final _$userLocationAtom =
      Atom(name: '_UserLocationStore.userLocation', context: context);

  @override
  Position? get userLocation {
    _$userLocationAtom.reportRead();
    return super.userLocation;
  }

  @override
  set userLocation(Position? value) {
    _$userLocationAtom.reportWrite(value, super.userLocation, () {
      super.userLocation = value;
    });
  }

  late final _$isLocationServiceEnabledAsyncAction = AsyncAction(
      '_UserLocationStore.isLocationServiceEnabled',
      context: context);

  @override
  Future<bool> isLocationServiceEnabled() {
    return _$isLocationServiceEnabledAsyncAction
        .run(() => super.isLocationServiceEnabled());
  }

  late final _$checkPermissionAsyncAction =
      AsyncAction('_UserLocationStore.checkPermission', context: context);

  @override
  Future<void> checkPermission() {
    return _$checkPermissionAsyncAction.run(() => super.checkPermission());
  }

  late final _$requestPermissionAsyncAction =
      AsyncAction('_UserLocationStore.requestPermission', context: context);

  @override
  Future<void> requestPermission() {
    return _$requestPermissionAsyncAction.run(() => super.requestPermission());
  }

  late final _$getUserLocationAsyncAction =
      AsyncAction('_UserLocationStore.getUserLocation', context: context);

  @override
  Future<void> getUserLocation() {
    return _$getUserLocationAsyncAction.run(() => super.getUserLocation());
  }

  late final _$disposeStreamAsyncAction =
      AsyncAction('_UserLocationStore.disposeStream', context: context);

  @override
  Future<void> disposeStream(StreamSubscription<Position> stream) {
    return _$disposeStreamAsyncAction.run(() => super.disposeStream(stream));
  }

  late final _$clearUserLocationAsyncAction =
      AsyncAction('_UserLocationStore.clearUserLocation', context: context);

  @override
  Future<void> clearUserLocation() {
    return _$clearUserLocationAsyncAction.run(() => super.clearUserLocation());
  }

  late final _$clearPermissionAsyncAction =
      AsyncAction('_UserLocationStore.clearPermission', context: context);

  @override
  Future<void> clearPermission() {
    return _$clearPermissionAsyncAction.run(() => super.clearPermission());
  }

  late final _$clearAllAsyncAction =
      AsyncAction('_UserLocationStore.clearAll', context: context);

  @override
  Future<void> clearAll() {
    return _$clearAllAsyncAction.run(() => super.clearAll());
  }

  late final _$_UserLocationStoreActionController =
      ActionController(name: '_UserLocationStore', context: context);

  @override
  StreamSubscription<Position> getUserLocationStream() {
    final _$actionInfo = _$_UserLocationStoreActionController.startAction(
        name: '_UserLocationStore.getUserLocationStream');
    try {
      return super.getUserLocationStream();
    } finally {
      _$_UserLocationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _setLocationSettings() {
    final _$actionInfo = _$_UserLocationStoreActionController.startAction(
        name: '_UserLocationStore._setLocationSettings');
    try {
      return super._setLocationSettings();
    } finally {
      _$_UserLocationStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isPermissionGranted: ${isPermissionGranted},
userLocation: ${userLocation}
    ''';
  }
}
