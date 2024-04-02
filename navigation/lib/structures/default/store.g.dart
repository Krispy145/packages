// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DefaultShellStructureStore on DefaultShellStructureStoreBase, Store {
  Computed<bool>? _$isAppBarVisibleComputed;

  @override
  bool get isAppBarVisible =>
      (_$isAppBarVisibleComputed ??= Computed<bool>(() => super.isAppBarVisible,
              name: 'DefaultShellStructureStoreBase.isAppBarVisible'))
          .value;
  Computed<bool>? _$isFloatingActionButtonVisibleComputed;

  @override
  bool get isFloatingActionButtonVisible =>
      (_$isFloatingActionButtonVisibleComputed ??= Computed<bool>(
              () => super.isFloatingActionButtonVisible,
              name:
                  'DefaultShellStructureStoreBase.isFloatingActionButtonVisible'))
          .value;
  Computed<bool>? _$isBottomNavigationBarVisibleComputed;

  @override
  bool get isBottomNavigationBarVisible =>
      (_$isBottomNavigationBarVisibleComputed ??= Computed<bool>(
              () => super.isBottomNavigationBarVisible,
              name:
                  'DefaultShellStructureStoreBase.isBottomNavigationBarVisible'))
          .value;
  Computed<bool>? _$isPersistentFooterButtonsVisibleComputed;

  @override
  bool get isPersistentFooterButtonsVisible =>
      (_$isPersistentFooterButtonsVisibleComputed ??= Computed<bool>(
              () => super.isPersistentFooterButtonsVisible,
              name:
                  'DefaultShellStructureStoreBase.isPersistentFooterButtonsVisible'))
          .value;

  late final _$_isAppBarVisibleAtom = Atom(
      name: 'DefaultShellStructureStoreBase._isAppBarVisible',
      context: context);

  @override
  bool get _isAppBarVisible {
    _$_isAppBarVisibleAtom.reportRead();
    return super._isAppBarVisible;
  }

  @override
  set _isAppBarVisible(bool value) {
    _$_isAppBarVisibleAtom.reportWrite(value, super._isAppBarVisible, () {
      super._isAppBarVisible = value;
    });
  }

  late final _$_isFloatingActionButtonVisibleAtom = Atom(
      name: 'DefaultShellStructureStoreBase._isFloatingActionButtonVisible',
      context: context);

  @override
  bool get _isFloatingActionButtonVisible {
    _$_isFloatingActionButtonVisibleAtom.reportRead();
    return super._isFloatingActionButtonVisible;
  }

  @override
  set _isFloatingActionButtonVisible(bool value) {
    _$_isFloatingActionButtonVisibleAtom
        .reportWrite(value, super._isFloatingActionButtonVisible, () {
      super._isFloatingActionButtonVisible = value;
    });
  }

  late final _$_isBottomNavigationBarVisibleAtom = Atom(
      name: 'DefaultShellStructureStoreBase._isBottomNavigationBarVisible',
      context: context);

  @override
  bool get _isBottomNavigationBarVisible {
    _$_isBottomNavigationBarVisibleAtom.reportRead();
    return super._isBottomNavigationBarVisible;
  }

  @override
  set _isBottomNavigationBarVisible(bool value) {
    _$_isBottomNavigationBarVisibleAtom
        .reportWrite(value, super._isBottomNavigationBarVisible, () {
      super._isBottomNavigationBarVisible = value;
    });
  }

  late final _$_isPersistentFooterButtonsVisibleAtom = Atom(
      name: 'DefaultShellStructureStoreBase._isPersistentFooterButtonsVisible',
      context: context);

  @override
  bool get _isPersistentFooterButtonsVisible {
    _$_isPersistentFooterButtonsVisibleAtom.reportRead();
    return super._isPersistentFooterButtonsVisible;
  }

  @override
  set _isPersistentFooterButtonsVisible(bool value) {
    _$_isPersistentFooterButtonsVisibleAtom
        .reportWrite(value, super._isPersistentFooterButtonsVisible, () {
      super._isPersistentFooterButtonsVisible = value;
    });
  }

  late final _$DefaultShellStructureStoreBaseActionController =
      ActionController(
          name: 'DefaultShellStructureStoreBase', context: context);

  @override
  void showAppBar(bool value) {
    final _$actionInfo = _$DefaultShellStructureStoreBaseActionController
        .startAction(name: 'DefaultShellStructureStoreBase.showAppBar');
    try {
      return super.showAppBar(value);
    } finally {
      _$DefaultShellStructureStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleDrawer(BuildContext context) {
    final _$actionInfo = _$DefaultShellStructureStoreBaseActionController
        .startAction(name: 'DefaultShellStructureStoreBase.toggleDrawer');
    try {
      return super.toggleDrawer(context);
    } finally {
      _$DefaultShellStructureStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void toggleEndDrawer(BuildContext context) {
    final _$actionInfo = _$DefaultShellStructureStoreBaseActionController
        .startAction(name: 'DefaultShellStructureStoreBase.toggleEndDrawer');
    try {
      return super.toggleEndDrawer(context);
    } finally {
      _$DefaultShellStructureStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showFloatingActionButton(bool value) {
    final _$actionInfo =
        _$DefaultShellStructureStoreBaseActionController.startAction(
            name: 'DefaultShellStructureStoreBase.showFloatingActionButton');
    try {
      return super.showFloatingActionButton(value);
    } finally {
      _$DefaultShellStructureStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showBottomNavigationBar(bool value) {
    final _$actionInfo =
        _$DefaultShellStructureStoreBaseActionController.startAction(
            name: 'DefaultShellStructureStoreBase.showBottomNavigationBar');
    try {
      return super.showBottomNavigationBar(value);
    } finally {
      _$DefaultShellStructureStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void showPersistentFooterButtons(bool value) {
    final _$actionInfo =
        _$DefaultShellStructureStoreBaseActionController.startAction(
            name: 'DefaultShellStructureStoreBase.showPersistentFooterButtons');
    try {
      return super.showPersistentFooterButtons(value);
    } finally {
      _$DefaultShellStructureStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isAppBarVisible: ${isAppBarVisible},
isFloatingActionButtonVisible: ${isFloatingActionButtonVisible},
isBottomNavigationBarVisible: ${isBottomNavigationBarVisible},
isPersistentFooterButtonsVisible: ${isPersistentFooterButtonsVisible}
    ''';
  }
}
