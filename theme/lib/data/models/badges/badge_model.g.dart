// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BadgeModelImpl _$$BadgeModelImplFromJson(Map<String, dynamic> json) =>
    _$BadgeModelImpl(
      backgroundColor: json['backgroundColor'] as String?,
      textColor: json['textColor'] as String?,
      smallSize: (json['smallSize'] as num?)?.toDouble(),
      largeSize: (json['largeSize'] as num?)?.toDouble(),
      textStyle: json['textStyle'] as String?,
      padding: const EdgeInsetsConverter()
          .fromJson(json['padding'] as Map<String, dynamic>?),
      alignment:
          const AlignmentConverter().fromJson(json['alignment'] as String?),
      offset: const OffsetConverter()
          .fromJson(json['offset'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$BadgeModelImplToJson(_$BadgeModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor': instance.backgroundColor,
      'textColor': instance.textColor,
      'smallSize': instance.smallSize,
      'largeSize': instance.largeSize,
      'textStyle': instance.textStyle,
      'padding': const EdgeInsetsConverter().toJson(instance.padding),
      'alignment': const AlignmentConverter().toJson(instance.alignment),
      'offset': _$JsonConverterToJson<Map<String, dynamic>?, Offset>(
          instance.offset, const OffsetConverter().toJson),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
