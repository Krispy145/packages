import "package:flutter/material.dart";
import "package:utilities/sizes/spacers.dart";

/// [AppEdgeInsets] is a wrapper for [EdgeInsets] that allows you to use [Sizes] and [SizeTypes] to
/// calculate the [EdgeInsets] values.
class AppEdgeInsets extends EdgeInsets {
  /// [AppEdgeInsets.zero] is a wrapper for [EdgeInsets.zero].
  const AppEdgeInsets.zero() : super.all(0);

  /// [AppEdgeInsets.only] is a wrapper for [EdgeInsets.only] that allows you to use [Sizes] and
  /// [SizeTypes] to calculate the [EdgeInsets] values.
  AppEdgeInsets.only(
    BuildContext context, {
    Sizes? left,
    Sizes? right,
    Sizes? top,
    Sizes? bottom,
    SizeTypes type = SizeTypes.fixed,
  }) : super.only(
          left: left?.points(context, axis: Axis.horizontal, type: type) ?? 0,
          right: right?.points(context, axis: Axis.horizontal, type: type) ?? 0,
          top: top?.points(context, type: type) ?? 0,
          bottom: bottom?.points(context, type: type) ?? 0,
        );

  /// [AppEdgeInsets.symmetric] is a wrapper for [EdgeInsets.symmetric] that allows you to use
  /// [Sizes] and [SizeTypes] to calculate the [EdgeInsets] values.
  AppEdgeInsets.symmetric(
    BuildContext context, {
    Sizes? horizontal,
    Sizes? vertical,
    SizeTypes type = SizeTypes.fixed,
  }) : super.symmetric(
          horizontal: horizontal?.points(context, axis: Axis.horizontal, type: type) ?? 0,
          vertical: vertical?.points(context, type: type) ?? 0,
        );

  /// [AppEdgeInsets.all] is a wrapper for [EdgeInsets.all] that allows you to use [Sizes] and
  /// [SizeTypes] to calculate the [EdgeInsets] values.
  AppEdgeInsets.all(
    BuildContext context,
    Sizes size, {
    SizeTypes type = SizeTypes.fixed,
  }) : super.all(size.points(context, type: type));
}
