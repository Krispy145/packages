// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChipModelImpl _$$ChipModelImplFromJson(Map<String, dynamic> json) =>
    _$ChipModelImpl(
      color: json['color'] as String?,
      backgroundColor_themeColorString:
          json['backgroundColor_themeColorString'] as String?,
      deleteIconColor_themeColorString:
          json['deleteIconColor_themeColorString'] as String?,
      disabledColor_themeColorString:
          json['disabledColor_themeColorString'] as String?,
      selectedColor_themeColorString:
          json['selectedColor_themeColorString'] as String?,
      secondarySelectedColor_themeColorString:
          json['secondarySelectedColor_themeColorString'] as String?,
      shadowColor_themeColorString:
          json['shadowColor_themeColorString'] as String?,
      surfaceTintColor_themeColorString:
          json['surfaceTintColor_themeColorString'] as String?,
      selectedShadowColor_themeColorString:
          json['selectedShadowColor_themeColorString'] as String?,
      showCheckmark_bool: json['showCheckmark_bool'] as bool?,
      checkmarkColor_themeColorString:
          json['checkmarkColor_themeColorString'] as String?,
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
      labelStyle_textStyleString: json['labelStyle_textStyleString'] as String?,
      secondaryLabelStyle_textStyleString:
          json['secondaryLabelStyle_textStyleString'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      pressElevation_double:
          (json['pressElevation_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ChipModelImplToJson(_$ChipModelImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'backgroundColor_themeColorString':
          instance.backgroundColor_themeColorString,
      'deleteIconColor_themeColorString':
          instance.deleteIconColor_themeColorString,
      'disabledColor_themeColorString': instance.disabledColor_themeColorString,
      'selectedColor_themeColorString': instance.selectedColor_themeColorString,
      'secondarySelectedColor_themeColorString':
          instance.secondarySelectedColor_themeColorString,
      'shadowColor_themeColorString': instance.shadowColor_themeColorString,
      'surfaceTintColor_themeColorString':
          instance.surfaceTintColor_themeColorString,
      'selectedShadowColor_themeColorString':
          instance.selectedShadowColor_themeColorString,
      'showCheckmark_bool': instance.showCheckmark_bool,
      'checkmarkColor_themeColorString':
          instance.checkmarkColor_themeColorString,
      'labelPadding_edgeInsets': instance.labelPadding_edgeInsets?.toJson(),
      'padding_edgeInsets': instance.padding_edgeInsets?.toJson(),
      'side_borderSide': instance.side_borderSide?.toJson(),
      'shape_outlinedBorder': instance.shape_outlinedBorder?.toJson(),
      'labelStyle_textStyleString': instance.labelStyle_textStyleString,
      'secondaryLabelStyle_textStyleString':
          instance.secondaryLabelStyle_textStyleString,
      'elevation_double': instance.elevation_double,
      'pressElevation_double': instance.pressElevation_double,
    };
