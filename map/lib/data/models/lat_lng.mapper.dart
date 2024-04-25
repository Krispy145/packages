import 'package:dart_mappable/dart_mappable.dart';
import 'package:latlong2/latlong.dart';
import 'package:map/utils/loggers.dart';
import 'package:utilities/logger/logger.dart';

class LatLngMapper extends SimpleMapper<LatLng> {
  const LatLngMapper();
  @override
  LatLng decode(dynamic value) {
    AppLogger.print("LatLngMapper.decode: $value", [MapLoggers.search]);
    return LatLng(value["lat"] as double, value["lng"] as double);
  }

  @override
  dynamic encode(LatLng self) {
    AppLogger.print("LatLngMapper.encode: $self", [MapLoggers.search]);
    return {"lat": self.latitude, "lng": self.longitude};
  }
}
