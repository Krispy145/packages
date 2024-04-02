// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MapShellStructureStore on MapShellStructureStoreBase, Store {
  late final _$isMapOverlayVisibleAtom = Atom(
      name: 'MapShellStructureStoreBase.isMapOverlayVisible', context: context);

  @override
  bool get isMapOverlayVisible {
    _$isMapOverlayVisibleAtom.reportRead();
    return super.isMapOverlayVisible;
  }

  @override
  set isMapOverlayVisible(bool value) {
    _$isMapOverlayVisibleAtom.reportWrite(value, super.isMapOverlayVisible, () {
      super.isMapOverlayVisible = value;
    });
  }

  late final _$MapShellStructureStoreBaseActionController =
      ActionController(name: 'MapShellStructureStoreBase', context: context);

  @override
  void toggleOverlay() {
    final _$actionInfo = _$MapShellStructureStoreBaseActionController
        .startAction(name: 'MapShellStructureStoreBase.toggleOverlay');
    try {
      return super.toggleOverlay();
    } finally {
      _$MapShellStructureStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isMapOverlayVisible: ${isMapOverlayVisible}
    ''';
  }
}
