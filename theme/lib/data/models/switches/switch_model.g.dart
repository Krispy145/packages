// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SwitchModelImpl _$$SwitchModelImplFromJson(Map<String, dynamic> json) =>
    _$SwitchModelImpl(
      thumbColor_themeColorString:
          json['thumbColor_themeColorString'] as String?,
      trackColor_themeColorString:
          json['trackColor_themeColorString'] as String?,
      trackOutlineColor_themeColorString:
          json['trackOutlineColor_themeColorString'] as String?,
      trackOutlineWidth_double:
          (json['trackOutlineWidth_double'] as num?)?.toDouble(),
      overlayColor_themeColorString:
          json['overlayColor_themeColorString'] as String?,
      splashRadius_double: (json['splashRadius_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SwitchModelImplToJson(_$SwitchModelImpl instance) =>
    <String, dynamic>{
      'thumbColor_themeColorString': instance.thumbColor_themeColorString,
      'trackColor_themeColorString': instance.trackColor_themeColorString,
      'trackOutlineColor_themeColorString':
          instance.trackOutlineColor_themeColorString,
      'trackOutlineWidth_double': instance.trackOutlineWidth_double,
      'overlayColor_themeColorString': instance.overlayColor_themeColorString,
      'splashRadius_double': instance.splashRadius_double,
    };
