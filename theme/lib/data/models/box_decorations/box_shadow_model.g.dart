// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_shadow_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoxShadowModelImpl _$$BoxShadowModelImplFromJson(Map<String, dynamic> json) =>
    _$BoxShadowModelImpl(
      color_color: json['color_color'] as String?,
      offset_offset: json['offset_offset'] == null
          ? const OffsetModel()
          : OffsetModel.fromJson(json['offset_offset'] as Map<String, dynamic>),
      blurRadius_double: (json['blurRadius_double'] as num?)?.toDouble(),
      spreadRadius_double: (json['spreadRadius_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$BoxShadowModelImplToJson(
        _$BoxShadowModelImpl instance) =>
    <String, dynamic>{
      'color_color': instance.color_color,
      'offset_offset': instance.offset_offset?.toJson(),
      'blurRadius_double': instance.blurRadius_double,
      'spreadRadius_double': instance.spreadRadius_double,
    };
