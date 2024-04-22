// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OutlinedBorderFormFieldStore on _OutlinedBorderFormFieldStore, Store {
  Computed<bool>? _$showBorderRadiusFieldComputed;

  @override
  bool get showBorderRadiusField => (_$showBorderRadiusFieldComputed ??=
          Computed<bool>(() => super.showBorderRadiusField,
              name: '_OutlinedBorderFormFieldStore.showBorderRadiusField'))
      .value;
  Computed<bool>? _$showBorderSideFieldComputed;

  @override
  bool get showBorderSideField => (_$showBorderSideFieldComputed ??=
          Computed<bool>(() => super.showBorderSideField,
              name: '_OutlinedBorderFormFieldStore.showBorderSideField'))
      .value;

  late final _$_OutlinedBorderFormFieldStoreActionController =
      ActionController(name: '_OutlinedBorderFormFieldStore', context: context);

  @override
  void onTypeChanged(OutlinedBorderType type) {
    final _$actionInfo = _$_OutlinedBorderFormFieldStoreActionController
        .startAction(name: '_OutlinedBorderFormFieldStore.onTypeChanged');
    try {
      return super.onTypeChanged(type);
    } finally {
      _$_OutlinedBorderFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onBorderSideChanged(BorderSideModel? borderSide) {
    final _$actionInfo = _$_OutlinedBorderFormFieldStoreActionController
        .startAction(name: '_OutlinedBorderFormFieldStore.onBorderSideChanged');
    try {
      return super.onBorderSideChanged(borderSide);
    } finally {
      _$_OutlinedBorderFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onBorderRadiusChanged(BorderRadiusModel? borderRadius) {
    final _$actionInfo =
        _$_OutlinedBorderFormFieldStoreActionController.startAction(
            name: '_OutlinedBorderFormFieldStore.onBorderRadiusChanged');
    try {
      return super.onBorderRadiusChanged(borderRadius);
    } finally {
      _$_OutlinedBorderFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showBorderRadiusField: ${showBorderRadiusField},
showBorderSideField: ${showBorderSideField}
    ''';
  }
}
