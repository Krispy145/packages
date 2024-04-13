// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MapEditorStore on _MapEditorStore, Store {
  late final _$mapDataAtom =
      Atom(name: '_MapEditorStore.mapData', context: context);

  @override
  ObservableMap<String, dynamic> get mapData {
    _$mapDataAtom.reportRead();
    return super.mapData;
  }

  bool _mapDataIsInitialized = false;

  @override
  set mapData(ObservableMap<String, dynamic> value) {
    _$mapDataAtom
        .reportWrite(value, _mapDataIsInitialized ? super.mapData : null, () {
      super.mapData = value;
      _mapDataIsInitialized = true;
    });
  }

  late final _$_MapEditorStoreActionController =
      ActionController(name: '_MapEditorStore', context: context);

  @override
  void updateValue(List<String> keys, dynamic value) {
    final _$actionInfo = _$_MapEditorStoreActionController.startAction(
        name: '_MapEditorStore.updateValue');
    try {
      return super.updateValue(keys, value);
    } finally {
      _$_MapEditorStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mapData: ${mapData}
    ''';
  }
}
