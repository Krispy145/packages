import 'package:dart_mappable/dart_mappable.dart';
import 'package:latlong2/latlong.dart';
import 'package:map/data/models/lat_lng.mapper.dart';

part 'google_bounds_model.mapper.dart';

@MappableClass(
    caseStyle: CaseStyle.snakeCase, includeCustomMappers: [LatLngMapper()])
class GoogleBounds with GoogleBoundsMappable {
  final LatLng northeast;
  final LatLng southwest;

  const GoogleBounds({
    required this.northeast,
    required this.southwest,
  });
}
