// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardModelImpl _$$CardModelImplFromJson(Map<String, dynamic> json) =>
    _$CardModelImpl(
      color_themeColorString: json['color_themeColorString'] as String?,
      shadowColor_themeColorString:
          json['shadowColor_themeColorString'] as String?,
      surfaceTintColor_themeColorString:
          json['surfaceTintColor_themeColorString'] as String?,
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
      'color_themeColorString': instance.color_themeColorString,
      'shadowColor_themeColorString': instance.shadowColor_themeColorString,
      'surfaceTintColor_themeColorString':
          instance.surfaceTintColor_themeColorString,
      'elevation_double': instance.elevation_double,
      'margin_edgeInsets': instance.margin_edgeInsets?.toJson(),
      'shape_shapeBorder': instance.shape_shapeBorder?.toJson(),
    };
