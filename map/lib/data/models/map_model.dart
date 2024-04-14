import 'package:freezed_annotation/freezed_annotation.dart';

part 'map_model.freezed.dart';
part 'map_model.g.dart';

/// [MapModel] is a class that represents the main model.
@freezed
class MapModel with _$MapModel {
  /// [MapModel] constructor.
  const factory MapModel({
    required String id,
     String? name,    
  }) = _MapModel;

  /// [MapModel] factory constructor.
  factory MapModel.fromJson(Map<String, dynamic> json) => _$MapModelFromJson(json);
}
