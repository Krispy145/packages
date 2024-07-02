import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:utilities/helpers/extensions/build_context.dart";
import "package:utilities/layouts/intrinsic_height_scroller.dart";

import "store.dart";

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

  /// The percentage of the screen that the navigation rail takes up.
  final double navigationRailPercentage;

  /// [minWidth] is the minimum width of the navigation rail, specifically when the navigation rail is collapsed.
  final double minWidth;

  /// The leading widget of the navigation rail.
  final Widget? leading;

  /// The trailing widget of the navigation rail.
  final Widget? trailing;

  /// The destinations of the navigation rail.
  final List<NavigationRailDestination> destinations;

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
    required this.store,
    this.minWidth = 52,
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
    required this.store,
    this.minWidth = 52,
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
    return context.screenWidth * navigationRailPercentage;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: [
          if (boardNavigationRailPosition == NavigationRailPosition.left) _buildNavigationRail(context),
          const Expanded(child: AutoRouter()),
          if (boardNavigationRailPosition == NavigationRailPosition.right) _buildNavigationRail(context),
        ],
      ),
    );
  }

  Widget _buildNavigationRail(BuildContext context) {
    return Observer(
      builder: (_) => IntrinsicHeightChildScroller(
        child: NavigationRail(
          minWidth: minWidth,
          minExtendedWidth: _getNavigationRailWidth(context),
          useIndicator: false,
          leading: leading,
          trailing: _buildTrailingStack(context),
          extended: labelType == NavigationRailLabelType.none && store.isNavigationRailExtended,
          selectedIndex: store.selectedIndex,
          onDestinationSelected: (value) {
            onDestinationSelected?.call(value);
            store.selectedIndex = value;
          },
          labelType: labelType,
          backgroundColor: backgroundColor,
          destinations: destinations,
          selectedIconTheme: selectedIconTheme,
          unselectedIconTheme: unselectedIconTheme,
          selectedLabelTextStyle: selectedLabelTextStyle,
          unselectedLabelTextStyle: unSelectedLabelTextStyle,
        ),
      ),
    );
  }

  Widget _buildTrailingStack(BuildContext context) {
    return Expanded(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          if (trailing != null) trailing!,
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
  }
}




// import "package:auto_route/auto_route.dart";
// import "package:flutter/material.dart";
// import "package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart";
// import "package:flutter_mobx/flutter_mobx.dart";
// import "package:utilities/helpers/extensions/build_context.dart";

// import "store.dart";

// /// [NavigationRailPosition] is an enum that is used to determine the position of the navigation rail.
// enum NavigationRailPosition {
//   /// The navigation rail is on the left side of the screen.
//   left,

//   /// The navigation rail is on the right side of the screen.
//   right;
// }

// /// [DashboardShellStructure] is a widget that is used to build the shell structure for the board branch.
// class DashboardShellStructure extends StatelessWidget {
//   final DashboardShellStructureStore store;

//   /// The position of the navigation rail.
//   final NavigationRailPosition boardNavigationRailPosition;

//   /// The percentage of the screen that the navigation rail takes up.
//   final double navigationRailPercentage;

//   /// [minWidth] is the minimum width of the navigation rail, specifically when the navigation rail is collapsed.
//   final double minWidth;

//   /// The leading widget of the navigation rail.
//   final Widget? leading;

//   /// The trailing widget of the navigation rail.
//   final Widget? trailing;

//   /// The destinations of the navigation rail.
//   final List<NavigationDestination> destinations;

//   /// The function that is called when a destination is selected.
//   final void Function(int)? onDestinationSelected;

//   /// The label type of the navigation rail.
//   final NavigationRailLabelType labelType;

//   /// The background color of the navigation rail.
//   final Color? backgroundColor;

//   /// The selected icon theme of the navigation rail.
//   final IconThemeData? selectedIconTheme;

//   /// The unselected icon theme of the navigation rail.
//   final IconThemeData? unselectedIconTheme;

//   /// The selected label text style of the navigation rail.
//   final TextStyle? selectedLabelTextStyle;

//   /// The unselected label text style of the navigation rail.
//   final TextStyle? unSelectedLabelTextStyle;

//   /// [isCollapsible] is a boolean that determines if the navigation rail is collapsible.
//   /// default is true.
//   final bool isCollapsible;

//   /// Creates a [DashboardShellStructure] named constructor for using a left navigation rail.
//   const DashboardShellStructure.left({
//     super.key,
//     required this.navigationRailPercentage,
//     required this.store,
//     this.minWidth = 52,
//     this.leading,
//     this.trailing,
//     required this.destinations,
//     this.onDestinationSelected,
//     this.labelType = NavigationRailLabelType.none,
//     this.backgroundColor,
//     this.selectedIconTheme,
//     this.unselectedIconTheme,
//     this.selectedLabelTextStyle,
//     this.unSelectedLabelTextStyle,
//     this.isCollapsible = true,
//   }) : boardNavigationRailPosition = NavigationRailPosition.left;

//   /// Creates a [DashboardShellStructure] named constructor for using a right navigation rail.
//   const DashboardShellStructure.right({
//     super.key,
//     required this.navigationRailPercentage,
//     required this.store,
//     this.minWidth = 52,
//     this.leading,
//     this.trailing,
//     required this.destinations,
//     this.onDestinationSelected,
//     this.labelType = NavigationRailLabelType.none,
//     this.backgroundColor,
//     this.selectedIconTheme,
//     this.unselectedIconTheme,
//     this.selectedLabelTextStyle,
//     this.unSelectedLabelTextStyle,
//     this.isCollapsible = true,
//   }) : boardNavigationRailPosition = NavigationRailPosition.right;

//   double _getNavigationRailWidth(BuildContext context) {
//     final _suggestedWidth = context.screenWidth * navigationRailPercentage;
//     if (_suggestedWidth < minWidth) {
//       return minWidth;
//     }
//     return _suggestedWidth;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Observer(
//       builder: (context) {
//         return AdaptiveScaffold(
//           destinations: destinations,
//           navigationRailWidth: _getNavigationRailWidth(context),
//           extendedNavigationRailWidth: _getNavigationRailWidth(context),
//           trailingNavRail: _buildTrailingStack(context),
//           leadingExtendedNavRail: leading,
//           leadingUnextendedNavRail: leading,
//           body: (context) => const AutoRouter(),
//           selectedIndex: store.selectedIndex,
//           onSelectedIndexChange: (value) {
//             onDestinationSelected?.call(value);
//             store.selectedIndex = value;
//           },
//         );
//       },
//     );
//   }

//   Widget _buildTrailingStack(BuildContext context) {
//     return Observer(
//       builder: (context) {
//         return Expanded(
//           child: Stack(
//             alignment: Alignment.bottomCenter,
//             children: [
//               if (trailing != null) trailing!,
//               // if (isCollapsible)
//               //   IconButton(
//               //     icon: Icon(
//               //       store.isNavigationRailExtended
//               //           ? (boardNavigationRailPosition == NavigationRailPosition.left ? Icons.chevron_left : Icons.chevron_right)
//               //           : (boardNavigationRailPosition == NavigationRailPosition.left ? Icons.chevron_right : Icons.chevron_left),
//               //     ),
//               //     onPressed: store.toggleNavigationRail,
//               //   ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
