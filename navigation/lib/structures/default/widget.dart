import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:navigation/structures/default/store.dart";

/// [DefaultShellStructure] is a widget that is used to build the shell structure for the default app.
class DefaultShellStructure extends StatelessWidget {
  /// The store that houses the logic of the shell structure.
  final DefaultShellStructureStore store;

  /// The app bar widget to be displayed at the top of the shell.
  final PreferredSizeWidget? appBar;

  /// The Scaffold background Color
  final Color? backgroundColor;

  /// The floating action button to be displayed on the screen.
  final Widget? floatingActionButton;

  /// The location of the floating action button on the screen.
  final FloatingActionButtonLocation? floatingActionButtonLocation;

  /// The animator used for floating action button transitions.
  final FloatingActionButtonAnimator? floatingActionButtonAnimator;

  /// A list of persistent buttons to be displayed at the bottom of the screen.
  final List<Widget>? persistentFooterButtons;

  /// The widget for the bottom navigation bar.
  final Widget? bottomNavigationBar;

  /// The widget for the drawer (left side menu).
  final Widget? drawer;

  /// The widget for the end drawer (right side menu).
  final Widget? endDrawer;

  /// Creates a [DefaultShellStructure] widget.
  const DefaultShellStructure({
    super.key,
    required this.store,
    this.appBar,
    this.backgroundColor,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.bottomNavigationBar,
    this.drawer,
    this.endDrawer,
  });
  @override
  Widget build(BuildContext context) {
    final hasAppBar = appBar != null;
    final hasFloatingActionButton = floatingActionButton != null;
    final hasPersistentFooterButtons = persistentFooterButtons != null;
    final hasBottomNavigationBar = bottomNavigationBar != null;
    return Scaffold(
      appBar: hasAppBar
          ? PreferredSize(
              //TODO: Make appBar Sizes in utilities (or abstract LYAppBar class from PrefferedSizeWidget with a builder method to add in the visibility child)
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Observer(
                builder: (_) => Visibility(
                  visible: store.isAppBarVisible,
                  child: appBar!,
                ),
              ),
            )
          : null,
      body: const AutoRouter(),
      backgroundColor: backgroundColor,
      floatingActionButton: hasFloatingActionButton
          ? Observer(
              builder: (_) => Visibility(
                visible: store.isFloatingActionButtonVisible,
                child: floatingActionButton!,
              ),
            )
          : null,
      floatingActionButtonLocation: floatingActionButtonLocation,
      floatingActionButtonAnimator: floatingActionButtonAnimator,
      persistentFooterButtons: hasPersistentFooterButtons
          ? persistentFooterButtons!
              .map(
                (e) => Observer(
                  builder: (context) => Visibility(
                    visible: store.isPersistentFooterButtonsVisible,
                    child: e,
                  ),
                ),
              )
              .toList()
          : null,
      bottomNavigationBar: hasBottomNavigationBar
          ? Observer(
              builder: (_) => Visibility(
                visible: store.isBottomNavigationBarVisible,
                child: bottomNavigationBar!,
              ),
            )
          : null,
      drawer: drawer,
      endDrawer: endDrawer,
    );
  }
}
