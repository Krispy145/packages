// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'snackbar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SnackbarModelImpl _$$SnackbarModelImplFromJson(Map<String, dynamic> json) =>
    _$SnackbarModelImpl(
      backgroundColor: json['backgroundColor'] as String?,
      actionTextColor: json['actionTextColor'] as String?,
      disabledActionTextColor: json['disabledActionTextColor'] as String?,
      contentTextStyle: json['contentTextStyle'] as String?,
      elevation: (json['elevation'] as num?)?.toDouble(),
      shape: const OutlinedBorderConverter()
          .fromJson(json['shape'] as Map<String, dynamic>?),
      behavior:
          $enumDecodeNullable(_$SnackBarBehaviorEnumMap, json['behavior']) ??
              SnackBarBehavior.floating,
      width: (json['width'] as num?)?.toDouble(),
      insetPadding: const EdgeInsetsConverter()
          .fromJson(json['insetPadding'] as Map<String, dynamic>?),
      showCloseIcon: json['showCloseIcon'] as bool?,
      closeIconColor: json['closeIconColor'] as String?,
      actionOverflowThreshold:
          (json['actionOverflowThreshold'] as num?)?.toDouble(),
      actionBackgroundColor: json['actionBackgroundColor'] as String?,
      disabledActionBackgroundColor:
          json['disabledActionBackgroundColor'] as String?,
    );

Map<String, dynamic> _$$SnackbarModelImplToJson(_$SnackbarModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'actionTextColor': instance.actionTextColor,
      'disabledActionTextColor': instance.disabledActionTextColor,
      'contentTextStyle': instance.contentTextStyle,
      'elevation': instance.elevation,
      'shape': const OutlinedBorderConverter().toJson(instance.shape),
      'behavior': _$SnackBarBehaviorEnumMap[instance.behavior]!,
      'width': instance.width,
      'insetPadding': const EdgeInsetsConverter().toJson(instance.insetPadding),
      'showCloseIcon': instance.showCloseIcon,
      'closeIconColor': instance.closeIconColor,
      'actionOverflowThreshold': instance.actionOverflowThreshold,
      'actionBackgroundColor': instance.actionBackgroundColor,
      'disabledActionBackgroundColor': instance.disabledActionBackgroundColor,
    };

const _$SnackBarBehaviorEnumMap = {
  SnackBarBehavior.fixed: 'fixed',
  SnackBarBehavior.floating: 'floating',
};
