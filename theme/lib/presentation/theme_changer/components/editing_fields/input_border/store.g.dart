// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$InputBorderFormFieldStore on _InputBorderFormFieldStore, Store {
  Computed<bool>? _$showBorderRadiusFieldComputed;

  @override
  bool get showBorderRadiusField => (_$showBorderRadiusFieldComputed ??=
          Computed<bool>(() => super.showBorderRadiusField,
              name: '_InputBorderFormFieldStore.showBorderRadiusField'))
      .value;
  Computed<bool>? _$showBorderSideFieldComputed;

  @override
  bool get showBorderSideField => (_$showBorderSideFieldComputed ??=
          Computed<bool>(() => super.showBorderSideField,
              name: '_InputBorderFormFieldStore.showBorderSideField'))
      .value;
  Computed<bool>? _$showGapPaddingFieldComputed;

  @override
  bool get showGapPaddingField => (_$showGapPaddingFieldComputed ??=
          Computed<bool>(() => super.showGapPaddingField,
              name: '_InputBorderFormFieldStore.showGapPaddingField'))
      .value;

  late final _$_InputBorderFormFieldStoreActionController =
      ActionController(name: '_InputBorderFormFieldStore', context: context);

  @override
  void onTypeChanged(InputBorderType newType) {
    final _$actionInfo = _$_InputBorderFormFieldStoreActionController
        .startAction(name: '_InputBorderFormFieldStore.onTypeChanged');
    try {
      return super.onTypeChanged(newType);
    } finally {
      _$_InputBorderFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onBorderSideChanged(BorderSideModel? borderSide) {
    final _$actionInfo = _$_InputBorderFormFieldStoreActionController
        .startAction(name: '_InputBorderFormFieldStore.onBorderSideChanged');
    try {
      return super.onBorderSideChanged(borderSide);
    } finally {
      _$_InputBorderFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onBorderRadiusChanged(BorderRadiusModel? borderRadius) {
    final _$actionInfo = _$_InputBorderFormFieldStoreActionController
        .startAction(name: '_InputBorderFormFieldStore.onBorderRadiusChanged');
    try {
      return super.onBorderRadiusChanged(borderRadius);
    } finally {
      _$_InputBorderFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onGapPaddingChanged(double? gapPadding) {
    final _$actionInfo = _$_InputBorderFormFieldStoreActionController
        .startAction(name: '_InputBorderFormFieldStore.onGapPaddingChanged');
    try {
      return super.onGapPaddingChanged(gapPadding);
    } finally {
      _$_InputBorderFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showBorderRadiusField: ${showBorderRadiusField},
showBorderSideField: ${showBorderSideField},
showGapPaddingField: ${showGapPaddingField}
    ''';
  }
}
