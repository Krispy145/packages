import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/sizes/screen_size.dart";

import "store.dart";

const _primaryLargeNavigationKey = Key("Primary Navigation");
const _primaryMediumNavigationKey = Key("Primary Navigation Medium");
const _primaryBodyKey = Key("Primary Body");
const _bodySmallKey = Key("Body Small");

/// [NavigationRailPosition] is an enum that is used to determine the position of the navigation rail.
enum NavigationRailPosition {
  /// The navigation rail is on the left side of the screen.
  left,

  /// The navigation rail is on the right side of the screen.
  right;
}

/// [DashboardShellStructure] is a widget that is used to build the shell structure for the board branch.
class DashboardShellStructure extends StatelessWidget {
  final DashboardShellStructureStore store;

  /// The position of the navigation rail.
  final NavigationRailPosition boardNavigationRailPosition;

  /// The app bar of the dashboard shell structure.
  final AppBar? appBar;

  /// The percentage of the screen that the navigation rail takes up.
  final double navigationRailPercentage;

  /// [minWidth] is the minimum width of the navigation rail, specifically when the navigation rail is collapsed.
  final double minWidth;

  /// [maxWidth] is the maximum width of the navigation rail, specifically when the navigation rail is extended.
  final double maxWidth;

  /// The leading widget of the navigation rail.
  final Widget Function(BuildContext context)? leading;

  /// The trailing widget of the navigation rail.
  final Widget Function(BuildContext context)? trailing;

  /// The destinations of the navigation rail.
  final List<NavigationDestination> destinations;

  /// The function that is called when a destination is selected.
  final void Function(int)? onDestinationSelected;

  /// The label type of the navigation rail.
  final NavigationRailLabelType labelType;

  /// The background color of the navigation rail.
  final Color? backgroundColor;

  /// The selected icon theme of the navigation rail.
  final IconThemeData? selectedIconTheme;

  /// The unselected icon theme of the navigation rail.
  final IconThemeData? unselectedIconTheme;

  /// The selected label text style of the navigation rail.
  final TextStyle? selectedLabelTextStyle;

  /// The unselected label text style of the navigation rail.
  final TextStyle? unSelectedLabelTextStyle;

  /// [isCollapsible] is a boolean that determines if the navigation rail is collapsible.
  /// default is true.
  final bool isCollapsible;

  /// Creates a [DashboardShellStructure] named constructor for using a left navigation rail.
  const DashboardShellStructure.left({
    super.key,
    required this.navigationRailPercentage,
    this.appBar,
    required this.store,
    this.minWidth = 52,
    this.maxWidth = 300,
    this.leading,
    this.trailing,
    required this.destinations,
    this.onDestinationSelected,
    this.labelType = NavigationRailLabelType.none,
    this.backgroundColor,
    this.selectedIconTheme,
    this.unselectedIconTheme,
    this.selectedLabelTextStyle,
    this.unSelectedLabelTextStyle,
    this.isCollapsible = true,
  }) : boardNavigationRailPosition = NavigationRailPosition.left;

  /// Creates a [DashboardShellStructure] named constructor for using a right navigation rail.
  const DashboardShellStructure.right({
    super.key,
    required this.navigationRailPercentage,
    this.appBar,
    required this.store,
    this.minWidth = 52,
    this.maxWidth = 300,
    this.leading,
    this.trailing,
    required this.destinations,
    this.onDestinationSelected,
    this.labelType = NavigationRailLabelType.none,
    this.backgroundColor,
    this.selectedIconTheme,
    this.unselectedIconTheme,
    this.selectedLabelTextStyle,
    this.unSelectedLabelTextStyle,
    this.isCollapsible = true,
  }) : boardNavigationRailPosition = NavigationRailPosition.right;

  double _getNavigationRailWidth(BuildContext context) {
    final _suggestedWidth = context.screenWidth * navigationRailPercentage;
    if (_suggestedWidth < minWidth) {
      return minWidth;
    }
    if (_suggestedWidth > maxWidth) {
      return maxWidth;
    }
    return _suggestedWidth;
  }

