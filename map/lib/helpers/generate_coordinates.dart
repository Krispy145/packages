import 'dart:math';

import 'package:latlong2/latlong.dart';

class LatLngGenerator {
  static LatLng randomInLondon() {
    // Define London's latitude and longitude bounds
    const double minLatitude = 51.28;
    const double maxLatitude = 51.69;
    const double minLongitude = -0.51;
    const double maxLongitude = 0.24;

    // Generate random coordinates within London bounds
    final random = Random();
    final latitude = minLatitude + random.nextDouble() * (maxLatitude - minLatitude);
    final longitude = minLongitude + random.nextDouble() * (maxLongitude - minLongitude);

    return LatLng(latitude, longitude);
  }
}
