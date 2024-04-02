// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkbox_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckboxModelImpl _$$CheckboxModelImplFromJson(Map<String, dynamic> json) =>
    _$CheckboxModelImpl(
      fillColor: json['fillColor'] as String?,
      checkColor: json['checkColor'] as String?,
      overlayColor: json['overlayColor'] as String?,
      splashRadius: (json['splashRadius'] as num?)?.toDouble(),
      shape: const OutlinedBorderConverter()
          .fromJson(json['shape'] as Map<String, dynamic>?),
      side: const BorderSideConverter()
          .fromJson(json['side'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$CheckboxModelImplToJson(_$CheckboxModelImpl instance) =>
    <String, dynamic>{
      'fillColor': instance.fillColor,
      'checkColor': instance.checkColor,
      'overlayColor': instance.overlayColor,
      'splashRadius': instance.splashRadius,
      'shape': const OutlinedBorderConverter().toJson(instance.shape),
      'side': const BorderSideConverter().toJson(instance.side),
    };
