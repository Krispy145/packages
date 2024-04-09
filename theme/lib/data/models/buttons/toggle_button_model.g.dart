// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toggle_button_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToggleButtonModelImpl _$$ToggleButtonModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ToggleButtonModelImpl(
      textStyle_textStyleString: json['textStyle_textStyleString'] as String?,
      constraints_boxConstraints: json['constraints_boxConstraints'] == null
          ? const BoxConstraintsModel()
          : BoxConstraintsModel.fromJson(
              json['constraints_boxConstraints'] as Map<String, dynamic>),
      color_themeColorString: json['color_themeColorString'] as String?,
      selectedColor_themeColorString:
          json['selectedColor_themeColorString'] as String?,
      disabledColor_themeColorString:
          json['disabledColor_themeColorString'] as String?,
      fillColor_themeColorString: json['fillColor_themeColorString'] as String?,
      focusColor_themeColorString:
          json['focusColor_themeColorString'] as String?,
      highlightColor_themeColorString:
          json['highlightColor_themeColorString'] as String?,
      hoverColor_themeColorString:
          json['hoverColor_themeColorString'] as String?,
      splashColor_themeColorString:
          json['splashColor_themeColorString'] as String?,
      borderColor_themeColorString:
          json['borderColor_themeColorString'] as String?,
      selectedBorderColor_themeColorString:
          json['selectedBorderColor_themeColorString'] as String?,
      disabledBorderColor_themeColorString:
          json['disabledBorderColor_themeColorString'] as String?,
      borderRadius_borderRadius: json['borderRadius_borderRadius'] == null
          ? const BorderRadiusModel()
          : BorderRadiusModel.fromJson(
              json['borderRadius_borderRadius'] as Map<String, dynamic>),
      borderWidth_double: (json['borderWidth_double'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ToggleButtonModelImplToJson(
        _$ToggleButtonModelImpl instance) =>
    <String, dynamic>{
      'textStyle_textStyleString': instance.textStyle_textStyleString,
      'constraints_boxConstraints':
          instance.constraints_boxConstraints?.toJson(),
      'color_themeColorString': instance.color_themeColorString,
      'selectedColor_themeColorString': instance.selectedColor_themeColorString,
      'disabledColor_themeColorString': instance.disabledColor_themeColorString,
      'fillColor_themeColorString': instance.fillColor_themeColorString,
      'focusColor_themeColorString': instance.focusColor_themeColorString,
      'highlightColor_themeColorString':
          instance.highlightColor_themeColorString,
      'hoverColor_themeColorString': instance.hoverColor_themeColorString,
      'splashColor_themeColorString': instance.splashColor_themeColorString,
      'borderColor_themeColorString': instance.borderColor_themeColorString,
      'selectedBorderColor_themeColorString':
          instance.selectedBorderColor_themeColorString,
      'disabledBorderColor_themeColorString':
          instance.disabledBorderColor_themeColorString,
      'borderRadius_borderRadius': instance.borderRadius_borderRadius?.toJson(),
      'borderWidth_double': instance.borderWidth_double,
    };
