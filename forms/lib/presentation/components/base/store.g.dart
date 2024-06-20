// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BaseFormFieldStore<T> on _BaseFormFieldStore<T>, Store {
  Computed<bool>? _$isFieldValidComputed;

  @override
  bool get isFieldValid =>
      (_$isFieldValidComputed ??= Computed<bool>(() => super.isFieldValid,
              name: '_BaseFormFieldStore.isFieldValid'))
          .value;
  Computed<bool>? _$isFieldEmptyComputed;

  @override
  bool get isFieldEmpty =>
      (_$isFieldEmptyComputed ??= Computed<bool>(() => super.isFieldEmpty,
              name: '_BaseFormFieldStore.isFieldEmpty'))
          .value;
  Computed<bool>? _$isFieldErrorComputed;

  @override
  bool get isFieldError =>
      (_$isFieldErrorComputed ??= Computed<bool>(() => super.isFieldError,
              name: '_BaseFormFieldStore.isFieldError'))
          .value;

  late final _$valueAtom =
      Atom(name: '_BaseFormFieldStore.value', context: context);

  @override
  T? get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  bool _valueIsInitialized = false;

  @override
  set value(T? value) {
    _$valueAtom.reportWrite(value, _valueIsInitialized ? super.value : null,
        () {
      super.value = value;
      _valueIsInitialized = true;
    });
  }

  late final _$fieldStateAtom =
      Atom(name: '_BaseFormFieldStore.fieldState', context: context);

  @override
  FieldState<T> get fieldState {
    _$fieldStateAtom.reportRead();
    return super.fieldState;
  }

  bool _fieldStateIsInitialized = false;

  @override
  set fieldState(FieldState<T> value) {
    _$fieldStateAtom.reportWrite(
        value, _fieldStateIsInitialized ? super.fieldState : null, () {
      super.fieldState = value;
      _fieldStateIsInitialized = true;
    });
  }

  late final _$_BaseFormFieldStoreActionController =
      ActionController(name: '_BaseFormFieldStore', context: context);

  @override
  void setFieldValid() {
    final _$actionInfo = _$_BaseFormFieldStoreActionController.startAction(
        name: '_BaseFormFieldStore.setFieldValid');
    try {
      return super.setFieldValid();
    } finally {
      _$_BaseFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFieldEmpty() {
    final _$actionInfo = _$_BaseFormFieldStoreActionController.startAction(
        name: '_BaseFormFieldStore.setFieldEmpty');
    try {
      return super.setFieldEmpty();
    } finally {
      _$_BaseFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFieldIncomplete(String incompleteMessage) {
    final _$actionInfo = _$_BaseFormFieldStoreActionController.startAction(
        name: '_BaseFormFieldStore.setFieldIncomplete');
    try {
      return super.setFieldIncomplete(incompleteMessage);
    } finally {
      _$_BaseFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFieldError(String errorMessage) {
    final _$actionInfo = _$_BaseFormFieldStoreActionController.startAction(
        name: '_BaseFormFieldStore.setFieldError');
    try {
      return super.setFieldError(errorMessage);
    } finally {
      _$_BaseFormFieldStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value},
fieldState: ${fieldState},
isFieldValid: ${isFieldValid},
isFieldEmpty: ${isFieldEmpty},
isFieldError: ${isFieldError}
    ''';
  }
}
