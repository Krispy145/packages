// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggle_button_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToggleButtonModelImpl _$$ToggleButtonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ToggleButtonModelImpl(
      textStyle: json['textStyle'] as String?,
      constraints: const BoxConstraintsConverter()
          .fromJson(json['constraints'] as Map<String, dynamic>?),
      color: json['color'] as String?,
      selectedColor: json['selectedColor'] as String?,
      disabledColor: json['disabledColor'] as String?,
      fillColor: json['fillColor'] as String?,
      focusColor: json['focusColor'] as String?,
      highlightColor: json['highlightColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      splashColor: json['splashColor'] as String?,
      borderColor: json['borderColor'] as String?,
      selectedBorderColor: json['selectedBorderColor'] as String?,
      disabledBorderColor: json['disabledBorderColor'] as String?,
      borderRadius: const BorderRadiusConverter()
          .fromJson(json['borderRadius'] as Map<String, dynamic>?),
      borderWidth: (json['borderWidth'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ToggleButtonModelImplToJson(
        _$ToggleButtonModelImpl instance) =>
    <String, dynamic>{
      'textStyle': instance.textStyle,
      'constraints':
          const BoxConstraintsConverter().toJson(instance.constraints),
      'color': instance.color,
      'selectedColor': instance.selectedColor,
      'disabledColor': instance.disabledColor,
      'fillColor': instance.fillColor,
      'focusColor': instance.focusColor,
      'highlightColor': instance.highlightColor,
      'hoverColor': instance.hoverColor,
      'splashColor': instance.splashColor,
      'borderColor': instance.borderColor,
      'selectedBorderColor': instance.selectedBorderColor,
      'disabledBorderColor': instance.disabledBorderColor,
      'borderRadius':
          const BorderRadiusConverter().toJson(instance.borderRadius),
      'borderWidth': instance.borderWidth,
    };
