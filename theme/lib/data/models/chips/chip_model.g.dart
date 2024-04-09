// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChipModelImpl _$$ChipModelImplFromJson(Map<String, dynamic> json) =>
    _$ChipModelImpl(
      color: json['color'] as String?,
      backgroundColor_color: json['backgroundColor_color'] as String?,
      deleteIconColor_color: json['deleteIconColor_color'] as String?,
      disabledColor_color: json['disabledColor_color'] as String?,
      selectedColor_color: json['selectedColor_color'] as String?,
      secondarySelectedColor_color:
          json['secondarySelectedColor_color'] as String?,
      shadowColor_color: json['shadowColor_color'] as String?,
      surfaceTintColor_color: json['surfaceTintColor_color'] as String?,
      selectedShadowColor_color: json['selectedShadowColor_color'] as String?,
      showCheckmark_bool: json['showCheckmark_bool'] as bool?,
      checkmarkColor_color: json['checkmarkColor_color'] as String?,
      labelPadding_edgeInsets: json['labelPadding_edgeInsets'] == null
          ? const EdgeInsetsModel()
          : EdgeInsetsModel.fromJson(
              json['labelPadding_edgeInsets'] as Map<String, dynamic>),
      padding_edgeInsets: json['padding_edgeInsets'] == null
          ? const EdgeInsetsModel()
          : EdgeInsetsModel.fromJson(
              json['padding_edgeInsets'] as Map<String, dynamic>),
      side_borderSide: json['side_borderSide'] == null
          ? null
          : BorderSideModel.fromJson(
              json['side_borderSide'] as Map<String, dynamic>),
      shape_outlinedBorder: json['shape_outlinedBorder'] == null
          ? const OutlinedBorderModel()
          : OutlinedBorderModel.fromJson(
              json['shape_outlinedBorder'] as Map<String, dynamic>),
      labelStyle_textStyle: json['labelStyle_textStyle'] as String?,
      secondaryLabelStyle_textStyle:
          json['secondaryLabelStyle_textStyle'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      pressElevation_double:
          (json['pressElevation_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ChipModelImplToJson(_$ChipModelImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'backgroundColor_color': instance.backgroundColor_color,
      'deleteIconColor_color': instance.deleteIconColor_color,
      'disabledColor_color': instance.disabledColor_color,
      'selectedColor_color': instance.selectedColor_color,
      'secondarySelectedColor_color': instance.secondarySelectedColor_color,
      'shadowColor_color': instance.shadowColor_color,
      'surfaceTintColor_color': instance.surfaceTintColor_color,
      'selectedShadowColor_color': instance.selectedShadowColor_color,
      'showCheckmark_bool': instance.showCheckmark_bool,
      'checkmarkColor_color': instance.checkmarkColor_color,
      'labelPadding_edgeInsets': instance.labelPadding_edgeInsets?.toJson(),
      'padding_edgeInsets': instance.padding_edgeInsets?.toJson(),
      'side_borderSide': instance.side_borderSide?.toJson(),
      'shape_outlinedBorder': instance.shape_outlinedBorder?.toJson(),
      'labelStyle_textStyle': instance.labelStyle_textStyle,
      'secondaryLabelStyle_textStyle': instance.secondaryLabelStyle_textStyle,
      'elevation_double': instance.elevation_double,
      'pressElevation_double': instance.pressElevation_double,
    };
