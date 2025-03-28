import "package:flutter/material.dart";
import "package:mobx/mobx.dart";
import "package:navigation/utils/loggers.dart";
import "package:utilities/logger/logger.dart";

part "store.g.dart";

/// store for OverlayShellStructure
class OverlayShellStructureStore = OverlayShellStructureStoreBase
    with _$OverlayShellStructureStore;

/// [OverlayShellStructureStore] is a Store that is used to manage the state of the OverlayShellStructure.
abstract class OverlayShellStructureStoreBase with Store {
  /// [OverlayPortalController] for OverlayShellStructure
  final OverlayPortalController overlayPortalController =
      OverlayPortalController();

  /// [isOverlayVisible] is used to toggle the overlay.
  @observable
  bool isOverlayVisible = false;

  /// Toggles the overlay.
  @action
  void toggleOverlay() {
    isOverlayVisible = !isOverlayVisible;
    if (isOverlayVisible) {
      overlayPortalController.show();
    } else {
      overlayPortalController.hide();
    }
    AppLogger.print(
      "showOverlay set to => $isOverlayVisible",
      [NavigationLoggers.navigation],
    );
  }
}
