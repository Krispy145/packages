import "package:maps/data/models/marker_model.dart";
import "package:maps/presentation/markers/base_marker.dart";

abstract class BaseClusterMarker<T extends MarkerModel> extends BaseMarker {
  final int markerCount;

  BaseClusterMarker({
    required this.markerCount,
    required MarkerModel topMarkerModel,
    required super.child,
    required super.isSelected,
  }) : super(markerModel: topMarkerModel);

  @override
  int get hashCode =>
      super.hashCode ^ markerModel.id.hashCode ^ markerCount.hashCode;

  @override
  bool operator ==(covariant BaseMarker<MarkerModel> other) {
    if (other is BaseClusterMarker) {
      return markerCount == other.markerCount &&
          markerModel == other.markerModel;
    }
    return false;
  }
}
