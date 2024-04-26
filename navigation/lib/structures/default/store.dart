import "package:flutter/material.dart";
import "package:mobx/mobx.dart";
import "package:navigation/utils/loggers.dart";
import "package:utilities/logger/logger.dart";

part "store.g.dart";

///MobX store for [DefaultShellStructureStore]
class DefaultShellStructureStore = DefaultShellStructureStoreBase
    with _$DefaultShellStructureStore;

abstract class DefaultShellStructureStoreBase with Store {
  @observable
  bool _isAppBarVisible = true;

  @observable
  bool _isFloatingActionButtonVisible = true;

  @observable
  bool _isBottomNavigationBarVisible = true;

  @observable
  bool _isPersistentFooterButtonsVisible = true;

  /// toggle appbar visibility
  @computed
  bool get isAppBarVisible => _isAppBarVisible;

  /// toggle floating action button visibility
  @computed
  bool get isFloatingActionButtonVisible => _isFloatingActionButtonVisible;

  /// toggle bottom navigation bar visibility
  @computed
  bool get isBottomNavigationBarVisible => _isBottomNavigationBarVisible;

  /// toggle persistent footer buttons visibility
  @computed
  bool get isPersistentFooterButtonsVisible =>
      _isPersistentFooterButtonsVisible;

  /// Shows or hides the appBar based on the provided [value].
  @action
  void showAppBar(bool value) {
    _isAppBarVisible = value;
    AppLogger.print(
      "showAppBar set to => $_isAppBarVisible",
      [NavigationLoggers.navigation],
    );
  }

  /// Opens the left-side drawer menu.
  @action
  void toggleDrawer(BuildContext context) {
    final scaffold = Scaffold.maybeOf(context);
    if (scaffold != null) {
      if (scaffold.isDrawerOpen) {
        scaffold.openDrawer();
      } else {
        scaffold.closeDrawer();
        AppLogger.print(
          "showDrawer set to => ${scaffold.isDrawerOpen}",
          [NavigationLoggers.navigation],
        );
      }
    }
  }

  /// Opens the right-side end drawer menu.
  @action
  void toggleEndDrawer(BuildContext context) {
    final scaffold = Scaffold.maybeOf(context);
    if (scaffold != null) {
      if (scaffold.isEndDrawerOpen) {
        scaffold.openEndDrawer();
      } else {
        scaffold.closeEndDrawer();
      }
      AppLogger.print(
        "showEndDrawer set to => ${scaffold.isEndDrawerOpen}",
        [NavigationLoggers.navigation],
      );
    }
  }

  /// Shows or hides the floating action button based on the provided [value].
  @action
  void showFloatingActionButton(bool value) {
    _isFloatingActionButtonVisible = value;
    AppLogger.print(
      "showFloatingActionButton set to => $_isFloatingActionButtonVisible",
      [NavigationLoggers.navigation],
    );
  }

  /// Shows or hides the bottom navigation bar based on the provided [value].
  @action
  void showBottomNavigationBar(bool value) {
    _isBottomNavigationBarVisible = value;
    AppLogger.print(
      "showBottomNavigationBar set to => $_isBottomNavigationBarVisible",
      [NavigationLoggers.navigation],
    );
  }

  /// Shows or hides the bottom navigation bar based on the provided [value].
  @action
  void showPersistentFooterButtons(bool value) {
    _isPersistentFooterButtonsVisible = value;
    AppLogger.print(
      "showPersistentFooterButtons set to => $_isPersistentFooterButtonsVisible",
      [NavigationLoggers.navigation],
    );
  }
}
