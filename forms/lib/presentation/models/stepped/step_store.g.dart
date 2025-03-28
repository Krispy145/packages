// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ReactiveStepFormsModelStore on _ReactiveStepFormsModelStore, Store {
  late final _$formAtom =
      Atom(name: '_ReactiveStepFormsModelStore.form', context: context);

  @override
  FormGroup get form {
    _$formAtom.reportRead();
    return super.form;
  }

  @override
  set form(FormGroup value) {
    _$formAtom.reportWrite(value, super.form, () {
      super.form = value;
    });
  }

  late final _$initializeAsyncAction =
      AsyncAction('_ReactiveStepFormsModelStore.initialize', context: context);

  @override
  Future<void> initialize() {
    return _$initializeAsyncAction.run(() => super.initialize());
  }

  late final _$_ReactiveStepFormsModelStoreActionController =
      ActionController(name: '_ReactiveStepFormsModelStore', context: context);

  @override
  FutureOr<Map<String, dynamic>?> prepareValueFromForm() {
    final _$actionInfo = _$_ReactiveStepFormsModelStoreActionController
        .startAction(name: '_ReactiveStepFormsModelStore.prepareValueFromForm');
    try {
      return super.prepareValueFromForm();
    } finally {
      _$_ReactiveStepFormsModelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
form: ${form}
    ''';
  }
}
