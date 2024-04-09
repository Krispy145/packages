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
      padding_edgeInsets: json['padding_edgeInsets'] == null
          ? const EdgeInsetsModel()
          : EdgeInsetsModel.fromJson(
              json['padding_edgeInsets'] as Map<String, dynamic>),
      alignment_enum_alignmentOptions: $enumDecodeNullable(
              _$AlignmentOptionsEnumMap,
              json['alignment_enum_alignmentOptions']) ??
          AlignmentOptions.center,
      offset_offset: json['offset_offset'] == null
          ? const OffsetModel()
          : OffsetModel.fromJson(json['offset_offset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BadgeModelImplToJson(_$BadgeModelImpl instance) =>
    <String, dynamic>{
      'backgroundColor_color': instance.backgroundColor_color,
      'textColor_color': instance.textColor_color,
      'smallSize_double': instance.smallSize_double,
      'largeSize_double': instance.largeSize_double,
      'textStyle_textStyle': instance.textStyle_textStyle,
      'padding_edgeInsets': instance.padding_edgeInsets?.toJson(),
      'alignment_enum_alignmentOptions':
          _$AlignmentOptionsEnumMap[instance.alignment_enum_alignmentOptions],
      'offset_offset': instance.offset_offset?.toJson(),
    };

const _$AlignmentOptionsEnumMap = {
  AlignmentOptions.topLeft: 'topLeft',
  AlignmentOptions.topCenter: 'topCenter',
  AlignmentOptions.topRight: 'topRight',
  AlignmentOptions.centerLeft: 'centerLeft',
  AlignmentOptions.center: 'center',
  AlignmentOptions.centerRight: 'centerRight',
  AlignmentOptions.bottomLeft: 'bottomLeft',
  AlignmentOptions.bottomCenter: 'bottomCenter',
  AlignmentOptions.bottomRight: 'bottomRight',
};
