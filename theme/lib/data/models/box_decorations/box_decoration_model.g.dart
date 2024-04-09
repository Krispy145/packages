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
      boxShadows_list_boxShadow: (json['boxShadows_list_boxShadow']
                  as List<dynamic>?)
              ?.map((e) => BoxShadowModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      gradient_gradient: json['gradient_gradient'] == null
          ? const GradientModel()
          : GradientModel.fromJson(
              json['gradient_gradient'] as Map<String, dynamic>),
      backgroundBlendMode_enum_blendMode: $enumDecodeNullable(
          _$BlendModeEnumMap, json['backgroundBlendMode_enum_blendMode']),
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
      'boxShadows_list_boxShadow':
          instance.boxShadows_list_boxShadow?.map((e) => e.toJson()).toList(),
      'gradient_gradient': instance.gradient_gradient?.toJson(),
      'backgroundBlendMode_enum_blendMode':
          _$BlendModeEnumMap[instance.backgroundBlendMode_enum_blendMode],
      'shape_enum_boxShape': _$BoxShapeEnumMap[instance.shape_enum_boxShape],
    };

const _$BlendModeEnumMap = {
  BlendMode.clear: 'clear',
  BlendMode.src: 'src',
  BlendMode.dst: 'dst',
  BlendMode.srcOver: 'srcOver',
  BlendMode.dstOver: 'dstOver',
  BlendMode.srcIn: 'srcIn',
  BlendMode.dstIn: 'dstIn',
  BlendMode.srcOut: 'srcOut',
  BlendMode.dstOut: 'dstOut',
  BlendMode.srcATop: 'srcATop',
  BlendMode.dstATop: 'dstATop',
  BlendMode.xor: 'xor',
  BlendMode.plus: 'plus',
  BlendMode.modulate: 'modulate',
  BlendMode.screen: 'screen',
  BlendMode.overlay: 'overlay',
  BlendMode.darken: 'darken',
  BlendMode.lighten: 'lighten',
  BlendMode.colorDodge: 'colorDodge',
  BlendMode.colorBurn: 'colorBurn',
  BlendMode.hardLight: 'hardLight',
  BlendMode.softLight: 'softLight',
  BlendMode.difference: 'difference',
  BlendMode.exclusion: 'exclusion',
  BlendMode.multiply: 'multiply',
  BlendMode.hue: 'hue',
  BlendMode.saturation: 'saturation',
  BlendMode.color: 'color',
  BlendMode.luminosity: 'luminosity',
};

const _$BoxShapeEnumMap = {
  BoxShape.rectangle: 'rectangle',
  BoxShape.circle: 'circle',
};
