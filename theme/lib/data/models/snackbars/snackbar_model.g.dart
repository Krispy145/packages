// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snackbar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SnackbarModelImpl _$$SnackbarModelImplFromJson(Map<String, dynamic> json) =>
    _$SnackbarModelImpl(
      backgroundColor_color: json['backgroundColor_color'] as String?,
      actionTextColor_color: json['actionTextColor_color'] as String?,
      disabledActionTextColor_color:
          json['disabledActionTextColor_color'] as String?,
      contentTextStyle_textStyle: json['contentTextStyle_textStyle'] as String?,
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
      insetPadding_edgeInsets: const EdgeInsetsConverter()
          .fromJson(json['insetPadding_edgeInsets'] as Map<String, dynamic>?),
      showCloseIcon_bool: json['showCloseIcon_bool'] as bool?,
      closeIconColor_color: json['closeIconColor_color'] as String?,
      actionOverflowThreshold_double:
          (json['actionOverflowThreshold_double'] as num?)?.toDouble(),
      actionBackgroundColor_color:
          json['actionBackgroundColor_color'] as String?,
      disabledActionBackgroundColor_color:
          json['disabledActionBackgroundColor_color'] as String?,
    );

Map<String, dynamic> _$$SnackbarModelImplToJson(_$SnackbarModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor_color': instance.backgroundColor_color,
      'actionTextColor_color': instance.actionTextColor_color,
      'disabledActionTextColor_color': instance.disabledActionTextColor_color,
      'contentTextStyle_textStyle': instance.contentTextStyle_textStyle,
      'elevation_double': instance.elevation_double,
      'shape_outlinedBorder': instance.shape_outlinedBorder?.toJson(),
      'behavior_enum_snackBarBehavior':
          _$SnackBarBehaviorEnumMap[instance.behavior_enum_snackBarBehavior]!,
      'width_double': instance.width_double,
      'insetPadding_edgeInsets':
          const EdgeInsetsConverter().toJson(instance.insetPadding_edgeInsets),
      'showCloseIcon_bool': instance.showCloseIcon_bool,
      'closeIconColor_color': instance.closeIconColor_color,
      'actionOverflowThreshold_double': instance.actionOverflowThreshold_double,
      'actionBackgroundColor_color': instance.actionBackgroundColor_color,
      'disabledActionBackgroundColor_color':
          instance.disabledActionBackgroundColor_color,
    };

const _$SnackBarBehaviorEnumMap = {
  SnackBarBehavior.fixed: 'fixed',
  SnackBarBehavior.floating: 'floating',
};
