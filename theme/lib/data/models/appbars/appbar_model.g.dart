// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appbar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppbarModelImpl _$$AppbarModelImplFromJson(Map<String, dynamic> json) =>
    _$AppbarModelImpl(
      color_themeColorString: json['color_themeColorString'] as String?,
      backgroundColor_themeColorString:
          json['backgroundColor_themeColorString'] as String?,
      foregroundColor_themeColorString:
          json['foregroundColor_themeColorString'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      scrolledUnderElevation_double:
          (json['scrolledUnderElevation_double'] as num?)?.toDouble(),
      shadowColor_themeColorString:
          json['shadowColor_themeColorString'] as String?,
      surfaceTintColor_themeColorString:
          json['surfaceTintColor_themeColorString'] as String?,
      shape_shapeBorder: json['shape_shapeBorder'] == null
          ? null
          : ShapeBorderModel.fromJson(
              json['shape_shapeBorder'] as Map<String, dynamic>),
      centerTitle_bool: json['centerTitle_bool'] as bool?,
      titleSpacing_double: (json['titleSpacing_double'] as num?)?.toDouble(),
      toolbarHeight_double: (json['toolbarHeight_double'] as num?)?.toDouble(),
      toolbarTextStyle_textStyleString:
          json['toolbarTextStyle_textStyleString'] as String?,
      titleTextStyle_textStyleString:
          json['titleTextStyle_textStyleString'] as String?,
    );

Map<String, dynamic> _$$AppbarModelImplToJson(_$AppbarModelImpl instance) =>
    <String, dynamic>{
      'color_themeColorString': instance.color_themeColorString,
      'backgroundColor_themeColorString':
          instance.backgroundColor_themeColorString,
      'foregroundColor_themeColorString':
          instance.foregroundColor_themeColorString,
      'elevation_double': instance.elevation_double,
      'scrolledUnderElevation_double': instance.scrolledUnderElevation_double,
      'shadowColor_themeColorString': instance.shadowColor_themeColorString,
      'surfaceTintColor_themeColorString':
          instance.surfaceTintColor_themeColorString,
      'shape_shapeBorder': instance.shape_shapeBorder?.toJson(),
      'centerTitle_bool': instance.centerTitle_bool,
      'titleSpacing_double': instance.titleSpacing_double,
      'toolbarHeight_double': instance.toolbarHeight_double,
      'toolbarTextStyle_textStyleString':
          instance.toolbarTextStyle_textStyleString,
      'titleTextStyle_textStyleString': instance.titleTextStyle_textStyleString,
    };
