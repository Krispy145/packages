import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:map/constants/marker_constants.dart';
import 'package:map/data/models/marker_model.dart';
import 'package:map/presentation/markers/base_marker.dart';
import 'package:map/presentation/markers/helpers/ringed_marker_wrapper.dart';

class LogoRingedMarker<T extends MarkerModel> extends BaseMarker {
  final String? logoUrl;

  static const String fallbackUrl = "https://www.shutterstock.com/image-vector/red-circle-round-x-black-600nw-2145374435.jpg";

  LogoRingedMarker({
    required super.markerModel,
    required super.isSelected,
    super.onMarkerTapped,
    this.logoUrl,
  }) : super(
          child: RingedMarkerWrapper(
            selected: isSelected(markerModel),
            onTapped: () => onMarkerTapped?.call(markerModel.id, markerModel.position),
            childBuilder: (context) => Image.network(logoUrl ?? fallbackUrl, fit: BoxFit.cover),
          ),
        );

  @override
  int get hashCode => super.hashCode ^ markerModel.id.hashCode;

  @override
  bool operator ==(covariant LogoRingedMarker other) {
    if (identical(this, other)) return true;
    return other.markerModel.id == markerModel.id;
  }
}
