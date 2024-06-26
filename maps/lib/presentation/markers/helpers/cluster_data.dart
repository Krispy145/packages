import 'package:maps/data/models/marker_model.dart';
import 'package:maps/presentation/markers/base_marker.dart';
import 'package:flutter_map_supercluster/flutter_map_supercluster.dart';

class MarkerClusterData<T extends MarkerModel> extends ClusterDataBase {
  final T topMarker;

  MarkerClusterData(BaseMarker marker) : topMarker = marker.markerModel as T;

  MarkerClusterData._({required this.topMarker});

  @override
  MarkerClusterData combine(MarkerClusterData data) {
    if (topMarker.score >= data.topMarker.score) {
      return MarkerClusterData._(topMarker: topMarker);
    } else {
      return MarkerClusterData._(topMarker: data.topMarker);
    }
  }
}
