// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TextTypesStore on TextTypesBaseStore, Store {
  Computed<Map<String, dynamic>>? _$mergedMapComputed;

  @override
  Map<String, dynamic> get mergedMap => (_$mergedMapComputed ??=
          Computed<Map<String, dynamic>>(() => super.mergedMap,
              name: 'TextTypesBaseStore.mergedMap'))
      .value;

  late final _$selectedTextTypeAtom =
      Atom(name: 'TextTypesBaseStore.selectedTextType', context: context);

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

  late final _$TextTypesBaseStoreActionController =
      ActionController(name: 'TextTypesBaseStore', context: context);

  @override
  void setSelectedTextType(Map<String, dynamic> value) {
    final _$actionInfo = _$TextTypesBaseStoreActionController.startAction(
        name: 'TextTypesBaseStore.setSelectedTextType');
    try {
      return super.setSelectedTextType(value);
    } finally {
      _$TextTypesBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  TextTypes? setTextStyleModel(
      String type, String size, String key, dynamic value) {
    final _$actionInfo = _$TextTypesBaseStoreActionController.startAction(
        name: 'TextTypesBaseStore.setTextStyleModel');
    try {
      return super.setTextStyleModel(type, size, key, value);
    } finally {
      _$TextTypesBaseStoreActionController.endAction(_$actionInfo);
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
