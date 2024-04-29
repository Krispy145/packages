// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mapbox_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MapBoxSearchMapStore on _MapBoxSearchMapStore, Store {
  late final _$suggestionsAtom =
      Atom(name: '_MapBoxSearchMapStore.suggestions', context: context);

  @override
  List<Suggestion>? get suggestions {
    _$suggestionsAtom.reportRead();
    return super.suggestions;
  }

  @override
  set suggestions(List<Suggestion>? value) {
    _$suggestionsAtom.reportWrite(value, super.suggestions, () {
      super.suggestions = value;
    });
  }

  late final _$currentSuggestionAtom =
      Atom(name: '_MapBoxSearchMapStore.currentSuggestion', context: context);

  @override
  Suggestion? get currentSuggestion {
    _$currentSuggestionAtom.reportRead();
    return super.currentSuggestion;
  }

  @override
  set currentSuggestion(Suggestion? value) {
    _$currentSuggestionAtom.reportWrite(value, super.currentSuggestion, () {
      super.currentSuggestion = value;
    });
  }

  late final _$currentFeatureAtom =
      Atom(name: '_MapBoxSearchMapStore.currentFeature', context: context);

  @override
  Feature? get currentFeature {
    _$currentFeatureAtom.reportRead();
    return super.currentFeature;
  }

  @override
  set currentFeature(Feature? value) {
    _$currentFeatureAtom.reportWrite(value, super.currentFeature, () {
      super.currentFeature = value;
    });
  }

  late final _$mapCenterAtom =
      Atom(name: '_MapBoxSearchMapStore.mapCenter', context: context);

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
      AsyncAction('_MapBoxSearchMapStore.searchMap', context: context);

  @override
  Future<List<Suggestion>> searchMap(String query) {
    return _$searchMapAsyncAction.run(() => super.searchMap(query));
  }

  late final _$setCoordinatesAsyncAction =
      AsyncAction('_MapBoxSearchMapStore.setCoordinates', context: context);

  @override
  Future<void> setCoordinates(Suggestion suggestion) {
    return _$setCoordinatesAsyncAction
        .run(() => super.setCoordinates(suggestion));
  }

  late final _$onMapReadyAsyncAction =
      AsyncAction('_MapBoxSearchMapStore.onMapReady', context: context);

  @override
  Future<void> onMapReady() {
    return _$onMapReadyAsyncAction.run(() => super.onMapReady());
  }

  late final _$_loadMapAsyncAction =
      AsyncAction('_MapBoxSearchMapStore._loadMap', context: context);

  @override
  Future<void> _loadMap() {
    return _$_loadMapAsyncAction.run(() => super._loadMap());
  }

  late final _$_MapBoxSearchMapStoreActionController =
      ActionController(name: '_MapBoxSearchMapStore', context: context);

  @override
  void onMapPositionChanged(MapPosition position, bool changed) {
    final _$actionInfo = _$_MapBoxSearchMapStoreActionController.startAction(
        name: '_MapBoxSearchMapStore.onMapPositionChanged');
    try {
      return super.onMapPositionChanged(position, changed);
    } finally {
      _$_MapBoxSearchMapStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCenterMarker({LatLng? coordinates}) {
    final _$actionInfo = _$_MapBoxSearchMapStoreActionController.startAction(
        name: '_MapBoxSearchMapStore.setCenterMarker');
    try {
      return super.setCenterMarker(coordinates: coordinates);
    } finally {
      _$_MapBoxSearchMapStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
suggestions: ${suggestions},
currentSuggestion: ${currentSuggestion},
currentFeature: ${currentFeature},
mapCenter: ${mapCenter}
    ''';
  }
}
