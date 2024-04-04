// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggle_button_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToggleButtonModelImpl _$$ToggleButtonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ToggleButtonModelImpl(
      textStyle_textStyle: json['textStyle_textStyle'] as String?,
      constraints_boxConstraints: json['constraints_boxConstraints'] == null
          ? const BoxConstraintsModel()
          : BoxConstraintsModel.fromJson(
              json['constraints_boxConstraints'] as Map<String, dynamic>),
      color_color: json['color_color'] as String?,
      selectedColor_color: json['selectedColor_color'] as String?,
      disabledColor_color: json['disabledColor_color'] as String?,
      fillColor_color: json['fillColor_color'] as String?,
      focusColor_color: json['focusColor_color'] as String?,
      highlightColor_color: json['highlightColor_color'] as String?,
      hoverColor_color: json['hoverColor_color'] as String?,
      splashColor_color: json['splashColor_color'] as String?,
      borderColor_color: json['borderColor_color'] as String?,
      selectedBorderColor_color: json['selectedBorderColor_color'] as String?,
      disabledBorderColor_color: json['disabledBorderColor_color'] as String?,
      borderRadius_borderRadius: json['borderRadius_borderRadius'] == null
          ? const BorderRadiusModel()
          : BorderRadiusModel.fromJson(
              json['borderRadius_borderRadius'] as Map<String, dynamic>),
      borderWidth_double: (json['borderWidth_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ToggleButtonModelImplToJson(
        _$ToggleButtonModelImpl instance) =>
    <String, dynamic>{
      'textStyle_textStyle': instance.textStyle_textStyle,
      'constraints_boxConstraints':
          instance.constraints_boxConstraints?.toJson(),
      'color_color': instance.color_color,
      'selectedColor_color': instance.selectedColor_color,
      'disabledColor_color': instance.disabledColor_color,
      'fillColor_color': instance.fillColor_color,
      'focusColor_color': instance.focusColor_color,
      'highlightColor_color': instance.highlightColor_color,
      'hoverColor_color': instance.hoverColor_color,
      'splashColor_color': instance.splashColor_color,
      'borderColor_color': instance.borderColor_color,
      'selectedBorderColor_color': instance.selectedBorderColor_color,
      'disabledBorderColor_color': instance.disabledBorderColor_color,
      'borderRadius_borderRadius': instance.borderRadius_borderRadius?.toJson(),
      'borderWidth_double': instance.borderWidth_double,
    };
