import "package:flutter/material.dart";
import "package:flutter_map/flutter_map.dart";
import "package:maps/constants/marker_constants.dart";
import "package:maps/data/models/marker_model.dart";

class BaseMarker<T extends MarkerModel> extends Marker {
  final T markerModel;
  final bool Function(T markerModel) isSelected;
  final void Function(T markerModel)? onMarkerTapped;
  BaseMarker({
    required this.markerModel,
    required Widget child,
    required this.isSelected,
    this.onMarkerTapped,
  }) : super(
          width: isSelected(markerModel) ? MarkerConstants.selectedSize : MarkerConstants.unselectedSize,
          height: isSelected(markerModel) ? MarkerConstants.selectedSize : MarkerConstants.unselectedSize,
          point: markerModel.position,
          child: GestureDetector(onTap: () => onMarkerTapped?.call(markerModel), child: child),
        );

  @override
  int get hashCode => super.hashCode ^ markerModel.id.hashCode;

  @override
  bool operator ==(covariant BaseMarker other) {
    if (identical(this, other)) return true;
    return other.markerModel.id == markerModel.id && other.markerModel.position == markerModel.position;
  }
}
