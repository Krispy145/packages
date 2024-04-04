// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'button_style_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ButtonStyleModelImpl _$$ButtonStyleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ButtonStyleModelImpl(
      textStyle_textStyle: json['textStyle_textStyle'] as String?,
      backgroundColor_color: json['backgroundColor_color'] as String?,
      foregroundColor_color: json['foregroundColor_color'] as String?,
      overlayColor_color: json['overlayColor_color'] as String?,
      shadowColor_color: json['shadowColor_color'] as String?,
      surfaceTintColor_color: json['surfaceTintColor_color'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      padding_edgeInsets: const EdgeInsetsConverter()
          .fromJson(json['padding_edgeInsets'] as Map<String, dynamic>?),
      minimumSize_size: json['minimumSize_size'] == null
          ? const SizeModel()
          : SizeModel.fromJson(
              json['minimumSize_size'] as Map<String, dynamic>),
      fixedSize_size: json['fixedSize_size'] == null
          ? const SizeModel()
          : SizeModel.fromJson(json['fixedSize_size'] as Map<String, dynamic>),
      maximumSize_size: json['maximumSize_size'] == null
          ? const SizeModel()
          : SizeModel.fromJson(
              json['maximumSize_size'] as Map<String, dynamic>),
      iconColor_color: json['iconColor_color'] as String?,
      iconSize_double: (json['iconSize_double'] as num?)?.toDouble(),
      side_borderSide: json['side_borderSide'] == null
          ? const BorderSideModel()
          : BorderSideModel.fromJson(
              json['side_borderSide'] as Map<String, dynamic>),
      shape_outlinedBorder: json['shape_outlinedBorder'] == null
          ? const OutlinedBorderModel()
          : OutlinedBorderModel.fromJson(
              json['shape_outlinedBorder'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ButtonStyleModelImplToJson(
        _$ButtonStyleModelImpl instance) =>
    <String, dynamic>{
      'textStyle_textStyle': instance.textStyle_textStyle,
      'backgroundColor_color': instance.backgroundColor_color,
      'foregroundColor_color': instance.foregroundColor_color,
      'overlayColor_color': instance.overlayColor_color,
      'shadowColor_color': instance.shadowColor_color,
      'surfaceTintColor_color': instance.surfaceTintColor_color,
      'elevation_double': instance.elevation_double,
      'padding_edgeInsets':
          const EdgeInsetsConverter().toJson(instance.padding_edgeInsets),
      'minimumSize_size': instance.minimumSize_size?.toJson(),
      'fixedSize_size': instance.fixedSize_size?.toJson(),
      'maximumSize_size': instance.maximumSize_size?.toJson(),
      'iconColor_color': instance.iconColor_color,
      'iconSize_double': instance.iconSize_double,
      'side_borderSide': instance.side_borderSide?.toJson(),
      'shape_outlinedBorder': instance.shape_outlinedBorder?.toJson(),
    };
