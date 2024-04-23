import 'package:dart_mappable/dart_mappable.dart';
import 'package:latlong2/latlong.dart';

class LatLngMapper extends SimpleMapper<LatLng> {
  @override
  LatLng decode(dynamic value) {
    return LatLng(value["lat"] as double, value["lng"] as double);
  }

  @override
  dynamic encode(LatLng self) {
    return {"lat": self.latitude, "lng": self.longitude};
  }

  //   @override
//   LatLng fromJson(Map<String, dynamic> json) {
//     return LatLng(json["lat"] as double, json["lng"] as double);
//   }

//   @override
//   Map<String, dynamic> toJson(LatLng data) {
//     return {"lat": data.latitude, "lng": data.longitude};
//   }
// }
}
