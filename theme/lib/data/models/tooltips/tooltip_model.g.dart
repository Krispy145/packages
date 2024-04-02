// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tooltip_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TooltipModelImpl _$$TooltipModelImplFromJson(Map<String, dynamic> json) =>
    _$TooltipModelImpl(
      height: (json['height'] as num?)?.toDouble(),
      padding: const EdgeInsetsConverter()
          .fromJson(json['padding'] as Map<String, dynamic>?),
      margin: const EdgeInsetsConverter()
          .fromJson(json['margin'] as Map<String, dynamic>?),
      verticalOffset: (json['verticalOffset'] as num?)?.toDouble(),
      preferBelow: json['preferBelow'] as bool?,
      excludeFromSemantics: json['excludeFromSemantics'] as bool?,
      decoration: const BoxDecorationConverter()
          .fromJson(json['decoration'] as Map<String, dynamic>?),
      textStyle: json['textStyle'] as String?,
      enableFeedback: json['enableFeedback'] as bool?,
    );

Map<String, dynamic> _$$TooltipModelImplToJson(_$TooltipModelImpl instance) =>
    <String, dynamic>{
      'height': instance.height,
      'padding': const EdgeInsetsConverter().toJson(instance.padding),
      'margin': const EdgeInsetsConverter().toJson(instance.margin),
      'verticalOffset': instance.verticalOffset,
      'preferBelow': instance.preferBelow,
      'excludeFromSemantics': instance.excludeFromSemantics,
      'decoration': const BoxDecorationConverter().toJson(instance.decoration),
      'textStyle': instance.textStyle,
      'enableFeedback': instance.enableFeedback,
    };
