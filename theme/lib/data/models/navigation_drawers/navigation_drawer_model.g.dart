// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_drawer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NavigationDrawerModelImpl _$$NavigationDrawerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NavigationDrawerModelImpl(
      tileHeight_double: (json['tileHeight_double'] as num?)?.toDouble(),
      backgroundColor_themeColorString:
          json['backgroundColor_themeColorString'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      shadowColor_themeColorString:
          json['shadowColor_themeColorString'] as String?,
      surfaceTintColor_themeColorString:
          json['surfaceTintColor_themeColorString'] as String?,
      indicatorColor_themeColorString:
          json['indicatorColor_themeColorString'] as String?,
      indicatorShape_shapeBorder: json['indicatorShape_shapeBorder'] == null
          ? const ShapeBorderModel()
          : ShapeBorderModel.fromJson(
              json['indicatorShape_shapeBorder'] as Map<String, dynamic>),
      indicatorSize_size: json['indicatorSize_size'] == null
          ? const SizeModel()
          : SizeModel.fromJson(
              json['indicatorSize_size'] as Map<String, dynamic>),
      labelTextStyle_textStyleString:
          json['labelTextStyle_textStyleString'] as String?,
    );

Map<String, dynamic> _$$NavigationDrawerModelImplToJson(
        _$NavigationDrawerModelImpl instance) =>
    <String, dynamic>{
      'tileHeight_double': instance.tileHeight_double,
      'backgroundColor_themeColorString':
          instance.backgroundColor_themeColorString,
      'elevation_double': instance.elevation_double,
      'shadowColor_themeColorString': instance.shadowColor_themeColorString,
      'surfaceTintColor_themeColorString':
          instance.surfaceTintColor_themeColorString,
      'indicatorColor_themeColorString':
          instance.indicatorColor_themeColorString,
      'indicatorShape_shapeBorder':
          instance.indicatorShape_shapeBorder?.toJson(),
      'indicatorSize_size': instance.indicatorSize_size?.toJson(),
      'labelTextStyle_textStyleString': instance.labelTextStyle_textStyleString,
    };
