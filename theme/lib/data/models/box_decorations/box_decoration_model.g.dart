// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box_decoration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BoxDecorationModelImpl _$$BoxDecorationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BoxDecorationModelImpl(
      color: json['color'] as String?,
      border: const BoxBorderConverter()
          .fromJson(json['border'] as Map<String, dynamic>?),
      borderRadius: const BorderRadiusConverter()
          .fromJson(json['borderRadius'] as Map<String, dynamic>?),
      boxShadows: const BoxShadowsConverter()
          .fromJson(json['boxShadows'] as List<Map<String, dynamic>>?),
      gradient: const GradientConverter()
          .fromJson(json['gradient'] as Map<String, dynamic>?),
      backgroundBlendMode: const BlendModeConverter()
          .fromJson(json['backgroundBlendMode'] as String?),
      shape: json['shape'] == null
          ? BoxShape.rectangle
          : const BoxShapeConverter().fromJson(json['shape'] as String?),
    );

Map<String, dynamic> _$$BoxDecorationModelImplToJson(
        _$BoxDecorationModelImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'border': const BoxBorderConverter().toJson(instance.border),
      'borderRadius':
          const BorderRadiusConverter().toJson(instance.borderRadius),
      'boxShadows': const BoxShadowsConverter().toJson(instance.boxShadows),
      'gradient': const GradientConverter().toJson(instance.gradient),
      'backgroundBlendMode':
          const BlendModeConverter().toJson(instance.backgroundBlendMode),
      'shape': const BoxShapeConverter().toJson(instance.shape),
    };
