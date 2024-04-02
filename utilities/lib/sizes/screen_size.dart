import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

/// [ScreenSize] is a class that uses [ScreenSizes] to calculate the screen size of the device.
class ScreenSize {
  /// [width] is the width of the screen.
  final double width;

  /// [height] is the height of the screen.
  final double height;

  /// [ScreenSize] is the constructor for the class.
  const ScreenSize({required this.width, required this.height});

  /// [dimension] is a getter that returns the dimension of the screen.
  double dimension(Axis axis) => axis == Axis.vertical ? height : width;

  /// [defaultBreakpoints] is a getter that returns the default breakpoints.
  static const defaultBreakpoints = [
    Breakpoint(start: 0, end: 600, name: MOBILE),
    Breakpoint(start: 601, end: 800, name: TABLET),
    Breakpoint(start: 801, end: 1920, name: DESKTOP),
    Breakpoint(start: 1921, end: double.infinity, name: '4K'),
  ];
}

/// [ScreenSizes] is a class that contains the screen sizes for the app.
class ScreenSizes {
  /// [mobile] is the small screen size, set to 320x667.
  static const mobile = ScreenSize(width: 320, height: 667);

  /// [tablet] is the medium screen size, set to 375x812.
  static const tablet = ScreenSize(width: 375, height: 812);

  /// [desktop] is the large screen size, set to 428x926.
  static const desktop = ScreenSize(width: 428, height: 926);

  /// [ordered] is a getter that returns the screen sizes in order.
  static List<ScreenSize> get ordered => [mobile, tablet, desktop];
}
