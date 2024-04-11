import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:navigation/utils/loggers.dart';
import 'package:utilities/logger/logger.dart';

part 'store.g.dart';

///MobX store for MapShellStructure
class MapShellStructureStore = MapShellStructureStoreBase with _$MapShellStructureStore;

/// [MapShellStructureStore] is a MobX Store that is used to manage the state of the MapShellStructure.
abstract class MapShellStructureStoreBase with Store {
  /// [OverlayPortalController] for MapShellStructure
  final OverlayPortalController overlayPortalController = OverlayPortalController();

  /// [isMapOverlayVisible] is used to toggle the map overlay.
  @observable
  bool isMapOverlayVisible = false;

  /// Toggles the map overlay.
  @action
  void toggleOverlay() {
    if (isMapOverlayVisible) {
      overlayPortalController.hide();
    } else {
      overlayPortalController.show();
    }
    isMapOverlayVisible = !isMapOverlayVisible;
    AppLogger.print(
      "showMapOverlay set to => $isMapOverlayVisible",
      [NavigationPackageLoggers.navigation],
    );
  }
}
