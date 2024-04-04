// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_drawer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NavigationDrawerModelImpl _$$NavigationDrawerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NavigationDrawerModelImpl(
      tileHeight_double: (json['tileHeight_double'] as num?)?.toDouble(),
      backgroundColor_color: json['backgroundColor_color'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      shadowColor_color: json['shadowColor_color'] as String?,
      surfaceTintColor_color: json['surfaceTintColor_color'] as String?,
      indicatorColor_color: json['indicatorColor_color'] as String?,
      indicatorShape_shapeBorder: json['indicatorShape_shapeBorder'] == null
          ? const ShapeBorderModel()
          : ShapeBorderModel.fromJson(
              json['indicatorShape_shapeBorder'] as Map<String, dynamic>),
      indicatorSize_size: json['indicatorSize_size'] == null
          ? const SizeModel()
          : SizeModel.fromJson(
              json['indicatorSize_size'] as Map<String, dynamic>),
      labelTextStyle_textStyle: json['labelTextStyle_textStyle'] as String?,
    );

Map<String, dynamic> _$$NavigationDrawerModelImplToJson(
        _$NavigationDrawerModelImpl instance) =>
    <String, dynamic>{
      'tileHeight_double': instance.tileHeight_double,
      'backgroundColor_color': instance.backgroundColor_color,
      'elevation_double': instance.elevation_double,
      'shadowColor_color': instance.shadowColor_color,
      'surfaceTintColor_color': instance.surfaceTintColor_color,
      'indicatorColor_color': instance.indicatorColor_color,
      'indicatorShape_shapeBorder':
          instance.indicatorShape_shapeBorder?.toJson(),
      'indicatorSize_size': instance.indicatorSize_size?.toJson(),
      'labelTextStyle_textStyle': instance.labelTextStyle_textStyle,
    };
