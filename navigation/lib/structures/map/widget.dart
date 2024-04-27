// Import necessary packages and libraries.
import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:navigation/structures/map/store.dart";
import "package:utilities/helpers/extensions/build_context.dart";

//TODO: Discuss building flutterMap in this structure with a mapController required field to handle the map functionality
/// Enum to specify the position of the overlay on the map.
enum MapOverlayPosition {
  /// The overlay is on the left side of the screen.
  left,

  /// The overlay is on the right side of the screen.
  right,

  /// The overlay is on the bottom of the screen.
  bottom,

  /// The overlay is on the top of the screen.
  top;
}

/// A widget that combines a map and a navigator with an overlay effect.
class MapShellStructure extends StatelessWidget {
  /// The store that houses the logic of the shell structure.
  final MapShellStructureStore store;

  /// The map widget to be displayed in the map shell.
  final Widget map;

  /// The position of the overlay on the map shell.
  final MapOverlayPosition overlayPosition;

  /// The width or height of the overlay relative to the screen size.
  final double overlayPercentage;

  /// Constructor for [MapShellStructure] using a builder pattern.
  const MapShellStructure.builder({
    super.key,
    required this.store,
    required this.map,
    required this.overlayPosition,
    required this.overlayPercentage,
  });

  /// Constructor for [MapShellStructure] positioned on the left side.
  const MapShellStructure.left({
    super.key,
    required this.store,
    required this.map,
    required this.overlayPercentage,
  }) : overlayPosition = MapOverlayPosition.left;

  /// Constructor for [MapShellStructure] positioned on the right side.
  const MapShellStructure.right({
    super.key,
    required this.store,
    required this.map,
    required this.overlayPercentage,
  }) : overlayPosition = MapOverlayPosition.right;

  /// Constructor for [MapShellStructure] positioned at the bottom.
  const MapShellStructure.bottom({
    super.key,
    required this.store,
    required this.map,
    required this.overlayPercentage,
  }) : overlayPosition = MapOverlayPosition.bottom;

  /// Constructor for [MapShellStructure] positioned at the top.
  const MapShellStructure.top({
    super.key,
    required this.store,
    required this.map,
    required this.overlayPercentage,
  }) : overlayPosition = MapOverlayPosition.top;

  Axis get _axis {
    switch (overlayPosition) {
      case MapOverlayPosition.left:
      case MapOverlayPosition.right:
        return Axis.vertical;
      case MapOverlayPosition.bottom:
      case MapOverlayPosition.top:
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
      child: map,
    );
  }

  Row _buildRow() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: overlayPosition == MapOverlayPosition.left
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
      mainAxisAlignment: overlayPosition == MapOverlayPosition.top
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
          width: overlayPosition == MapOverlayPosition.left ||
                  overlayPosition == MapOverlayPosition.right
              ? _getOverlayWidth(context)
              : null,
          height: overlayPosition == MapOverlayPosition.bottom ||
                  overlayPosition == MapOverlayPosition.top
              ? _getOverlayHeight(context)
              : null,
          child: const AutoRouter(),
        );
      },
    );
  }
}
