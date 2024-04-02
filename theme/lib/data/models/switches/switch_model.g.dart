// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SwitchModelImpl _$$SwitchModelImplFromJson(Map<String, dynamic> json) =>
    _$SwitchModelImpl(
      thumbColor: json['thumbColor'] as String?,
      trackColor: json['trackColor'] as String?,
      trackOutlineColor: json['trackOutlineColor'] as String?,
      trackOutlineWidth: (json['trackOutlineWidth'] as num?)?.toDouble(),
      overlayColor: json['overlayColor'] as String?,
      splashRadius: (json['splashRadius'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$SwitchModelImplToJson(_$SwitchModelImpl instance) =>
    <String, dynamic>{
      'thumbColor': instance.thumbColor,
      'trackColor': instance.trackColor,
      'trackOutlineColor': instance.trackOutlineColor,
      'trackOutlineWidth': instance.trackOutlineWidth,
      'overlayColor': instance.overlayColor,
      'splashRadius': instance.splashRadius,
    };
