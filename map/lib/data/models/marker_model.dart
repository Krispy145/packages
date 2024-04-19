import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:latlong2/latlong.dart';

part 'marker_model.freezed.dart';
part 'marker_model.g.dart';

/// [MarkerModel] is a class that represents the main model.
@freezed
class MarkerModel with _$MarkerModel {
  /// [MarkerModel] constructor.
  const factory MarkerModel({
    required String id,
    @Default(1) double score,
    @LatLngConverter() required LatLng position,
  }) = _MarkerModel;

  /// [MarkerModel] factory constructor.
  factory MarkerModel.fromJson(Map<String, dynamic> json) => _$MarkerModelFromJson(json);
}

class LatLngConverter implements JsonConverter<LatLng, Map<String, dynamic>> {
  const LatLngConverter();

  @override
  LatLng fromJson(Map<String, dynamic> json) {
    return LatLng(json["lat"] as double, json["lng"] as double);
  }

  @override
  Map<String, dynamic> toJson(LatLng data) => data.toJson();
}

class LatLngDataTypeConverter implements JsonConverter<Map<String, dynamic>, Map<String, dynamic>> {
  const LatLngDataTypeConverter();

  @override
  Map<String, dynamic> fromJson(Map<String, dynamic> json) {
    final latLng = LatLng(json["lat"] as double, json["lng"] as double);
    return {
      "lat_double": latLng.latitude,
      "lng_double": latLng.longitude,
    };
  }

  @override
  Map<String, dynamic> toJson(Map<String, dynamic> data) {
    final latLng = LatLng(data["lat_double"] as double, data["lng_double"] as double);
    return {
      "lat": latLng.latitude,
      "lng": latLng.longitude,
    };
  }
}
