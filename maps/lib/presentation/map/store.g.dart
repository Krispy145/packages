// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MapStore on _MapStore, Store {
  Computed<Set<MarkerModel>>? _$markersComputed;

  @override
  Set<MarkerModel> get markers =>
      (_$markersComputed ??= Computed<Set<MarkerModel>>(() => super.markers,
              name: '_MapStore.markers'))
          .value;
  Computed<MapOptions>? _$mapOptionsComputed;

  @override
  MapOptions get mapOptions =>
      (_$mapOptionsComputed ??= Computed<MapOptions>(() => super.mapOptions,
              name: '_MapStore.mapOptions'))
          .value;

  late final _$isLockedAtom =
      Atom(name: '_MapStore.isLocked', context: context);

  @override
  bool get isLocked {
    _$isLockedAtom.reportRead();
    return super.isLocked;
  }

  @override
  set isLocked(bool value) {
    _$isLockedAtom.reportWrite(value, super.isLocked, () {
      super.isLocked = value;
    });
  }

  late final _$isMapReadyAtom =
      Atom(name: '_MapStore.isMapReady', context: context);

  @override
  bool get isMapReady {
    _$isMapReadyAtom.reportRead();
    return super.isMapReady;
  }

  @override
  set isMapReady(bool value) {
    _$isMapReadyAtom.reportWrite(value, super.isMapReady, () {
      super.isMapReady = value;
    });
  }

  late final _$_markersAtom =
      Atom(name: '_MapStore._markers', context: context);

  @override
  ObservableSet<MarkerModel> get _markers {
    _$_markersAtom.reportRead();
    return super._markers;
  }

  @override
  set _markers(ObservableSet<MarkerModel> value) {
    _$_markersAtom.reportWrite(value, super._markers, () {
      super._markers = value;
    });
  }

  late final _$selectedMarkerIdsAtom =
      Atom(name: '_MapStore.selectedMarkerIds', context: context);

  @override
  ObservableList<MarkerModel> get selectedMarkerIds {
    _$selectedMarkerIdsAtom.reportRead();
    return super.selectedMarkerIds;
  }

  @override
  set selectedMarkerIds(ObservableList<MarkerModel> value) {
    _$selectedMarkerIdsAtom.reportWrite(value, super.selectedMarkerIds, () {
      super.selectedMarkerIds = value;
    });
  }

  late final _$selectedMarkerIdAtom =
      Atom(name: '_MapStore.selectedMarkerId', context: context);

  @override
  String? get selectedMarkerId {
    _$selectedMarkerIdAtom.reportRead();
    return super.selectedMarkerId;
  }

  @override
  set selectedMarkerId(String? value) {
    _$selectedMarkerIdAtom.reportWrite(value, super.selectedMarkerId, () {
      super.selectedMarkerId = value;
    });
  }

  late final _$selectMarkerAsyncAction =
      AsyncAction('_MapStore.selectMarker', context: context);

  @override
  Future<void> selectMarker(String markerId, LatLng coordinates) {
    return _$selectMarkerAsyncAction
        .run(() => super.selectMarker(markerId, coordinates));
  }

  late final _$centerMarkerAsyncAction =
      AsyncAction('_MapStore.centerMarker', context: context);

  @override
  Future<void> centerMarker(String markerId, LatLng coordinates) {
    return _$centerMarkerAsyncAction
        .run(() => super.centerMarker(markerId, coordinates));
  }

  late final _$_MapStoreActionController =
      ActionController(name: '_MapStore', context: context);

  @override
  void toggleLocked() {
    final _$actionInfo =
        _$_MapStoreActionController.startAction(name: '_MapStore.toggleLocked');
    try {
      return super.toggleLocked();
    } finally {
      _$_MapStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addMarker(MarkerModel markerModel, {bool clearFirst = false}) {
    final _$actionInfo =
        _$_MapStoreActionController.startAction(name: '_MapStore.addMarker');
    try {
      return super.addMarker(markerModel, clearFirst: clearFirst);
    } finally {
      _$_MapStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addMarkers(List<MarkerModel> newMarkerModels,
      {bool clearFirst = false}) {
    final _$actionInfo =
        _$_MapStoreActionController.startAction(name: '_MapStore.addMarkers');
    try {
      return super.addMarkers(newMarkerModels, clearFirst: clearFirst);
    } finally {
      _$_MapStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unselectMarker() {
    final _$actionInfo = _$_MapStoreActionController.startAction(
        name: '_MapStore.unselectMarker');
    try {
      return super.unselectMarker();
    } finally {
      _$_MapStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLocked: ${isLocked},
isMapReady: ${isMapReady},
selectedMarkerIds: ${selectedMarkerIds},
selectedMarkerId: ${selectedMarkerId},
markers: ${markers},
mapOptions: ${mapOptions}
    ''';
  }
}
