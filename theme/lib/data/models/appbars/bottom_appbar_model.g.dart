// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bottom_appbar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BottomAppbarModelImpl _$$BottomAppbarModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BottomAppbarModelImpl(
      color_color: json['color_color'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      height_double: (json['height_double'] as num?)?.toDouble(),
      surfaceTintColor_color: json['surfaceTintColor_color'] as String?,
      shadowColor_color: json['shadowColor_color'] as String?,
      padding_edgeInsets: const EdgeInsetsConverter()
          .fromJson(json['padding_edgeInsets'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$BottomAppbarModelImplToJson(
        _$BottomAppbarModelImpl instance) =>
    <String, dynamic>{
      'color_color': instance.color_color,
      'elevation_double': instance.elevation_double,
      'height_double': instance.height_double,
      'surfaceTintColor_color': instance.surfaceTintColor_color,
      'shadowColor_color': instance.shadowColor_color,
      'padding_edgeInsets':
          const EdgeInsetsConverter().toJson(instance.padding_edgeInsets),
    };
