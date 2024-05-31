// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FormsModelStore<T> on _FormsModelStore<T>, Store {
  late final _$valueAtom =
      Atom(name: '_FormsModelStore.value', context: context);

  @override
  T get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(T value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  late final _$saveValueAsyncAction =
      AsyncAction('_FormsModelStore.saveValue', context: context);

  @override
  Future<RequestResponse> saveValue() {
    return _$saveValueAsyncAction.run(() => super.saveValue());
  }

  late final _$_FormsModelStoreActionController =
      ActionController(name: '_FormsModelStore', context: context);

  @override
  void onValueChanged(T newValue) {
    final _$actionInfo = _$_FormsModelStoreActionController.startAction(
        name: '_FormsModelStore.onValueChanged');
    try {
      return super.onValueChanged(newValue);
    } finally {
      _$_FormsModelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
