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