  WidthPlatformBreakpoint get _small => WidthPlatformBreakpoint(begin: ScreenSize.mobileBreak.start, end: ScreenSize.mobileBreak.end);
  WidthPlatformBreakpoint get _medium => WidthPlatformBreakpoint(begin: ScreenSize.tabletBreak.start, end: ScreenSize.tabletBreak.end);
  WidthPlatformBreakpoint get _mediumAndUp => WidthPlatformBreakpoint(begin: ScreenSize.tabletBreak.start, end: double.infinity);

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      transitionDuration: const Duration(milliseconds: 800),
      primaryNavigation: boardNavigationRailPosition == NavigationRailPosition.left ? _buildRail() : null,
      secondaryNavigation: boardNavigationRailPosition == NavigationRailPosition.right ? _buildRail() : null,
      body: SlotLayout(
        config: <Breakpoint, SlotLayoutConfig>{
          _small: SlotLayout.from(
            key: _bodySmallKey,
            builder: (_) => Scaffold(
              appBar: appBar ?? AppBar(),
              drawer: Observer(
                builder: (context) {
                  return Drawer(
                    child: NavigationRail(
                      extended: true,
                      leading: leading?.call(context),
                      trailing: _buildTrailingStack(context),
                      selectedIndex: store.selectedIndex,
                      destinations: destinations.map(AdaptiveScaffold.toRailDestination).toList(),
                      onDestinationSelected: (value) {
                        _onDestinationSelected(value);
                        Scaffold.of(context).closeDrawer();
                      },
                    ),
                  );
                },
              ),
              body: const AutoRouter(
                key: _primaryBodyKey,
              ),
            ),
          ),
          _mediumAndUp: SlotLayout.from(
            key: const Key("Body Small and Up"),
            builder: (_) => const AutoRouter(),
          ),
        },
      ),
    );
  }

  SlotLayout _buildRail() {
    return SlotLayout(
      config: <Breakpoint, SlotLayoutConfig>{
        _mediumAndUp: SlotLayout.from(
          key: _primaryLargeNavigationKey,
          inAnimation: AdaptiveScaffold.stayOnScreen,
          builder: (_) => Observer(
            builder: (context) {
              return AdaptiveScaffold.standardNavigationRail(
                width: store.isNavigationRailExtended ? _getNavigationRailWidth(context) : 72,
                padding: EdgeInsets.zero,
                selectedIndex: store.selectedIndex,
                onDestinationSelected: _onDestinationSelected,
                extended: store.isNavigationRailExtended,
                leading: leading?.call(context),
                destinations: destinations.map(AdaptiveScaffold.toRailDestination).toList(),
                trailing: _buildTrailingStack(context),
                backgroundColor: backgroundColor,
                selectedIconTheme: selectedIconTheme,
                unselectedIconTheme: unselectedIconTheme,
                selectedLabelTextStyle: selectedLabelTextStyle,
                unSelectedLabelTextStyle: unSelectedLabelTextStyle,
              );
            },
          ),
        ),
        _medium: SlotLayout.from(
          inAnimation: AdaptiveScaffold.stayOnScreen,
          key: _primaryMediumNavigationKey,
          builder: (_) => Observer(
            builder: (context) {
              return AdaptiveScaffold.standardNavigationRail(
                padding: EdgeInsets.zero,
                selectedIndex: store.selectedIndex,
                leading: leading?.call(context),
                trailing: _buildTrailingStack(context),
                onDestinationSelected: _onDestinationSelected,
                destinations: destinations.map(AdaptiveScaffold.toRailDestination).toList(),
                backgroundColor: backgroundColor,
                selectedIconTheme: selectedIconTheme,
                unselectedIconTheme: unselectedIconTheme,
                selectedLabelTextStyle: selectedLabelTextStyle,
                unSelectedLabelTextStyle: unSelectedLabelTextStyle,
              );
            },
          ),
        ),
      },
    );
  }

  void _onDestinationSelected(int value) {
    onDestinationSelected?.call(value);
    store.selectedIndex = value;
  }

  Widget _buildTrailingStack(BuildContext context) {
    return Observer(
      builder: (context) {
        return Expanded(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              if (trailing != null) trailing!(context),
              if (isCollapsible)
                IconButton(
                  icon: Icon(
                    store.isNavigationRailExtended
                        ? (boardNavigationRailPosition == NavigationRailPosition.left ? Icons.chevron_left : Icons.chevron_right)
                        : (boardNavigationRailPosition == NavigationRailPosition.left ? Icons.chevron_right : Icons.chevron_left),
                  ),
                  onPressed: store.toggleNavigationRail,
                ),
            ],
          ),
        );
      },
    );
  }
}
