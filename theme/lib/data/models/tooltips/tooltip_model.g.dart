// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tooltip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TooltipModelImpl _$$TooltipModelImplFromJson(Map<String, dynamic> json) =>
    _$TooltipModelImpl(
      height_double: (json['height_double'] as num?)?.toDouble(),
      padding_edgeInsets: const EdgeInsetsConverter()
          .fromJson(json['padding_edgeInsets'] as Map<String, dynamic>?),
      margin_edgeInsets: const EdgeInsetsConverter()
          .fromJson(json['margin_edgeInsets'] as Map<String, dynamic>?),
      verticalOffset_double:
          (json['verticalOffset_double'] as num?)?.toDouble(),
      preferBelow_bool: json['preferBelow_bool'] as bool?,
      excludeFromSemantics_bool: json['excludeFromSemantics_bool'] as bool?,
      decoration_boxDecoration: json['decoration_boxDecoration'] == null
          ? null
          : BoxDecorationModel.fromJson(
              json['decoration_boxDecoration'] as Map<String, dynamic>),
      textStyle_textStyle: json['textStyle_textStyle'] as String?,
      textAlign_enum_textAlign: $enumDecodeNullable(
          _$TextAlignEnumMap, json['textAlign_enum_textAlign']),
      waitDuration_duration: json['waitDuration_duration'] == null
          ? null
          : Duration(microseconds: json['waitDuration_duration'] as int),
      showDuration_duration: json['showDuration_duration'] == null
          ? null
          : Duration(microseconds: json['showDuration_duration'] as int),
      triggerMode_enum_tooltipTriggerMode: $enumDecodeNullable(
          _$TooltipTriggerModeEnumMap,
          json['triggerMode_enum_tooltipTriggerMode']),
      enableFeedback_bool: json['enableFeedback_bool'] as bool?,
    );

Map<String, dynamic> _$$TooltipModelImplToJson(_$TooltipModelImpl instance) =>
    <String, dynamic>{
      'height_double': instance.height_double,
      'padding_edgeInsets':
          const EdgeInsetsConverter().toJson(instance.padding_edgeInsets),
      'margin_edgeInsets':
          const EdgeInsetsConverter().toJson(instance.margin_edgeInsets),
      'verticalOffset_double': instance.verticalOffset_double,
      'preferBelow_bool': instance.preferBelow_bool,
      'excludeFromSemantics_bool': instance.excludeFromSemantics_bool,
      'decoration_boxDecoration': instance.decoration_boxDecoration?.toJson(),
      'textStyle_textStyle': instance.textStyle_textStyle,
      'textAlign_enum_textAlign':
          _$TextAlignEnumMap[instance.textAlign_enum_textAlign],
      'waitDuration_duration': instance.waitDuration_duration?.inMicroseconds,
      'showDuration_duration': instance.showDuration_duration?.inMicroseconds,
      'triggerMode_enum_tooltipTriggerMode': _$TooltipTriggerModeEnumMap[
          instance.triggerMode_enum_tooltipTriggerMode],
      'enableFeedback_bool': instance.enableFeedback_bool,
    };

const _$TextAlignEnumMap = {
  TextAlign.left: 'left',
  TextAlign.right: 'right',
  TextAlign.center: 'center',
  TextAlign.justify: 'justify',
  TextAlign.start: 'start',
  TextAlign.end: 'end',
};

const _$TooltipTriggerModeEnumMap = {
  TooltipTriggerMode.manual: 'manual',
  TooltipTriggerMode.longPress: 'longPress',
  TooltipTriggerMode.tap: 'tap',
};
