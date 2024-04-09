// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardModelImpl _$$CardModelImplFromJson(Map<String, dynamic> json) =>
    _$CardModelImpl(
      color_color: json['color_color'] as String?,
      shadowColor_color: json['shadowColor_color'] as String?,
      surfaceTintColor_color: json['surfaceTintColor_color'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      margin_edgeInsets: json['margin_edgeInsets'] == null
          ? const EdgeInsetsModel()
          : EdgeInsetsModel.fromJson(
              json['margin_edgeInsets'] as Map<String, dynamic>),
      shape_shapeBorder: json['shape_shapeBorder'] == null
          ? null
          : ShapeBorderModel.fromJson(
              json['shape_shapeBorder'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CardModelImplToJson(_$CardModelImpl instance) =>
    <String, dynamic>{
      'color_color': instance.color_color,
      'shadowColor_color': instance.shadowColor_color,
      'surfaceTintColor_color': instance.surfaceTintColor_color,
      'elevation_double': instance.elevation_double,
      'margin_edgeInsets': instance.margin_edgeInsets?.toJson(),
      'shape_shapeBorder': instance.shape_shapeBorder?.toJson(),
    };
