// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reactive_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ReactiveFormsModelStore<T> on _ReactiveFormsModelStore<T>, Store {
  late final _$submitPressedAsyncAction =
      AsyncAction('_ReactiveFormsModelStore.submitPressed', context: context);

  @override
  Future<RequestResponse> submitPressed() {
    return _$submitPressedAsyncAction.run(() => super.submitPressed());
  }

  late final _$_ReactiveFormsModelStoreActionController =
      ActionController(name: '_ReactiveFormsModelStore', context: context);

  @override
  FutureOr<T?> prepareValueFromForm() {
    final _$actionInfo = _$_ReactiveFormsModelStoreActionController.startAction(
        name: '_ReactiveFormsModelStore.prepareValueFromForm');
    try {
      return super.prepareValueFromForm();
    } finally {
      _$_ReactiveFormsModelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
