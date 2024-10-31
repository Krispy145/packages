import 'package:flutter/material.dart';
import 'package:maps/data/models/marker_model.dart';
import 'package:maps/presentation/markers/base_marker.dart';
import 'package:maps/presentation/markers/icon_marker.dart';
import "package:widgets/images/cached_network_provider.dart";

class CircleImageMarker<T extends MarkerModel> extends BaseMarker {
  final String? logoUrl;
  final Widget? fallbackWidget;

  CircleImageMarker({
    required super.markerModel,
    required super.isSelected,
    this.fallbackWidget,
    super.onMarkerTapped,
    this.logoUrl,
  }) : super(
          child: logoUrl != null
              ? CircleAvatar(
                  backgroundImage: LYCachedNetworkImageProvider(logoUrl),
                )
              : fallbackWidget ??
                  IconMarker(
                    markerModel: markerModel,
                    isSelected: isSelected,
                    icon: Icons.location_pin,
                  ).child,
        );

  @override
  int get hashCode => super.hashCode ^ markerModel.id.hashCode;

  @override
  bool operator ==(covariant CircleImageMarker other) {
    if (identical(this, other)) return true;
    return other.markerModel.id == markerModel.id;
  }
}
