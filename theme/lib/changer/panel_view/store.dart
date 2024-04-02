import 'package:mobx/mobx.dart';

part 'store.g.dart';

/// [ExpandingPanelViewStore] is a class that uses [ExpandingPanelBaseStore] to manage state of the appbars feature.
class ExpandingPanelViewStore = ExpandingPanelBaseStore
    with _$ExpandingPanelViewStore;

/// [ExpandingPanelBaseStore] is a class that manages the state of the panel view builder.
abstract class ExpandingPanelBaseStore with Store {
  /// [isOpen] is a boolean that determines if the panel is open or not.
  @observable
  bool isOpen = false;

  /// [toggle] is a function that toggles the panel.
  @action
  void toggle() {
    isOpen = !isOpen;
  }
}
