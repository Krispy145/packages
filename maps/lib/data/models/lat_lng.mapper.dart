import 'package:dart_mappable/dart_mappable.dart';
import 'package:latlong2/latlong.dart';

class LatLngMapper extends SimpleMapper<LatLng> {
  const LatLngMapper();
  @override
  LatLng decode(dynamic value) {
    return LatLng(value["lat"] as double, value["lng"] as double);
  }

  @override
  dynamic encode(LatLng self) {
    return {"lat": self.latitude, "lng": self.longitude};
  }
}
