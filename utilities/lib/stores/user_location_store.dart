// ignore_for_file: library_private_types_in_public_api

import "dart:async";

import "package:flutter/foundation.dart";
import "package:geolocator/geolocator.dart";
import "package:mobx/mobx.dart";

part "user_location_store.g.dart";

/// [UserLocationStore] is a class that uses [_UserLocationStore] to manage state of the user location feature.
/// It stores the user location and the permission status.
/// It is a store for requesting permission to access user location and getting the user location.
/// Android and iOS settings can be passed to the store.
/// Android default settings are:
/// ```
/// AndroidSettings({
///     forceLocationManager = false,
///     accuracy = LocationAccuracy.best,
///     distanceFilter = 0,
///     intervalDuration,
///     timeLimit,
///     foregroundNotificationConfig,
///     useMSLAltitude = false,
///    })```

/// iOS default settings are:
/// ```
/// AppleSettings({
///    pauseLocationUpdatesAutomatically = false,
///    activityType = ActivityType.other,
///    accuracy = LocationAccuracy.best,
///    distanceFilter = 0,
///    timeLimit,
///    showBackgroundLocationIndicator = false,
///    allowBackgroundLocationUpdates = true,
///   }),```
///
/// The default settings are:
/// ```
/// const LocationSettings(
///    distanceFilter: 50,
///   ),```
class UserLocationStore = _UserLocationStore with _$UserLocationStore;

abstract class _UserLocationStore with Store {
  final LocationSettings userLocationSettings;
  final AndroidSettings? androidSettings;
  final AppleSettings? appleSettings;

  _UserLocationStore({
    this.androidSettings,
    this.appleSettings,
    this.userLocationSettings = const LocationSettings(distanceFilter: 50),
  }) {
    _setLocationSettings();
  }

  late final LocationSettings _locationSettings;

  @observable
  bool isPermissionGranted = false;

  @observable
  Position? userLocation;

  @action
  Future<bool> isLocationServiceEnabled() async {
    return Geolocator.isLocationServiceEnabled();
  }

  @action
  Future<void> checkPermission() async {
    final permission = await Geolocator.checkPermission();
    isPermissionGranted = permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  @action
  Future<void> requestPermission() async {
    if (isPermissionGranted) return;
    final permission = await Geolocator.requestPermission();
    isPermissionGranted = permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  @action
  Future<void> getUserLocation() async {
    userLocation = await Geolocator.getCurrentPosition(
      desiredAccuracy: _locationSettings.accuracy,
    );
  }

  @action
  StreamSubscription<Position> getUserLocationStream() {
    return Geolocator.getPositionStream(
      locationSettings: _locationSettings,
    ).listen((position) {
      userLocation = position;
    });
  }

  @action
  Future<void> disposeStream(StreamSubscription<Position> stream) async {
    await stream.cancel();
  }

  @action
  Future<void> clearUserLocation() async {
    userLocation = null;
  }

  @action
  Future<void> clearPermission() async {
    isPermissionGranted = false;
  }

  @action
  Future<void> clearAll() async {
    userLocation = null;
    isPermissionGranted = false;
  }

  @action
  void _setLocationSettings() {
    if (defaultTargetPlatform == TargetPlatform.android) {
      _locationSettings = androidSettings ?? AndroidSettings();
    } else if (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.macOS) {
      _locationSettings = appleSettings ?? AppleSettings();
    } else {
      _locationSettings = userLocationSettings;
    }
  }
}
