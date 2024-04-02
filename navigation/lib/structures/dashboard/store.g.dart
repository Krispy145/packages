// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DashboardShellStructureStore
    on DashboardShellStructureStoreBase, Store {
  Computed<int>? _$selectedIndexComputed;

  @override
  int get selectedIndex =>
      (_$selectedIndexComputed ??= Computed<int>(() => super.selectedIndex,
              name: 'DashboardShellStructureStoreBase.selectedIndex'))
          .value;
  Computed<bool>? _$isNavigationRailExtendedComputed;

  @override
  bool get isNavigationRailExtended => (_$isNavigationRailExtendedComputed ??=
          Computed<bool>(() => super.isNavigationRailExtended,
              name:
                  'DashboardShellStructureStoreBase.isNavigationRailExtended'))
      .value;

  late final _$_selectedIndexAtom = Atom(
      name: 'DashboardShellStructureStoreBase._selectedIndex',
      context: context);

  @override
  int get _selectedIndex {
    _$_selectedIndexAtom.reportRead();
    return super._selectedIndex;
  }

  @override
  set _selectedIndex(int value) {
    _$_selectedIndexAtom.reportWrite(value, super._selectedIndex, () {
      super._selectedIndex = value;
    });
  }

  late final _$_isNavigationRailExtendedAtom = Atom(
      name: 'DashboardShellStructureStoreBase._isNavigationRailExtended',
      context: context);

  @override
  bool get _isNavigationRailExtended {
    _$_isNavigationRailExtendedAtom.reportRead();
    return super._isNavigationRailExtended;
  }

  @override
  set _isNavigationRailExtended(bool value) {
    _$_isNavigationRailExtendedAtom
        .reportWrite(value, super._isNavigationRailExtended, () {
      super._isNavigationRailExtended = value;
    });
  }

  late final _$DashboardShellStructureStoreBaseActionController =
      ActionController(
          name: 'DashboardShellStructureStoreBase', context: context);

  @override
  void toggleNavigationRail() {
    final _$actionInfo =
        _$DashboardShellStructureStoreBaseActionController.startAction(
            name: 'DashboardShellStructureStoreBase.toggleNavigationRail');
    try {
      return super.toggleNavigationRail();
    } finally {
      _$DashboardShellStructureStoreBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex},
isNavigationRailExtended: ${isNavigationRailExtended}
    ''';
  }
}
