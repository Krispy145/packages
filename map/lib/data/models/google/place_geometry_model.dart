import 'package:dart_mappable/dart_mappable.dart';
import 'package:latlong2/latlong.dart';
import 'package:map/data/models/lat_lng.mapper.dart';

import 'google_bounds_model.dart';

part 'place_geometry_model.mapper.dart';

@MappableClass(
    caseStyle: CaseStyle.snakeCase, includeCustomMappers: [LatLngMapper()])
class PlaceGeometry with PlaceGeometryMappable {
  final LatLng location;
  final GoogleBounds viewport;

  const PlaceGeometry({
    required this.location,
    required this.viewport,
  });
}
