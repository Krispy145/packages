// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:map/presentation/markers/base_cluster_marker.dart';
import 'package:map/presentation/markers/helpers/ringed_marker_wrapper.dart';

class NumberRingedMarker extends BaseClusterMarker {
  NumberRingedMarker({
    required super.markerCount,
    required super.topMarkerModel,
    required super.isSelected,
  }) : super(
          child: RingedMarkerWrapper(
            selected: false,
            onTapped: null,
            childBuilder: (context) => Text(markerCount.toString(), style: Theme.of(context).textTheme.titleMedium),
          ),
        );
}
