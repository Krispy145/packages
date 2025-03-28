// Import necessary packages and libraries.
import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:navigation/structures/overlay/store.dart";
import "package:utilities/helpers/extensions/build_context.dart";

//TODO: Discuss building flutterMap in this structure with a bodyController required field to handle the body functionality
/// Enum to specify the position of the overlay on the body.
enum OverlayPosition {
  /// The overlay is on the left side of the screen.
  left,

  /// The overlay is on the right side of the screen.
  right,

  /// The overlay is on the bottom of the screen.
  bottom,

  /// The overlay is on the top of the screen.
  top;
}

/// A widget that combines a body and a navigator with an overlay effect.
class OverlayShellStructure extends StatelessWidget {
  /// The store that houses the logic of the shell structure.
  final OverlayShellStructureStore store;

  /// The body widget to be displayed in the body shell.
  final Widget body;
  final Widget overlay;

  /// The position of the overlay on the body shell.
  final OverlayPosition overlayPosition;

  /// The width or height of the overlay relative to the screen size.
  final double overlayPercentage;

  /// Constructor for [OverlayShellStructure] using a builder pattern.
  const OverlayShellStructure.builder({
    super.key,
    required this.store,
    required this.body,
    this.overlay = const AutoRouter(),
    required this.overlayPosition,
    required this.overlayPercentage,
  });

  /// Constructor for [OverlayShellStructure] positioned on the left side.
  const OverlayShellStructure.left({
    super.key,
    required this.store,
    required this.body,
    this.overlay = const AutoRouter(),
    required this.overlayPercentage,
  }) : overlayPosition = OverlayPosition.left;

  /// Constructor for [OverlayShellStructure] positioned on the right side.
  const OverlayShellStructure.right({
    super.key,
    required this.store,
    required this.body,
    this.overlay = const AutoRouter(),
    required this.overlayPercentage,
  }) : overlayPosition = OverlayPosition.right;

  /// Constructor for [OverlayShellStructure] positioned at the bottom.
  const OverlayShellStructure.bottom({
    super.key,
    required this.store,
    required this.body,
    this.overlay = const AutoRouter(),
    required this.overlayPercentage,
  }) : overlayPosition = OverlayPosition.bottom;

  /// Constructor for [OverlayShellStructure] positioned at the top.
  const OverlayShellStructure.top({
    super.key,
    required this.store,
    required this.body,
    this.overlay = const AutoRouter(),
    required this.overlayPercentage,
  }) : overlayPosition = OverlayPosition.top;

  Axis get _axis {
    switch (overlayPosition) {
      case OverlayPosition.left:
      case OverlayPosition.right:
        return Axis.vertical;
      case OverlayPosition.bottom:
      case OverlayPosition.top:
        return Axis.horizontal;
    }
  }

  /// Calculate the width of the overlay based on screen size and overlay percentage.
  double _getOverlayWidth(BuildContext context) {
    return context.screenWidth * overlayPercentage;
  }

  /// Calculate the height of the overlay based on screen size and overlay percentage.
  double _getOverlayHeight(BuildContext context) {
    return context.screenHeight * overlayPercentage;
  }

  @override
  Widget build(BuildContext context) {
    return OverlayPortal(
      controller: store.overlayPortalController,
      overlayChildBuilder: (context) =>
          _axis == Axis.vertical ? _buildRow() : _buildColumn(),
      // overlayChildBuilder: (context) => _overlay(),
      child: body,
    );
  }

  Row _buildRow() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: overlayPosition == OverlayPosition.left
          ? MainAxisAlignment.start
          : MainAxisAlignment.end,
      children: [
        _overlay(),
      ],
    );
  }

  Column _buildColumn() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: overlayPosition == OverlayPosition.top
          ? MainAxisAlignment.start
          : MainAxisAlignment.end,
      children: [
        _overlay(),
      ],
    );
  }

  Observer _overlay() {
    return Observer(
      builder: (context) {
        return SizedBox(
          width: overlayPosition == OverlayPosition.left ||
                  overlayPosition == OverlayPosition.right
              ? _getOverlayWidth(context)
              : null,
          height: overlayPosition == OverlayPosition.bottom ||
                  overlayPosition == OverlayPosition.top
              ? _getOverlayHeight(context)
              : null,
          child: overlay,
        );
      },
    );
  }
}
