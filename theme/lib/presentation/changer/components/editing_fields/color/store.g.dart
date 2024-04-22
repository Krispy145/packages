// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ColorFormFieldStore on _themeColorStringFormFieldStore, Store {
  late final _$colorAtom =
      Atom(name: '_themeColorStringFormFieldStore.color', context: context);

  @override
  InvalidType get color {
    _$colorAtom.reportRead();
    return super.color;
  }

  bool _colorIsInitialized = false;

  @override
  set color(InvalidType value) {
    _$colorAtom.reportWrite(value, _colorIsInitialized ? super.color : null,
        () {
      super.color = value;
      _colorIsInitialized = true;
    });
  }

  late final _$_themeColorStringFormFieldStoreActionController =
      ActionController(
          name: '_themeColorStringFormFieldStore', context: context);

  @override
  void onDone() {
    final _$actionInfo = _$_themeColorStringFormFieldStoreActionController
        .startAction(name: '_themeColorStringFormFieldStore.onDone');
    try {
      return super.onDone();
    } finally {
      _$_themeColorStringFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateColor(
      {double? red, double? green, double? blue, double? opacity}) {
    final _$actionInfo = _$_themeColorStringFormFieldStoreActionController
        .startAction(name: '_themeColorStringFormFieldStore.updateColor');
    try {
      return super
          .updateColor(red: red, green: green, blue: blue, opacity: opacity);
    } finally {
      _$_themeColorStringFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
color: ${color}
    ''';
  }
}
