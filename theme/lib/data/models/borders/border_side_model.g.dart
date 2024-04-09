// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'border_side_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BorderSideModelImpl _$$BorderSideModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BorderSideModelImpl(
      color_themeColorString: json['color_themeColorString'] as String?,
      width_double: (json['width_double'] as num?)?.toDouble(),
      style_enum_borderStyle: $enumDecodeNullable(
          _$BorderStyleEnumMap, json['style_enum_borderStyle']),
      strokeAlign_double: (json['strokeAlign_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$BorderSideModelImplToJson(
        _$BorderSideModelImpl instance) =>
    <String, dynamic>{
      'color_themeColorString': instance.color_themeColorString,
      'width_double': instance.width_double,
      'style_enum_borderStyle':
          _$BorderStyleEnumMap[instance.style_enum_borderStyle],
      'strokeAlign_double': instance.strokeAlign_double,
    };

const _$BorderStyleEnumMap = {
  BorderStyle.none: 'none',
  BorderStyle.solid: 'solid',
};
