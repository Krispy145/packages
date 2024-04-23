import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapConstants {
  static const String mapboxAPIKey = "pk.eyJ1IjoiZGlnaXRhbC1vYXNpcy1kZXYiLCJhIjoiY2x2MHViZHpsMDAybjJscDhkOXVtNjVtZCJ9.fh4M9yFOAzJIOIyGNGQdDg";
  static const double maxZoomLevel = 16;
  static const double minZoomLevel = 2;

  static LatLngBounds londonBounds = LatLngBounds(const LatLng(51.547536, -0.259400), const LatLng(51.468703, -0.012324));
}
