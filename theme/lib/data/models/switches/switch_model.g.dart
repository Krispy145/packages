// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SwitchModelImpl _$$SwitchModelImplFromJson(Map<String, dynamic> json) =>
    _$SwitchModelImpl(
      thumbColor_color: json['thumbColor_color'] as String?,
      trackColor_color: json['trackColor_color'] as String?,
      trackOutlineColor_color: json['trackOutlineColor_color'] as String?,
      trackOutlineWidth_double:
          (json['trackOutlineWidth_double'] as num?)?.toDouble(),
      overlayColor_color: json['overlayColor_color'] as String?,
      splashRadius_double: (json['splashRadius_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SwitchModelImplToJson(_$SwitchModelImpl instance) =>
    <String, dynamic>{
      'thumbColor_color': instance.thumbColor_color,
      'trackColor_color': instance.trackColor_color,
      'trackOutlineColor_color': instance.trackOutlineColor_color,
      'trackOutlineWidth_double': instance.trackOutlineWidth_double,
      'overlayColor_color': instance.overlayColor_color,
      'splashRadius_double': instance.splashRadius_double,
    };
