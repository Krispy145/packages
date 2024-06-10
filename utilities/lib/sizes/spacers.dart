// ignore_for_file: omit_local_variable_types

import "package:flutter/material.dart";
import "package:utilities/sizes/screen_size.dart";

//TODO: Figure out way to add functions for fromJson, fromAssetBundle and fromNetwork
/// [SizeTypes] is an enum that allows you to specify the type of size you want to use.
enum SizeTypes {
  /// [fixed] is a size that will always be the same regardless of the screen size.
  fixed,

  /// [scaling] is a size that will scale based on the screen size.
  scaling;
}

/// [Sizes] is an enum that allows you to specify the size you want to use.
enum Sizes {
  /// [zero] is a size that will always be 0 regardless of the screen size.
  zero,

  /// [xxxxs] is a size that will always be 1 regardless of the screen size.
  xxxxs,

  /// [xxxs] is a size that will always be 1 for small screens, 2 for medium screens and 3 for large screens.
  xxxs,

  /// [xxs] is a size that will always be 2 for small screens, 4 for medium screens and 6 for large screens.
  xxs,

  /// [xs] is a size that will always be 4 for small screens, 8 for medium screens and 12 for large screens.
  xs,

  /// [s] is a size that will always be 8 for small screens, 12 for medium screens and 16 for large screens.
  s,

  /// [m] is a size that will always be 12 for small screens, 16 for medium screens and 24 for large screens.
  m,

  /// [l] is a size that will always be 16 for small screens, 24 for medium screens and 32 for large screens.
  l,

  /// [xl] is a size that will always be 24 for small screens, 32 for medium screens and 40 for large screens.
  xl,

  /// [xxl] is a size that will always be 32 for small screens, 48 for medium screens and 56 for large screens.
  xxl,

  /// [xxxl] is a size that will always be 48 for small screens, 64 for medium screens and 80 for large screens.
  xxxl,

  /// [xxxxl] is a size that will always be 96 for small screens, 128 for medium screens and 160 for large screens.
  xxxxl;

  /// [spacer] is a getter that returns a [SizedBox] with the size of the spacer based on the screen size
  Widget spacer({bool vertical = true, SizeTypes type = SizeTypes.fixed, bool sliver = false}) {
    final axis = vertical ? Axis.vertical : Axis.horizontal;
    return _AppSpacer(
      size: this,
      axis: axis,
      type: type,
      sliver: sliver,
    );
  }

  /// [points] is a getter that returns the pixel size for the spacer based on the screen size
  double points(
    BuildContext context, {
    bool vertical = true,
    SizeTypes type = SizeTypes.fixed,
  }) {
    final axis = vertical ? Axis.vertical : Axis.horizontal;
    switch (type) {
      case SizeTypes.fixed:
        return _getSize();
      case SizeTypes.scaling:
        final screenSizePoints = MediaQuery.sizeOf(context);
        final screenDimension = axis == Axis.vertical ? screenSizePoints.height : screenSizePoints.width;

        final ordered = ScreenSizes.ordered;

        if (screenDimension >= ordered.last.dimension(axis)) {
          return _getSize(screenSize: ordered.last);
        } else if (screenDimension <= ordered.first.dimension(axis)) {
          return _getSize(screenSize: ordered.first);
        } else {
          final indexAfter = ordered.indexWhere((size) => size.dimension(axis) > screenDimension);
          final sizeAfter = ordered[indexAfter];
          final sizeBefore = ordered[indexAfter - 1];
          final dimensionAfter = sizeAfter.dimension(axis);
          final dimensionBefore = sizeBefore.dimension(axis);
          final pointsAfter = _getSize(screenSize: sizeAfter);
          final pointsBefore = _getSize(screenSize: sizeBefore);

          final percentage = (screenDimension - dimensionBefore) / (dimensionAfter - dimensionBefore);
          final points = pointsBefore + (pointsAfter - pointsBefore) * percentage;
          return points;
        }
    }
  }

  /// Gets the pixel size for the spacer based on the screen size (defaults to ScreenSize.medium)
  double _getSize({ScreenSize? screenSize}) {
    final _AppSizesForScreenSize sizes;
    switch (this) {
      case Sizes.zero:
        sizes = _AppSizesForScreenSize(
          small: 0.0001,
          medium: 0.0001,
          large: 0.0001,
        );
        break;
      case Sizes.xxxxs:
        sizes = _AppSizesForScreenSize(small: 1, medium: 1, large: 1);
        break;
      case Sizes.xxxs:
        sizes = _AppSizesForScreenSize(small: 1, medium: 2, large: 3);
        break;
      case Sizes.xxs:
        sizes = _AppSizesForScreenSize(small: 2, medium: 4, large: 6);
        break;
      case Sizes.xs:
        sizes = _AppSizesForScreenSize(small: 4, medium: 8, large: 12);
        break;
      case Sizes.s:
        sizes = _AppSizesForScreenSize(small: 8, medium: 12, large: 16);
        break;
      case Sizes.m:
        sizes = _AppSizesForScreenSize(small: 12, medium: 16, large: 24);
        break;
      case Sizes.l:
        sizes = _AppSizesForScreenSize(small: 16, medium: 24, large: 32);
        break;
      case Sizes.xl:
        sizes = _AppSizesForScreenSize(small: 24, medium: 32, large: 40);
        break;
      case Sizes.xxl:
        sizes = _AppSizesForScreenSize(small: 32, medium: 48, large: 56);
        break;
      case Sizes.xxxl:
        sizes = _AppSizesForScreenSize(small: 48, medium: 64, large: 80);
        break;
      case Sizes.xxxxl:
        sizes = _AppSizesForScreenSize(small: 96, medium: 128, large: 160);
        break;
    }
    switch (screenSize) {
      case ScreenSizes.mobile:
        return sizes.small;
      case ScreenSizes.tablet:
        return sizes.medium;
      case ScreenSizes.desktop:
        return sizes.large;
      default:
        return sizes.medium;
    }
  }
}

class _AppSpacer extends StatelessWidget {
  final Sizes size;
  final SizeTypes type;
  final Axis axis;
  final bool sliver;
  const _AppSpacer({
    required this.size,
    required this.axis,
    required this.type,
    required this.sliver,
  });

  @override
  Widget build(BuildContext context) {
    final double width = axis == Axis.horizontal ? size.points(context, vertical: false, type: type) : 0;
    final double height = axis == Axis.vertical ? size.points(context, type: type) : 0;
    if (sliver) {
      return SliverToBoxAdapter(child: SizedBox(width: width, height: height));
    } else {
      return SizedBox(width: width, height: height);
    }
  }
}

/// Used to specify the size for each [Sizes] based on the [ScreenSize]
class _AppSizesForScreenSize {
  final double small;
  final double medium;
  final double large;

  _AppSizesForScreenSize({
    required this.small,
    required this.medium,
    required this.large,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      "small": small,
      "medium": medium,
      "large": large,
    };
  }
}
