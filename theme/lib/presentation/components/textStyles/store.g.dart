// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TextTypesStore on _TextTypesStore, Store {
  Computed<Map<String, dynamic>>? _$mergedMapComputed;

  @override
  Map<String, dynamic> get mergedMap => (_$mergedMapComputed ??=
          Computed<Map<String, dynamic>>(() => super.mergedMap,
              name: '_TextTypesStore.mergedMap'))
      .value;

  late final _$selectedTextTypeAtom =
      Atom(name: '_TextTypesStore.selectedTextType', context: context);

  @override
  Map<String, dynamic>? get selectedTextType {
    _$selectedTextTypeAtom.reportRead();
    return super.selectedTextType;
  }

  @override
  set selectedTextType(Map<String, dynamic>? value) {
    _$selectedTextTypeAtom.reportWrite(value, super.selectedTextType, () {
      super.selectedTextType = value;
    });
  }

  late final _$_TextTypesStoreActionController =
      ActionController(name: '_TextTypesStore', context: context);

  @override
  void setSelectedTextType(Map<String, dynamic> value) {
    final _$actionInfo = _$_TextTypesStoreActionController.startAction(
        name: '_TextTypesStore.setSelectedTextType');
    try {
      return super.setSelectedTextType(value);
    } finally {
      _$_TextTypesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  InvalidType setTextStyleModel(
      String type, String size, String key, dynamic value) {
    final _$actionInfo = _$_TextTypesStoreActionController.startAction(
        name: '_TextTypesStore.setTextStyleModel');
    try {
      return super.setTextStyleModel(type, size, key, value);
    } finally {
      _$_TextTypesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedTextType: ${selectedTextType},
mergedMap: ${mergedMap}
    ''';
  }
}
