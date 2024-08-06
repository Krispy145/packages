// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EdgeInsetsFormFieldStore on _EdgeInsetsFormFieldStore, Store {
  Computed<bool>? _$topEnabledComputed;

  @override
  bool get topEnabled =>
      (_$topEnabledComputed ??= Computed<bool>(() => super.topEnabled,
              name: '_EdgeInsetsFormFieldStore.topEnabled'))
          .value;
  Computed<bool>? _$bottomEnabledComputed;

  @override
  bool get bottomEnabled =>
      (_$bottomEnabledComputed ??= Computed<bool>(() => super.bottomEnabled,
              name: '_EdgeInsetsFormFieldStore.bottomEnabled'))
          .value;
  Computed<bool>? _$leftEnabledComputed;

  @override
  bool get leftEnabled =>
      (_$leftEnabledComputed ??= Computed<bool>(() => super.leftEnabled,
              name: '_EdgeInsetsFormFieldStore.leftEnabled'))
          .value;
  Computed<bool>? _$rightEnabledComputed;

  @override
  bool get rightEnabled =>
      (_$rightEnabledComputed ??= Computed<bool>(() => super.rightEnabled,
              name: '_EdgeInsetsFormFieldStore.rightEnabled'))
          .value;

  late final _$typeAtom =
      Atom(name: '_EdgeInsetsFormFieldStore.type', context: context);

  @override
  EdgeInsetsTypes get type {
    _$typeAtom.reportRead();
    return super.type;
  }

  @override
  set type(EdgeInsetsTypes value) {
    _$typeAtom.reportWrite(value, super.type, () {
      super.type = value;
    });
  }

  late final _$_EdgeInsetsFormFieldStoreActionController =
      ActionController(name: '_EdgeInsetsFormFieldStore', context: context);

  @override
  void setType(EdgeInsetsTypes newType) {
    final _$actionInfo = _$_EdgeInsetsFormFieldStoreActionController
        .startAction(name: '_EdgeInsetsFormFieldStore.setType');
    try {
      return super.setType(newType);
    } finally {
      _$_EdgeInsetsFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onTopFieldChanged(double? topValue) {
    final _$actionInfo = _$_EdgeInsetsFormFieldStoreActionController
        .startAction(name: '_EdgeInsetsFormFieldStore.onTopFieldChanged');
    try {
      return super.onTopFieldChanged(topValue);
    } finally {
      _$_EdgeInsetsFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onLeftFieldChanged(double? leftValue) {
    final _$actionInfo = _$_EdgeInsetsFormFieldStoreActionController
        .startAction(name: '_EdgeInsetsFormFieldStore.onLeftFieldChanged');
    try {
      return super.onLeftFieldChanged(leftValue);
    } finally {
      _$_EdgeInsetsFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onRightFieldChanged(double? rightValue) {
    final _$actionInfo = _$_EdgeInsetsFormFieldStoreActionController
        .startAction(name: '_EdgeInsetsFormFieldStore.onRightFieldChanged');
    try {
      return super.onRightFieldChanged(rightValue);
    } finally {
      _$_EdgeInsetsFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onBottomFieldChanged(double? bottomValue) {
    final _$actionInfo = _$_EdgeInsetsFormFieldStoreActionController
        .startAction(name: '_EdgeInsetsFormFieldStore.onBottomFieldChanged');
    try {
      return super.onBottomFieldChanged(bottomValue);
    } finally {
      _$_EdgeInsetsFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
type: ${type},
topEnabled: ${topEnabled},
bottomEnabled: ${bottomEnabled},
leftEnabled: ${leftEnabled},
rightEnabled: ${rightEnabled}
    ''';
  }
}
