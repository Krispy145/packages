// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ComponentThemeChangerStore<T> on _ComponentThemeChangerStore<T>, Store {
  Computed<Map<String, dynamic>>? _$mergedMapComputed;

  @override
  Map<String, dynamic> get mergedMap => (_$mergedMapComputed ??=
          Computed<Map<String, dynamic>>(() => super.mergedMap,
              name: '_ComponentThemeChangerStore.mergedMap'))
      .value;

  late final _$componentThemeMapAtom = Atom(
      name: '_ComponentThemeChangerStore.componentThemeMap', context: context);

  @override
  ObservableMap<String, dynamic> get componentThemeMap {
    _$componentThemeMapAtom.reportRead();
    return super.componentThemeMap;
  }

  bool _componentThemeMapIsInitialized = false;

  @override
  set componentThemeMap(ObservableMap<String, dynamic> value) {
    _$componentThemeMapAtom.reportWrite(
        value, _componentThemeMapIsInitialized ? super.componentThemeMap : null,
        () {
      super.componentThemeMap = value;
      _componentThemeMapIsInitialized = true;
    });
  }

  late final _$currentMapEntryAtom = Atom(
      name: '_ComponentThemeChangerStore.currentMapEntry', context: context);

  @override
  MapEntry<String, dynamic> get currentMapEntry {
    _$currentMapEntryAtom.reportRead();
    return super.currentMapEntry;
  }

  bool _currentMapEntryIsInitialized = false;

  @override
  set currentMapEntry(MapEntry<String, dynamic> value) {
    _$currentMapEntryAtom.reportWrite(
        value, _currentMapEntryIsInitialized ? super.currentMapEntry : null,
        () {
      super.currentMapEntry = value;
      _currentMapEntryIsInitialized = true;
    });
  }

  late final _$_ComponentThemeChangerStoreActionController =
      ActionController(name: '_ComponentThemeChangerStore', context: context);

  @override
  void setMapEntry(MapEntry<String, dynamic> value) {
    final _$actionInfo = _$_ComponentThemeChangerStoreActionController
        .startAction(name: '_ComponentThemeChangerStore.setMapEntry');
    try {
      return super.setMapEntry(value);
    } finally {
      _$_ComponentThemeChangerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  T setMapEntryInMap() {
    final _$actionInfo = _$_ComponentThemeChangerStoreActionController
        .startAction(name: '_ComponentThemeChangerStore.setMapEntryInMap');
    try {
      return super.setMapEntryInMap();
    } finally {
      _$_ComponentThemeChangerStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
componentThemeMap: ${componentThemeMap},
currentMapEntry: ${currentMapEntry},
mergedMap: ${mergedMap}
    ''';
  }
}
