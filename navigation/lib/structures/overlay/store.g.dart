// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OverlayShellStructureStore on OverlayShellStructureStoreBase, Store {
  late final _$isOverlayVisibleAtom = Atom(
      name: 'OverlayShellStructureStoreBase.isOverlayVisible',
      context: context);

  @override
  bool get isOverlayVisible {
    _$isOverlayVisibleAtom.reportRead();
    return super.isOverlayVisible;
  }

  @override
  set isOverlayVisible(bool value) {
    _$isOverlayVisibleAtom.reportWrite(value, super.isOverlayVisible, () {
      super.isOverlayVisible = value;
    });
  }

  late final _$OverlayShellStructureStoreBaseActionController =
      ActionController(
          name: 'OverlayShellStructureStoreBase', context: context);

  @override
  void toggleOverlay() {
    final _$actionInfo = _$OverlayShellStructureStoreBaseActionController
        .startAction(name: 'OverlayShellStructureStoreBase.toggleOverlay');
    try {
      return super.toggleOverlay();
    } finally {
      _$OverlayShellStructureStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isOverlayVisible: ${isOverlayVisible}
    ''';
  }
}
