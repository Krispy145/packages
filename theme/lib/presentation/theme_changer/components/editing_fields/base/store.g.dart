// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$BaseFormFieldStore<T> on _BaseFormFieldStore<T>, Store {
  late final _$valueAtom =
      Atom(name: '_BaseFormFieldStore.value', context: context);

  @override
  T get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  bool _valueIsInitialized = false;

  @override
  set value(T value) {
    _$valueAtom.reportWrite(value, _valueIsInitialized ? super.value : null,
        () {
      super.value = value;
      _valueIsInitialized = true;
    });
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
