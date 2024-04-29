// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:latlong2/latlong.dart';

// part 'marker_model.freezed.dart';
// part 'marker_model.g.dart';

// /// [MarkerModel] is a class that represents the main model.
// @freezed
// class MarkerModel with _$MarkerModel {
//   /// [MarkerModel] constructor.
//   const factory MarkerModel({
//     required String id,
//     @Default(1) double score,
//     required LatLngMapper position,
//   }) = _MarkerModel;

//   /// [MarkerModel] factory constructor.
//   factory MarkerModel.fromJson(Map<String, dynamic> json) => _$MarkerModelFromJson(json);
// }

import 'package:dart_mappable/dart_mappable.dart';
import 'package:latlong2/latlong.dart';

part 'marker_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class MarkerModel with MarkerModelMappable {
  final String id;
  final double score;
  final LatLng position;

  MarkerModel({
    required this.id,
    required this.score,
    required this.position,
  });
}

// class LatLngConverter implements JsonConverter<LatLng, Map<String, dynamic>> {
//   const LatLngConverter();

//   @override
//   LatLng fromJson(Map<String, dynamic> json) {
//     return LatLng(json["lat"] as double, json["lng"] as double);
//   }

//   @override
//   Map<String, dynamic> toJson(LatLng data) {
//     return {"lat": data.latitude, "lng": data.longitude};
//   }
// }

// class LatLngDataTypeConverter implements JsonConverter<Map<String, dynamic>, Map<String, dynamic>> {
//   const LatLngDataTypeConverter();

//   @override
//   Map<String, dynamic> fromJson(Map<String, dynamic> json) {
//     final latLng = LatLng(json["lat"] as double, json["lng"] as double);
//     return {
//       "lat_double": latLng.latitude,
//       "lng_double": latLng.longitude,
//     };
//   }

//   @override
//   Map<String, dynamic> toJson(Map<String, dynamic> data) {
//     final latLng = LatLng(data["lat_double"] as double, data["lng_double"] as double);
//     return {
//       "lat": latLng.latitude,
//       "lng": latLng.longitude,
//     };
//   }
// }
