import "package:flutter/material.dart";
import "package:maps/data/models/marker_model.dart";
import "package:maps/presentation/markers/base_marker.dart";

class IconMarker<T extends MarkerModel> extends BaseMarker {
  final IconData icon;
  final double? iconSize;
  final Color? backgroundColor;
  final Color? iconColor;
  IconMarker({
    required super.markerModel,
    required super.isSelected,
    super.onMarkerTapped,
    required this.icon,
    this.iconSize,
    this.iconColor,
  })  : backgroundColor = null,
        super(
          child: Icon(
            icon,
            size: iconSize ?? 36,
            color: iconColor,
          ),
        );

  IconMarker.circle({
    required super.markerModel,
    required super.isSelected,
    super.onMarkerTapped,
    required this.icon,
    this.iconSize,
    this.backgroundColor,
    this.iconColor,
  }) : super(
          child: CircleAvatar(
            backgroundColor: backgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Icon(
                icon,
                size: iconSize ?? 24,
                color: iconColor,
              ),
            ),
          ),
        );

  @override
  int get hashCode => super.hashCode ^ markerModel.id.hashCode;

  @override
  bool operator ==(covariant IconMarker other) {
    if (identical(this, other)) return true;
    return other.markerModel.id == markerModel.id;
  }
}
