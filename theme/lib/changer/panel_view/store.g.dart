// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ExpandingPanelViewStore on _ExpandingPanelStore, Store {
  late final _$isOpenAtom =
      Atom(name: '_ExpandingPanelStore.isOpen', context: context);

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

  late final _$_ExpandingPanelStoreActionController =
      ActionController(name: '_ExpandingPanelStore', context: context);

  @override
  void toggle() {
    final _$actionInfo = _$_ExpandingPanelStoreActionController.startAction(
        name: '_ExpandingPanelStore.toggle');
    try {
      return super.toggle();
    } finally {
      _$_ExpandingPanelStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isOpen: ${isOpen}
    ''';
  }
}
