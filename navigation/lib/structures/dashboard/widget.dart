import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:universal_io/io.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/sizes/screen_size.dart";
import "package:utilities/widgets/load_state/builder.dart";

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
  final PreferredSizeWidget? appBar;

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

  /// [builder] is a function that builds the navigation body of the dashboard shell structure.
  final Widget Function(BuildContext context)? builder;

  /// Creates a [DashboardShellStructure] named constructor for using a left navigation rail.
  const DashboardShellStructure.left({
    super.key,
    this.navigationRailPercentage = 0.25,
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
  })  : boardNavigationRailPosition = NavigationRailPosition.left,
        builder = null;

  /// Creates a [DashboardShellStructure] named constructor for using a right navigation rail.
  const DashboardShellStructure.right({
    super.key,
    this.navigationRailPercentage = 0.25,
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
  })  : boardNavigationRailPosition = NavigationRailPosition.right,
        builder = null;

  const DashboardShellStructure.builder({
    super.key,
    required this.builder,
    this.navigationRailPercentage = 0.25,
    this.appBar,
    required this.store,
    this.minWidth = 52,
    this.maxWidth = 300,
    this.leading,
    this.trailing,
    this.backgroundColor,
    this.boardNavigationRailPosition = NavigationRailPosition.left,
  })  : destinations = const [],
        labelType = NavigationRailLabelType.none,
        onDestinationSelected = null,
        selectedIconTheme = null,
        unselectedIconTheme = null,
        isCollapsible = false,
        selectedLabelTextStyle = null,
        unSelectedLabelTextStyle = null;

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

  Breakpoint get _small => Breakpoint(beginWidth: ScreenSize.mobileBreak.start, endWidth: ScreenSize.mobileBreak.end);
  Breakpoint get _medium => Breakpoint(beginWidth: ScreenSize.tabletBreak.start, endWidth: ScreenSize.tabletBreak.end);
  Breakpoint get _mediumAndUp => Breakpoint(beginWidth: ScreenSize.tabletBreak.start, endWidth: double.infinity);

  AutoRouter get _autoRouter => AutoRouter(
        navigatorKey: store.navigatorKey,
      );

  @override
  Widget build(BuildContext context) {
    return PackageLoadStateBuilder(
      store: store,
      loadedBuilder: (context) {
        return AdaptiveLayout(
          transitionDuration: const Duration(milliseconds: 800),
          primaryNavigation: boardNavigationRailPosition == NavigationRailPosition.left ? _buildRail() : null,
          secondaryNavigation: boardNavigationRailPosition == NavigationRailPosition.right ? _buildRail() : null,
          body: SlotLayout(
            config: <Breakpoint, SlotLayoutConfig>{
              _small: SlotLayout.from(
                key: _bodySmallKey,
                builder: builder != null
                    ? (context) => _navigationRailBuilder(
                          context,
                          (context) => builder!(context),
                          _small,
                        )
                    : (_) => Scaffold(
                          key: store.scaffoldKey,
                          appBar: appBar ?? AppBar(),
                          drawer: Drawer(
                            child: Observer(
                              builder: (context) {
                                return NavigationRail(
                                  extended: true,
                                  leading: leading?.call(context),
                                  trailing: _buildTrailingStack(context),
                                  selectedIndex: store.selectedIndex,
                                  destinations: destinations.map(AdaptiveScaffold.toRailDestination).toList(),
                                  onDestinationSelected: (value) {
                                    _onDestinationSelected(value);
                                    store.scaffoldKey.currentState?.closeDrawer();
                                  },
                                );
                              },
                            ),
                          ),
                          body: _autoRouter,
                        ),
              ),
              _mediumAndUp: SlotLayout.from(
                key: const Key("Body Small and Up"),
                builder: (_) => _autoRouter,
              ),
            },
          ),
        );
      },
    );
  }

  SlotLayout _buildRail() {
    return SlotLayout(
      config: <Breakpoint, SlotLayoutConfig>{
        _mediumAndUp: SlotLayout.from(
          key: _primaryLargeNavigationKey,
          inAnimation: AdaptiveScaffold.stayOnScreen,
          builder: (context) => Observer(
            builder: builder != null
                ? (context) => _navigationRailBuilder(
                      context,
                      (context) => builder!(context),
                      _mediumAndUp,
                    )
                : (context) => AdaptiveScaffold.standardNavigationRail(
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
                    ),
          ),
        ),
        _medium: SlotLayout.from(
          inAnimation: AdaptiveScaffold.stayOnScreen,
          key: _primaryMediumNavigationKey,
          builder: (context) => Observer(
            builder: builder != null
                ? (context) => _navigationRailBuilder(
                      context,
                      (context) => builder!(context),
                      _medium,
                    )
                : (context) => AdaptiveScaffold.standardNavigationRail(
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
                    ),
          ),
        ),
      },
    );
  }

  void _onDestinationSelected(int value) {
    store.selectedIndex = value;
    onDestinationSelected?.call(value);
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

  Widget _navigationRailBuilder(BuildContext context, Widget Function(BuildContext context) builder, Breakpoint breakpoint) {
    if (Platform.isIOS || Platform.isAndroid) {
      return _buildSmallLayoutBuilder(context, builder);
    }
    if (breakpoint.beginWidth == _small.beginWidth && breakpoint.endWidth == _small.endWidth) {
      return _buildSmallLayoutBuilder(context, builder);
    }
    if (breakpoint.beginWidth == _medium.beginWidth && breakpoint.endWidth == _medium.endWidth) {
      return _buildMediumLayoutFromNavPosition(context, builder, boardNavigationRailPosition);
    }
    return _buildLargeLayoutFromNavPosition(context, builder, boardNavigationRailPosition);
  }

  Scaffold _buildSmallLayoutBuilder(BuildContext context, Widget Function(BuildContext context) builder) {
    return Scaffold(
      key: store.scaffoldKey,
      appBar: appBar ?? AppBar(),
      drawer: Drawer(
        width: maxWidth,
        child: _builderWrapper(context, builder),
      ),
      body: _autoRouter,
    );
  }

  Observer _builderWrapper(BuildContext context, Widget Function(BuildContext context) builder) {
    return Observer(
      builder: (context) {
        return builder(context);
      },
    );
  }

  Widget _buildMediumLayoutFromNavPosition(BuildContext context, Widget Function(BuildContext context) builder, NavigationRailPosition position) {
    return Material(
      child: SizedBox(
        width: 72,
        height: double.infinity,
        child: _builderWrapper(
          context,
          builder,
        ),
      ),
    );
  }

  Widget _buildLargeLayoutFromNavPosition(BuildContext context, Widget Function(BuildContext context) builder, NavigationRailPosition position) {
    return Material(
      child: SizedBox(
        width: isCollapsible ? (store.isNavigationRailExtended ? _getNavigationRailWidth(context) : 72) : _getNavigationRailWidth(context),
        height: double.infinity,
        child: _builderWrapper(context, builder),
      ),
    );
  }
}
