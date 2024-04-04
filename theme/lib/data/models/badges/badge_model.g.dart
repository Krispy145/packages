// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BadgeModelImpl _$$BadgeModelImplFromJson(Map<String, dynamic> json) =>
    _$BadgeModelImpl(
      backgroundColor_color: json['backgroundColor_color'] as String?,
      textColor_color: json['textColor_color'] as String?,
      smallSize_double: (json['smallSize_double'] as num?)?.toDouble(),
      largeSize_double: (json['largeSize_double'] as num?)?.toDouble(),
      textStyle_textStyle: json['textStyle_textStyle'] as String?,
      padding_edgeInsets: const EdgeInsetsConverter()
          .fromJson(json['padding_edgeInsets'] as Map<String, dynamic>?),
      alignment_alignment: const AlignmentConverter()
          .fromJson(json['alignment_alignment'] as String?),
      offset_offset: const OffsetConverter()
          .fromJson(json['offset_offset'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$BadgeModelImplToJson(_$BadgeModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor_color': instance.backgroundColor_color,
      'textColor_color': instance.textColor_color,
      'smallSize_double': instance.smallSize_double,
      'largeSize_double': instance.largeSize_double,
      'textStyle_textStyle': instance.textStyle_textStyle,
      'padding_edgeInsets':
          const EdgeInsetsConverter().toJson(instance.padding_edgeInsets),
      'alignment_alignment':
          const AlignmentConverter().toJson(instance.alignment_alignment),
      'offset_offset': _$JsonConverterToJson<Map<String, dynamic>?, Offset>(
          instance.offset_offset, const OffsetConverter().toJson),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
