// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DrawerModelImpl _$$DrawerModelImplFromJson(Map<String, dynamic> json) =>
    _$DrawerModelImpl(
      backgroundColor_themeColorString:
          json['backgroundColor_themeColorString'] as String?,
      scrimColor_themeColorString:
          json['scrimColor_themeColorString'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      shadowColor_themeColorString:
          json['shadowColor_themeColorString'] as String?,
      surfaceTintColor_themeColorString:
          json['surfaceTintColor_themeColorString'] as String?,
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
      'backgroundColor_themeColorString':
          instance.backgroundColor_themeColorString,
      'scrimColor_themeColorString': instance.scrimColor_themeColorString,
      'elevation_double': instance.elevation_double,
      'shadowColor_themeColorString': instance.shadowColor_themeColorString,
      'surfaceTintColor_themeColorString':
          instance.surfaceTintColor_themeColorString,
      'shape_outlinedBorder': instance.shape_outlinedBorder?.toJson(),
      'endShape_outlinedBorder': instance.endShape_outlinedBorder?.toJson(),
      'width_double': instance.width_double,
    };
