// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FormsModelStore<T> on _FormsModelStore<T>, Store {
  late final _$currentModelAtom =
      Atom(name: '_FormsModelStore.currentModel', context: context);

  @override
  T? get currentModel {
    _$currentModelAtom.reportRead();
    return super.currentModel;
  }

  bool _currentModelIsInitialized = false;

  @override
  set currentModel(T? value) {
    _$currentModelAtom.reportWrite(
        value, _currentModelIsInitialized ? super.currentModel : null, () {
      super.currentModel = value;
      _currentModelIsInitialized = true;
    });
  }

  late final _$_FormsModelStoreActionController =
      ActionController(name: '_FormsModelStore', context: context);

  @override
  void saveModel() {
    final _$actionInfo = _$_FormsModelStoreActionController.startAction(
        name: '_FormsModelStore.saveModel');
    try {
      return super.saveModel();
    } finally {
      _$_FormsModelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentModel: ${currentModel}
    ''';
  }
}
