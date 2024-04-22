// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MapStore on MapBaseStore, Store {
  late final _$markersAtom =
      Atom(name: 'MapBaseStore.markers', context: context);

  @override
  ObservableSet<MarkerModel> get markers {
    _$markersAtom.reportRead();
    return super.markers;
  }

  @override
  set markers(ObservableSet<MarkerModel> value) {
    _$markersAtom.reportWrite(value, super.markers, () {
      super.markers = value;
    });
  }

  late final _$selectedMarkerIdsAtom =
      Atom(name: 'MapBaseStore.selectedMarkerIds', context: context);

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
      Atom(name: 'MapBaseStore.selectedMarkerId', context: context);

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
      AsyncAction('MapBaseStore.selectMarker', context: context);

  @override
  Future<void> selectMarker(String markerId, LatLng coordinates) {
    return _$selectMarkerAsyncAction
        .run(() => super.selectMarker(markerId, coordinates));
  }

  late final _$centerMarkerAsyncAction =
      AsyncAction('MapBaseStore.centerMarker', context: context);

  @override
  Future<void> centerMarker(String markerId, LatLng coordinates) {
    return _$centerMarkerAsyncAction
        .run(() => super.centerMarker(markerId, coordinates));
  }

  late final _$MapBaseStoreActionController =
      ActionController(name: 'MapBaseStore', context: context);

  @override
  void addMarkers(List<MarkerModel> newMarkerModels) {
    final _$actionInfo = _$MapBaseStoreActionController.startAction(
        name: 'MapBaseStore.addMarkers');
    try {
      return super.addMarkers(newMarkerModels);
    } finally {
      _$MapBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addMarker(MarkerModel markerModel) {
    final _$actionInfo = _$MapBaseStoreActionController.startAction(
        name: 'MapBaseStore.addMarker');
    try {
      return super.addMarker(markerModel);
    } finally {
      _$MapBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void unselectMarker() {
    final _$actionInfo = _$MapBaseStoreActionController.startAction(
        name: 'MapBaseStore.unselectMarker');
    try {
      return super.unselectMarker();
    } finally {
      _$MapBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
markers: ${markers},
selectedMarkerIds: ${selectedMarkerIds},
selectedMarkerId: ${selectedMarkerId}
    ''';
  }
}
