// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ExpandingPanelViewStore on ExpandingPanelBaseStore, Store {
  late final _$isOpenAtom =
      Atom(name: 'ExpandingPanelBaseStore.isOpen', context: context);

  @override
  bool get isOpen {
    _$isOpenAtom.reportRead();
    return super.isOpen;
  }

  @override
  set isOpen(bool value) {
    _$isOpenAtom.reportWrite(value, super.isOpen, () {
      super.isOpen = value;
    });
  }

  late final _$ExpandingPanelBaseStoreActionController =
      ActionController(name: 'ExpandingPanelBaseStore', context: context);

  @override
  void toggle() {
    final _$actionInfo = _$ExpandingPanelBaseStoreActionController.startAction(
        name: 'ExpandingPanelBaseStore.toggle');
    try {
      return super.toggle();
    } finally {
      _$ExpandingPanelBaseStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isOpen: ${isOpen}
    ''';
  }
}
