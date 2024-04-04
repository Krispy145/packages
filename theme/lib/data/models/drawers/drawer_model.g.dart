// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DrawerModelImpl _$$DrawerModelImplFromJson(Map<String, dynamic> json) =>
    _$DrawerModelImpl(
      backgroundColor_color: json['backgroundColor_color'] as String?,
      scrimColor_color: json['scrimColor_color'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      shadowColor_color: json['shadowColor_color'] as String?,
      surfaceTintColor_color: json['surfaceTintColor_color'] as String?,
      shape_outlinedBorder: json['shape_outlinedBorder'] == null
          ? const OutlinedBorderModel()
          : OutlinedBorderModel.fromJson(
              json['shape_outlinedBorder'] as Map<String, dynamic>),
      endShape_outlinedBorder: json['endShape_outlinedBorder'] == null
          ? const OutlinedBorderModel()
          : OutlinedBorderModel.fromJson(
              json['endShape_outlinedBorder'] as Map<String, dynamic>),
      width_double: (json['width_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DrawerModelImplToJson(_$DrawerModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor_color': instance.backgroundColor_color,
      'scrimColor_color': instance.scrimColor_color,
      'elevation_double': instance.elevation_double,
      'shadowColor_color': instance.shadowColor_color,
      'surfaceTintColor_color': instance.surfaceTintColor_color,
      'shape_outlinedBorder': instance.shape_outlinedBorder?.toJson(),
      'endShape_outlinedBorder': instance.endShape_outlinedBorder?.toJson(),
      'width_double': instance.width_double,
    };
