// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FormsMapStore on _FormsMapStore, Store {
  late final _$valueAtom = Atom(name: '_FormsMapStore.value', context: context);

  @override
  ObservableMap<String, dynamic> get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(ObservableMap<String, dynamic> value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$_FormsMapStoreActionController =
      ActionController(name: '_FormsMapStore', context: context);

  @override
  void updateValue(List<String> keys, dynamic fieldValue) {
    final _$actionInfo = _$_FormsMapStoreActionController.startAction(
        name: '_FormsMapStore.updateValue');
    try {
      return super.updateValue(keys, fieldValue);
    } finally {
      _$_FormsMapStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void saveValue() {
    final _$actionInfo = _$_FormsMapStoreActionController.startAction(
        name: '_FormsMapStore.saveValue');
    try {
      return super.saveValue();
    } finally {
      _$_FormsMapStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
