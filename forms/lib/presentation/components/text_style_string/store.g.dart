// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TextStyleStringFormFieldStore
    on _TextStyleStringStringFormFieldStore, Store {
  late final _$colorAtom = Atom(
      name: '_TextStyleStringStringFormFieldStore.color', context: context);

  @override
  String? get color {
    _$colorAtom.reportRead();
    return super.color;
  }

  @override
  set color(String? value) {
    _$colorAtom.reportWrite(value, super.color, () {
      super.color = value;
    });
  }

  late final _$_TextStyleStringStringFormFieldStoreActionController =
      ActionController(
          name: '_TextStyleStringStringFormFieldStore', context: context);

  @override
  void updateTextStyle(String firstPart, String secondPart) {
    final _$actionInfo =
        _$_TextStyleStringStringFormFieldStoreActionController.startAction(
            name: '_TextStyleStringStringFormFieldStore.updateTextStyle');
    try {
      return super.updateTextStyle(firstPart, secondPart);
    } finally {
      _$_TextStyleStringStringFormFieldStoreActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
color: ${color}
    ''';
  }
}
