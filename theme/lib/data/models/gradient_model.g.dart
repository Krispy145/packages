// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gradient_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GradientModelImpl _$$GradientModelImplFromJson(Map<String, dynamic> json) =>
    _$GradientModelImpl(
      type_enum_gradientType: $enumDecodeNullable(
          _$GradientTypeEnumMap, json['type_enum_gradientType']),
      colors_list_color: (json['colors_list_color'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$GradientModelImplToJson(_$GradientModelImpl instance) =>
    <String, dynamic>{
      'type_enum_gradientType':
          _$GradientTypeEnumMap[instance.type_enum_gradientType],
      'colors_list_color': instance.colors_list_color,
    };

const _$GradientTypeEnumMap = {
  GradientType.linear: 'linear',
  GradientType.radial: 'radial',
  GradientType.sweep: 'sweep',
};
