// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarkerModelImpl _$$MarkerModelImplFromJson(Map<String, dynamic> json) =>
    _$MarkerModelImpl(
      id: json['id'] as String,
      score: (json['score'] as num?)?.toDouble() ?? 1,
      position: const LatLngConverter()
          .fromJson(json['position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MarkerModelImplToJson(_$MarkerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'score': instance.score,
      'position': const LatLngConverter().toJson(instance.position),
    };
