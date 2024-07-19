// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:maps/data/models/marker_model.dart';
import 'package:maps/presentation/markers/base_cluster_marker.dart';
import 'package:maps/presentation/markers/helpers/ringed_marker_wrapper.dart';

class NumberRingedMarker extends BaseClusterMarker {
  final Function(MarkerModel markerModel)? onTopMarkerTapped;
  NumberRingedMarker({
    required super.markerCount,
    required super.topMarkerModel,
    required super.isSelected,
    required this.onTopMarkerTapped,
  }) : super(
          child: RingedMarkerWrapper(
            selected: isSelected(topMarkerModel),
            onTapped: () => onTopMarkerTapped?.call(topMarkerModel),
            childBuilder: (context) => Text(markerCount.toString(), style: Theme.of(context).textTheme.titleMedium),
          ),
        );
}
