import "package:flutter/material.dart";
import "package:responsive_framework/responsive_framework.dart";
import "package:utilities/snackbar/configuration.dart";
import "package:utilities/snackbar/message.dart";

/// Set of extension methods to easily display a snackbar
extension ShowSnackbar on BuildContext {
  SnackbarMessage get _snackbarMessage => SnackbarMessage(this);

  /// Displays a basic snackbar
  void showSnackbar({
    required SnackbarConfiguration configuration,
  }) {
    ScaffoldMessenger.of(this).clearSnackBars();
    _snackbarMessage.show(
      configuration: configuration,
    );
  }
}

/// Set of extension methods to easily get the screen size
extension ResponsiveSize on BuildContext {
  /// [isMobile] is a getter that returns whether the screen size is mobile.
  bool get isMobile => ResponsiveBreakpoints.of(this).isMobile;

  /// [isDesktop] is a getter that returns whether the screen size is desktop.
  bool get isDesktop => ResponsiveBreakpoints.of(this).isDesktop;

  /// [isTablet] is a getter that returns whether the screen size is tablet.
  bool get isTablet => ResponsiveBreakpoints.of(this).isTablet;

  /// [screenWidth] is a getter that returns the width of the screen.
  double get screenWidth => MediaQuery.sizeOf(this).width;

  /// [screenHeight] is a getter that returns the height of the screen.
  double get screenHeight => MediaQuery.sizeOf(this).height;
}
