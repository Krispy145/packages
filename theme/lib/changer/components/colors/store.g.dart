// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ColorSchemesStore on _ColorSchemesStore, Store {
  late final _$selectedColorAtom =
      Atom(name: '_ColorSchemesStore.selectedColor', context: context);

  @override
  MapEntry<String, dynamic> get selectedColor {
    _$selectedColorAtom.reportRead();
    return super.selectedColor;
  }

  @override
  set selectedColor(MapEntry<String, dynamic> value) {
    _$selectedColorAtom.reportWrite(value, super.selectedColor, () {
      super.selectedColor = value;
    });
  }

  late final _$_ColorSchemesStoreActionController =
      ActionController(name: '_ColorSchemesStore', context: context);

  @override
  void setSelectedColor(MapEntry<String, dynamic> value) {
    final _$actionInfo = _$_ColorSchemesStoreActionController.startAction(
        name: '_ColorSchemesStore.setSelectedColor');
    try {
      return super.setSelectedColor(value);
    } finally {
      _$_ColorSchemesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  ColorModel setColorModel() {
    final _$actionInfo = _$_ColorSchemesStoreActionController.startAction(
        name: '_ColorSchemesStore.setColorModel');
    try {
      return super.setColorModel();
    } finally {
      _$_ColorSchemesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedColor: ${selectedColor}
    ''';
  }
}
