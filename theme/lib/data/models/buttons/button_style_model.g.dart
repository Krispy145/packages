// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'button_style_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ButtonStyleModelImpl _$$ButtonStyleModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ButtonStyleModelImpl(
      textStyle_textStyleString: json['textStyle_textStyleString'] as String?,
      backgroundColor_themeColorString:
          json['backgroundColor_themeColorString'] as String?,
      foregroundColor_themeColorString:
          json['foregroundColor_themeColorString'] as String?,
      overlayColor_themeColorString:
          json['overlayColor_themeColorString'] as String?,
      shadowColor_themeColorString:
          json['shadowColor_themeColorString'] as String?,
      surfaceTintColor_themeColorString:
          json['surfaceTintColor_themeColorString'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      padding_edgeInsets: json['padding_edgeInsets'] == null
          ? const EdgeInsetsModel()
          : EdgeInsetsModel.fromJson(
              json['padding_edgeInsets'] as Map<String, dynamic>),
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
      iconColor_themeColorString: json['iconColor_themeColorString'] as String?,
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
      'textStyle_textStyleString': instance.textStyle_textStyleString,
      'backgroundColor_themeColorString':
          instance.backgroundColor_themeColorString,
      'foregroundColor_themeColorString':
          instance.foregroundColor_themeColorString,
      'overlayColor_themeColorString': instance.overlayColor_themeColorString,
      'shadowColor_themeColorString': instance.shadowColor_themeColorString,
      'surfaceTintColor_themeColorString':
          instance.surfaceTintColor_themeColorString,
      'elevation_double': instance.elevation_double,
      'padding_edgeInsets': instance.padding_edgeInsets?.toJson(),
      'minimumSize_size': instance.minimumSize_size?.toJson(),
      'fixedSize_size': instance.fixedSize_size?.toJson(),
      'maximumSize_size': instance.maximumSize_size?.toJson(),
      'iconColor_themeColorString': instance.iconColor_themeColorString,
      'iconSize_double': instance.iconSize_double,
      'side_borderSide': instance.side_borderSide?.toJson(),
      'shape_outlinedBorder': instance.shape_outlinedBorder?.toJson(),
    };
