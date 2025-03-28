import "package:flutter/material.dart";
import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";

part "store.g.dart";

/// store for [DashboardShellStructureStore]
class DashboardShellStructureStore = DashboardShellStructureStoreBase
    with _$DashboardShellStructureStore;

/// [DashboardShellStructureStore] is a Store that is used to manage the state of the DashboardShellStructure.
abstract class DashboardShellStructureStoreBase with LoadStateStore, Store {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  @observable
  int _selectedIndex = 0;

  /// The index of the currently selected tab.
  @computed
  int get selectedIndex => _selectedIndex;

  /// Sets the selected index to the provided [index].
  set selectedIndex(int index) {
    _selectedIndex = index;
  }

  @observable
  bool _isNavigationRailExtended = true;

  /// Whether the board navigation rail is extended or not.
  @computed
  bool get isNavigationRailExtended => _isNavigationRailExtended;

  /// Toggles the board navigation rail.
  @action
  void toggleNavigationRail() {
    _isNavigationRailExtended = !_isNavigationRailExtended;
  }
}

// import "package:mobx/mobx.dart";

// part "store.g.dart";

// /// store for [DashboardShellStructureStore]
// class DashboardShellStructureStore = DashboardShellStructureStoreBase with _$DashboardShellStructureStore;

// /// [DashboardShellStructureStore] is a Store that is used to manage the state of the DashboardShellStructure.
// abstract class DashboardShellStructureStoreBase with Store {
//   @observable
//   int _selectedIndex = 0;

//   /// The index of the currently selected tab.
//   @computed
//   int get selectedIndex => _selectedIndex;

//   /// Sets the selected index to the provided [index].
//   set selectedIndex(int index) {
//     _selectedIndex = index;
//   }

//   // @observable
//   // bool _isNavigationRailExtended = true;

//   // /// Whether the board navigation rail is extended or not.
//   // @computed
//   // bool get isNavigationRailExtended => _isNavigationRailExtended;

//   // /// Toggles the board navigation rail.
//   // @action
//   // void toggleNavigationRail() {
//   //   _isNavigationRailExtended = !_isNavigationRailExtended;
//   // }
// }
