// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snackbar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SnackbarModelImpl _$$SnackbarModelImplFromJson(Map<String, dynamic> json) =>
    _$SnackbarModelImpl(
      backgroundColor_themeColorString:
          json['backgroundColor_themeColorString'] as String?,
      actionTextColor_themeColorString:
          json['actionTextColor_themeColorString'] as String?,
      disabledActionTextColor_themeColorString:
          json['disabledActionTextColor_themeColorString'] as String?,
      contentTextStyle_textStyleString:
          json['contentTextStyle_textStyleString'] as String?,
      elevation_double: (json['elevation_double'] as num?)?.toDouble(),
      shape_outlinedBorder: json['shape_outlinedBorder'] == null
          ? const OutlinedBorderModel()
          : OutlinedBorderModel.fromJson(
              json['shape_outlinedBorder'] as Map<String, dynamic>),
      behavior_enum_snackBarBehavior: $enumDecodeNullable(
              _$SnackBarBehaviorEnumMap,
              json['behavior_enum_snackBarBehavior']) ??
          SnackBarBehavior.floating,
      width_double: (json['width_double'] as num?)?.toDouble(),
      insetPadding_edgeInsets: json['insetPadding_edgeInsets'] == null
          ? const EdgeInsetsModel()
          : EdgeInsetsModel.fromJson(
              json['insetPadding_edgeInsets'] as Map<String, dynamic>),
      showCloseIcon_bool: json['showCloseIcon_bool'] as bool?,
      closeIconColor_themeColorString:
          json['closeIconColor_themeColorString'] as String?,
      actionOverflowThreshold_double:
          (json['actionOverflowThreshold_double'] as num?)?.toDouble(),
      actionBackgroundColor_themeColorString:
          json['actionBackgroundColor_themeColorString'] as String?,
      disabledActionBackgroundColor_themeColorString:
          json['disabledActionBackgroundColor_themeColorString'] as String?,
    );

Map<String, dynamic> _$$SnackbarModelImplToJson(_$SnackbarModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor_themeColorString':
          instance.backgroundColor_themeColorString,
      'actionTextColor_themeColorString':
          instance.actionTextColor_themeColorString,
      'disabledActionTextColor_themeColorString':
          instance.disabledActionTextColor_themeColorString,
      'contentTextStyle_textStyleString':
          instance.contentTextStyle_textStyleString,
      'elevation_double': instance.elevation_double,
      'shape_outlinedBorder': instance.shape_outlinedBorder?.toJson(),
      'behavior_enum_snackBarBehavior':
          _$SnackBarBehaviorEnumMap[instance.behavior_enum_snackBarBehavior]!,
      'width_double': instance.width_double,
      'insetPadding_edgeInsets': instance.insetPadding_edgeInsets?.toJson(),
      'showCloseIcon_bool': instance.showCloseIcon_bool,
      'closeIconColor_themeColorString':
          instance.closeIconColor_themeColorString,
      'actionOverflowThreshold_double': instance.actionOverflowThreshold_double,
      'actionBackgroundColor_themeColorString':
          instance.actionBackgroundColor_themeColorString,
      'disabledActionBackgroundColor_themeColorString':
          instance.disabledActionBackgroundColor_themeColorString,
    };

const _$SnackBarBehaviorEnumMap = {
  SnackBarBehavior.fixed: 'fixed',
  SnackBarBehavior.floating: 'floating',
};
