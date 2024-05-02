import 'package:dart_mappable/dart_mappable.dart';
import 'package:latlong2/latlong.dart';
import 'package:maps/data/models/lat_lng.mapper.dart';
import 'package:maps/helpers/geo_points/math.dart';

import 'utils.dart' as utils;

part 'geo_reference.mapper.dart';

// /// A model corresponds to Cloud Firestore as geoPoint field.
// class GeoPointModel {
//   /// Instantiates [GeoPointModel].
//   const GeoPointModel(this.geoPoint);

//   /// [GeoPoint] of the location.
//   final LatLng geoPoint;

//   /// Returns latitude of the location.
//   double get latitude => geoPoint.latitude;

//   /// Returns longitude of the location.
//   double get longitude => geoPoint.longitude;

//   /// Returns geoHash of [GeoPointModel].
// String get geoHash => encode(latitude: geoPoint.latitude, longitude: geoPoint.longitude);

//   /// Returns all neighbors of [GeoPointModel].
//   List<String> get neighbors => utils.neighborGeoHashesOf(geoHash: geoHash);

//   /// Returns distance in kilometers between [GeoPointModel] and given
//   /// [geoPoint].
//   double distanceBetweenInKm({required final LatLng geoPoint}) => distanceInKm(geoPoint1: this.geoPoint, geoPoint2: geoPoint);

//   /// Returns [geoPoint] and [geoHash] as Map<String, dynamic>. Can be used when
//   /// adding or updating to Firestore document.
//   Map<String, dynamic> get data => {'geoPoint': const LatLngMapper().encode(geoPoint), 'geoHash': geoHash};
// }

@MappableClass(caseStyle: CaseStyle.snakeCase, includeCustomMappers: [LatLngMapper()])
class GeoReference with GeoReferenceMappable {
  final LatLng geoPoint;
  GeoReference({
    required this.geoPoint,
  });

  /// Returns latitude of the location.
  double get latitude => geoPoint.latitude;

  /// Returns longitude of the location.
  double get longitude => geoPoint.longitude;

  /// Returns geoHash of [GeoPointModel].
  String get geoHash => encode(latitude: geoPoint.latitude, longitude: geoPoint.longitude);

  /// Returns all neighbors of [GeoPointModel].
  List<String> get neighbors => utils.neighborGeoHashesOf(geoHash: geoHash);

  /// Returns distance in kilometers between [GeoPointModel] and given
  /// [geoPoint].
  double distanceBetweenInKm({required final LatLng geoPoint}) => distanceInKm(geoPoint1: this.geoPoint, geoPoint2: geoPoint);

  /// Returns [geoPoint] and [geoHash] as Map<String, dynamic>. Can be used when
  /// adding or updating to Firestore document.
  Map<String, dynamic> get data => {'geo_point': const LatLngMapper().encode(geoPoint), 'geo_hash': geoHash};
}
