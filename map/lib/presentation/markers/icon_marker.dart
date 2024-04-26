import 'package:flutter/material.dart';
import 'package:map/data/models/marker_model.dart';
import 'package:map/presentation/markers/base_marker.dart';

class IconMarker<T extends MarkerModel> extends BaseMarker {
  final IconData icon;
  final double? iconSize;
  IconMarker({
    required super.markerModel,
    required super.isSelected,
    super.onMarkerTapped,
    required this.icon,
    this.iconSize,
  }) : super(
          child: Icon(
            icon,
            size: iconSize ?? 36,
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
