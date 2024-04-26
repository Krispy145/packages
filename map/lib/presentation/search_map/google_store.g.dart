// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GoogleSearchMapStore on _GoogleSearchMapStore, Store {
  late final _$googlePlacesAtom =
      Atom(name: '_GoogleSearchMapStore.googlePlaces', context: context);

  @override
  List<GooglePlace?> get googlePlaces {
    _$googlePlacesAtom.reportRead();
    return super.googlePlaces;
  }

  @override
  set googlePlaces(List<GooglePlace?> value) {
    _$googlePlacesAtom.reportWrite(value, super.googlePlaces, () {
      super.googlePlaces = value;
    });
  }

  late final _$currentGooglePlaceAtom =
      Atom(name: '_GoogleSearchMapStore.currentGooglePlace', context: context);

  @override
  GooglePlace? get currentGooglePlace {
    _$currentGooglePlaceAtom.reportRead();
    return super.currentGooglePlace;
  }

  @override
  set currentGooglePlace(GooglePlace? value) {
    _$currentGooglePlaceAtom.reportWrite(value, super.currentGooglePlace, () {
      super.currentGooglePlace = value;
    });
  }

  late final _$mapCenterAtom =
      Atom(name: '_GoogleSearchMapStore.mapCenter', context: context);

  @override
  LatLng? get mapCenter {
    _$mapCenterAtom.reportRead();
    return super.mapCenter;
  }

  @override
  set mapCenter(LatLng? value) {
    _$mapCenterAtom.reportWrite(value, super.mapCenter, () {
      super.mapCenter = value;
    });
  }

  late final _$searchMapAsyncAction =
      AsyncAction('_GoogleSearchMapStore.searchMap', context: context);

  @override
  Future<List<GooglePlace>> searchMap(String query) {
    return _$searchMapAsyncAction.run(() => super.searchMap(query));
  }

  late final _$_loadMapAsyncAction =
      AsyncAction('_GoogleSearchMapStore._loadMap', context: context);

  @override
  Future<void> _loadMap() {
    return _$_loadMapAsyncAction.run(() => super._loadMap());
  }

  late final _$_GoogleSearchMapStoreActionController =
      ActionController(name: '_GoogleSearchMapStore', context: context);

  @override
  void setCoordinates(GooglePlace? googlePlace) {
    final _$actionInfo = _$_GoogleSearchMapStoreActionController.startAction(
        name: '_GoogleSearchMapStore.setCoordinates');
    try {
      return super.setCoordinates(googlePlace);
    } finally {
      _$_GoogleSearchMapStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onMapPositionChanged(MapPosition position, bool changed) {
    final _$actionInfo = _$_GoogleSearchMapStoreActionController.startAction(
        name: '_GoogleSearchMapStore.onMapPositionChanged');
    try {
      return super.onMapPositionChanged(position, changed);
    } finally {
      _$_GoogleSearchMapStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCenterMarker({MarkerModel? marker}) {
    final _$actionInfo = _$_GoogleSearchMapStoreActionController.startAction(
        name: '_GoogleSearchMapStore.setCenterMarker');
    try {
      return super.setCenterMarker(marker: marker);
    } finally {
      _$_GoogleSearchMapStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
googlePlaces: ${googlePlaces},
currentGooglePlace: ${currentGooglePlace},
mapCenter: ${mapCenter}
    ''';
  }
}
