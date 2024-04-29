import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapConstants {
  static const double maxZoomLevel = 16;
  static const double minZoomLevel = 2;
  static const googlePrefix = "https://maps.googleapis.com";
  static const googlePlaceSearchSuffix = "maps/api/place";
  static const googlePlacePhotoSuffix = "$googlePlaceSearchSuffix/photo";

  static LatLngBounds londonBounds = LatLngBounds(const LatLng(51.547536, -0.259400), const LatLng(51.468703, -0.012324));
}
