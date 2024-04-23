import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:map/constants/marker_constants.dart';
import 'package:map/data/models/lat_lng.mapper.dart';
import 'package:map/data/models/marker_model.dart';

abstract class BaseMarker<T extends MarkerModel> extends Marker {
  final T markerModel;
  final bool Function(T markerModel) isSelected;
  final Function(String id, LatLngMapper position)? onMarkerTapped;
  BaseMarker({
    required this.markerModel,
    required Widget child,
    required this.isSelected,
    this.onMarkerTapped,
  }) : super(
          width: isSelected(markerModel) ? MarkerConstants.selectedSize : MarkerConstants.unselectedSize,
          height: isSelected(markerModel) ? MarkerConstants.selectedSize : MarkerConstants.unselectedSize,
          point: LatLngMapper().decode(markerModel.position.decode),
          child: child,
        );

  @override
  int get hashCode => super.hashCode ^ markerModel.id.hashCode;

  @override
  bool operator ==(covariant BaseMarker other) {
    if (identical(this, other)) return true;
    return other.markerModel.id == markerModel.id;
  }
}
