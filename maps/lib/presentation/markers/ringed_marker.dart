import 'package:flutter/material.dart';
import 'package:maps/data/models/marker_model.dart';
import 'package:maps/presentation/markers/base_marker.dart';
import 'package:maps/presentation/markers/helpers/ringed_marker_wrapper.dart';
import 'package:widgets/images/options/network.dart';
import 'package:widgets/images/widget.dart';

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
            onTapped: () => onMarkerTapped?.call(markerModel),
            childBuilder: (context) => DOImage.network(
              logoUrl ?? fallbackUrl,
              options: NetworkImageOptions(fit: BoxFit.cover),
            ),

            //  CachedNetworkImage(imageUrl: logoUrl ?? fallbackUrl, fit: BoxFit.cover),
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
