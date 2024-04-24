// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TextFormFieldStore on _TextFormFieldStore, Store {
  late final _$textControllerAtom =
      Atom(name: '_TextFormFieldStore.textController', context: context);

  @override
  TextEditingController get textController {
    _$textControllerAtom.reportRead();
    return super.textController;
  }

  bool _textControllerIsInitialized = false;

  @override
  set textController(TextEditingController value) {
    _$textControllerAtom.reportWrite(
        value, _textControllerIsInitialized ? super.textController : null, () {
      super.textController = value;
      _textControllerIsInitialized = true;
    });
  }

  @override
  String toString() {
    return '''
textController: ${textController}
    ''';
  }
}
