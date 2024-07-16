// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EditLocationMapStore on _EditLocationMapStore, Store {
  late final _$mapCenterAtom =
      Atom(name: '_EditLocationMapStore.mapCenter', context: context);

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

  late final _$isEditingAtom =
      Atom(name: '_EditLocationMapStore.isEditing', context: context);

  @override
  bool get isEditing {
    _$isEditingAtom.reportRead();
    return super.isEditing;
  }

  @override
  set isEditing(bool value) {
    _$isEditingAtom.reportWrite(value, super.isEditing, () {
      super.isEditing = value;
    });
  }

  late final _$_loadMapAsyncAction =
      AsyncAction('_EditLocationMapStore._loadMap', context: context);

  @override
  Future<void> _loadMap() {
    return _$_loadMapAsyncAction.run(() => super._loadMap());
  }

  late final _$_EditLocationMapStoreActionController =
      ActionController(name: '_EditLocationMapStore', context: context);

  @override
  void toggleEditing() {
    final _$actionInfo = _$_EditLocationMapStoreActionController.startAction(
        name: '_EditLocationMapStore.toggleEditing');
    try {
      return super.toggleEditing();
    } finally {
      _$_EditLocationMapStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onMapPositionChanged(MapPosition position, bool changed) {
    final _$actionInfo = _$_EditLocationMapStoreActionController.startAction(
        name: '_EditLocationMapStore.onMapPositionChanged');
    try {
      return super.onMapPositionChanged(position, changed);
    } finally {
      _$_EditLocationMapStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCenterMarker({LatLng? center}) {
    final _$actionInfo = _$_EditLocationMapStoreActionController.startAction(
        name: '_EditLocationMapStore.setCenterMarker');
    try {
      return super.setCenterMarker(center: center);
    } finally {
      _$_EditLocationMapStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mapCenter: ${mapCenter},
isEditing: ${isEditing}
    ''';
  }
}
