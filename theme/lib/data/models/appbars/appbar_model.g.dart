// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appbar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppbarModelImpl _$$AppbarModelImplFromJson(Map<String, dynamic> json) =>
    _$AppbarModelImpl(
      color_color: json['color_color'] as String?,
      backgroundColor_color: json['backgroundColor_color'] as String?,
      foregroundColor_color: json['foregroundColor_color'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      scrolledUnderElevation_double:
          (json['scrolledUnderElevation_double'] as num?)?.toDouble(),
      shadowColor_color: json['shadowColor_color'] as String?,
      surfaceTintColor_color: json['surfaceTintColor_color'] as String?,
      shape_shapeBorder: json['shape_shapeBorder'] == null
          ? null
          : ShapeBorderModel.fromJson(
              json['shape_shapeBorder'] as Map<String, dynamic>),
      centerTitle_bool: json['centerTitle_bool'] as bool?,
      titleSpacing_double: (json['titleSpacing_double'] as num?)?.toDouble(),
      toolbarHeight_double: (json['toolbarHeight_double'] as num?)?.toDouble(),
      toolbarTextStyle_textStyle: json['toolbarTextStyle_textStyle'] as String?,
      titleTextStyle_textStyle: json['titleTextStyle_textStyle'] as String?,
    );

Map<String, dynamic> _$$AppbarModelImplToJson(_$AppbarModelImpl instance) =>
    <String, dynamic>{
      'color_color': instance.color_color,
      'backgroundColor_color': instance.backgroundColor_color,
      'foregroundColor_color': instance.foregroundColor_color,
      'elevation_double': instance.elevation_double,
      'scrolledUnderElevation_double': instance.scrolledUnderElevation_double,
      'shadowColor_color': instance.shadowColor_color,
      'surfaceTintColor_color': instance.surfaceTintColor_color,
      'shape_shapeBorder': instance.shape_shapeBorder?.toJson(),
      'centerTitle_bool': instance.centerTitle_bool,
      'titleSpacing_double': instance.titleSpacing_double,
      'toolbarHeight_double': instance.toolbarHeight_double,
      'toolbarTextStyle_textStyle': instance.toolbarTextStyle_textStyle,
      'titleTextStyle_textStyle': instance.titleTextStyle_textStyle,
    };
