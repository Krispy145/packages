import "dart:math";

import "package:latlong2/latlong.dart";
import "package:maps/data/models/lat_lng.mapper.dart";

class LatLngGenerator {
  static LatLngMapper randomInLondon() {
    // Define London's latitude and longitude bounds
    const minLatitude = 51.28;
    const maxLatitude = 51.69;
    const minLongitude = -0.51;
    const maxLongitude = 0.24;

    // Generate random coordinates within London bounds
    final random = Random();
    final latitude = minLatitude + random.nextDouble() * (maxLatitude - minLatitude);
    final longitude = minLongitude + random.nextDouble() * (maxLongitude - minLongitude);

    return const LatLngMapper().encode(LatLng(latitude, longitude)) as LatLngMapper;
  }
}
