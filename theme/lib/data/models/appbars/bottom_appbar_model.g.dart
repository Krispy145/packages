// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_appbar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BottomAppbarModelImpl _$$BottomAppbarModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BottomAppbarModelImpl(
      color_themeColorString: json['color_themeColorString'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      height_double: (json['height_double'] as num?)?.toDouble(),
      surfaceTintColor_themeColorString:
          json['surfaceTintColor_themeColorString'] as String?,
      shadowColor_themeColorString:
          json['shadowColor_themeColorString'] as String?,
      padding_edgeInsets: json['padding_edgeInsets'] == null
          ? const EdgeInsetsModel()
          : EdgeInsetsModel.fromJson(
              json['padding_edgeInsets'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BottomAppbarModelImplToJson(
        _$BottomAppbarModelImpl instance) =>
    <String, dynamic>{
      'color_themeColorString': instance.color_themeColorString,
      'elevation_double': instance.elevation_double,
      'height_double': instance.height_double,
      'surfaceTintColor_themeColorString':
          instance.surfaceTintColor_themeColorString,
      'shadowColor_themeColorString': instance.shadowColor_themeColorString,
      'padding_edgeInsets': instance.padding_edgeInsets?.toJson(),
    };
