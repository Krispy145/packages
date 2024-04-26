import "package:mobx/mobx.dart";

part "store.g.dart";

/// [ExpandingPanelViewStore] is a class that uses [_ExpandingPanelStore] to manage state of the appbars feature.
class ExpandingPanelViewStore = _ExpandingPanelStore
    with _$ExpandingPanelViewStore;

/// [_ExpandingPanelStore] is a class that manages the state of the panel view builder.
abstract class _ExpandingPanelStore with Store {
  /// [isOpen] is a boolean that determines if the panel is open or not.
  @observable
  bool isOpen = false;

  /// [toggle] is a function that toggles the panel.
  @action
  void toggle() {
    isOpen = !isOpen;
  }
}
