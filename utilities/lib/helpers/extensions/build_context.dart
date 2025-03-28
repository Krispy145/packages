import "package:flutter/material.dart";
import "package:responsive_framework/responsive_framework.dart";
import "package:url_launcher/url_launcher.dart";
import "package:utilities/sizes/screen_size.dart";
import "package:utilities/snackbar/configuration.dart";
import "package:utilities/snackbar/message.dart";

/// Set of extension methods to easily display a snackbar
extension ShowSnackbar on BuildContext {
  SnackbarMessage get _snackbarMessage => SnackbarMessage(this);

  /// Displays a basic snackbar
  void showSnackbar(SnackbarConfiguration configuration) {
    clearSnackbars();
    _snackbarMessage.show(configuration: configuration);
  }

  /// Clears all snackbars
  void clearSnackbars() {
    ScaffoldMessenger.of(this).clearSnackBars();
  }
}

extension UrlLauncher on BuildContext {
  Future<void> launchUrlInNewTab(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw Exception("Could not launch $url");
    }
  }
}

extension ShowBottomSheet on BuildContext {
  Future<T?> showBottomSheet<T>({
    required Widget Function(BuildContext context) builder,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    Color? barrierColor,
    bool isScrollControlled = false,
    bool useRootNavigator = false,
    bool isDismissible = true,
    bool enableDrag = true,
    final double minWindowSize = 300,
    final double minWindowHeight = 120,
  }) {
    return showModalBottomSheet(
      context: this,
      builder: (context) => SafeArea(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: minWindowSize,
            minHeight: minWindowHeight,
            maxHeight: context.screenHeight * 0.8,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: builder(context),
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      elevation: elevation,
      shape: shape,
      clipBehavior: clipBehavior,
      barrierColor: barrierColor,
      isScrollControlled: isScrollControlled,
      useRootNavigator: useRootNavigator,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      showDragHandle: enableDrag,
    );
  }
}

/// Set of extension methods to easily get the screen size
extension ResponsiveSize on BuildContext {
  /// [isMobile] is a getter that returns whether the screen size is mobile.
  bool get isMobile => ResponsiveBreakpoints.of(this).isMobile;

  bool get isScreenWidthGreaterThanTablet => screenWidth >= ScreenSize.tabletBreak.end;

  /// [isDesktop] is a getter that returns whether the screen size is desktop.
  bool get isDesktop => ResponsiveBreakpoints.of(this).isDesktop;

  /// [isTablet] is a getter that returns whether the screen size is tablet.
  bool get isTablet => ResponsiveBreakpoints.of(this).isTablet;

  /// [screenWidth] is a getter that returns the width of the screen.
  double get screenWidth => MediaQuery.sizeOf(this).width;

  /// [screenHeight] is a getter that returns the height of the screen.
  double get screenHeight => MediaQuery.sizeOf(this).height;

  /// [minBottomPadding] is a getter that returns the minimum bottom padding of the screen.
  /// This is useful for ensuring that the bottom of the screen is not covered by a floating action button or bottom navigation bar.
  /// adds 16 to the bottom padding to ensure that the floating action button is not covered by the bottom navigation bar.
  double minBottomPadding({double extraPadding = 16}) {
    if (kFloatingActionButtonMargin + kBottomNavigationBarHeight > MediaQuery.viewInsetsOf(this).bottom) {
      return kFloatingActionButtonMargin + kBottomNavigationBarHeight + extraPadding;
    }
    return kFloatingActionButtonMargin + kBottomNavigationBarHeight + extraPadding;
  }
}
