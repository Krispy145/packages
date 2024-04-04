// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_decoration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoxDecorationModelImpl _$$BoxDecorationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BoxDecorationModelImpl(
      color_color: json['color_color'] as String?,
      border_boxBorder: json['border_boxBorder'] == null
          ? null
          : BoxBorderModel.fromJson(
              json['border_boxBorder'] as Map<String, dynamic>),
      borderRadius_borderRadius: json['borderRadius_borderRadius'] == null
          ? null
          : BorderRadiusModel.fromJson(
              json['borderRadius_borderRadius'] as Map<String, dynamic>),
      boxShadows_list_boxShadow: const BoxShadowsConverter().fromJson(
          json['boxShadows_list_boxShadow'] as List<Map<String, dynamic>>?),
      gradient_gradient: const GradientConverter()
          .fromJson(json['gradient_gradient'] as Map<String, dynamic>?),
      backgroundBlendMode_blendMode: const BlendModeConverter()
          .fromJson(json['backgroundBlendMode_blendMode'] as String?),
      shape_enum_boxShape:
          $enumDecodeNullable(_$BoxShapeEnumMap, json['shape_enum_boxShape']) ??
              BoxShape.rectangle,
    );

Map<String, dynamic> _$$BoxDecorationModelImplToJson(
        _$BoxDecorationModelImpl instance) =>
    <String, dynamic>{
      'color_color': instance.color_color,
      'border_boxBorder': instance.border_boxBorder?.toJson(),
      'borderRadius_borderRadius': instance.borderRadius_borderRadius?.toJson(),
      'boxShadows_list_boxShadow': const BoxShadowsConverter()
          .toJson(instance.boxShadows_list_boxShadow),
      'gradient_gradient':
          const GradientConverter().toJson(instance.gradient_gradient),
      'backgroundBlendMode_blendMode': const BlendModeConverter()
          .toJson(instance.backgroundBlendMode_blendMode),
      'shape_enum_boxShape': _$BoxShapeEnumMap[instance.shape_enum_boxShape],
    };

const _$BoxShapeEnumMap = {
  BoxShape.rectangle: 'rectangle',
  BoxShape.circle: 'circle',
};
