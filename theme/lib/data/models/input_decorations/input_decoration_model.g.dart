// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_decoration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputDecorationModelImpl _$$InputDecorationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputDecorationModelImpl(
      labelStyle_textStyle: json['labelStyle_textStyle'] as String?,
      floatingLabelStyle_textStyle:
          json['floatingLabelStyle_textStyle'] as String?,
      helperStyle_textStyle: json['helperStyle_textStyle'] as String?,
      helperMaxLines_int: json['helperMaxLines_int'] as int?,
      hintStyle_textStyle: json['hintStyle_textStyle'] as String?,
      hintFadeDuration_duration: json['hintFadeDuration_duration'] == null
          ? null
          : Duration(microseconds: json['hintFadeDuration_duration'] as int),
      errorStyle_textStyle: json['errorStyle_textStyle'] as String?,
      errorMaxLines_int: json['errorMaxLines_int'] as int?,
      isDense_bool: json['isDense_bool'] as bool? ?? false,
      contentPadding_edgeInsets: const EdgeInsetsConverter()
          .fromJson(json['contentPadding_edgeInsets'] as Map<String, dynamic>?),
      isCollapsed_bool: json['isCollapsed_bool'] as bool? ?? false,
      iconColor_color: json['iconColor_color'] as String?,
      prefixStyle_textStyle: json['prefixStyle_textStyle'] as String?,
      prefixIconColor_color: json['prefixIconColor_color'] as String?,
      suffixStyle_textStyle: json['suffixStyle_textStyle'] as String?,
      suffixIconColor_color: json['suffixIconColor_color'] as String?,
      counterStyle_textStyle: json['counterStyle_textStyle'] as String?,
      filled_bool: json['filled_bool'] as bool? ?? false,
      fillColor_color: json['fillColor_color'] as String?,
      activeIndicatorBorder_borderSide:
          json['activeIndicatorBorder_borderSide'] == null
              ? null
              : BorderSideModel.fromJson(
                  json['activeIndicatorBorder_borderSide']
                      as Map<String, dynamic>),
      outlineBorder_borderSide: json['outlineBorder_borderSide'] == null
          ? null
          : BorderSideModel.fromJson(
              json['outlineBorder_borderSide'] as Map<String, dynamic>),
      focusColor_color: json['focusColor_color'] as String?,
      hoverColor_color: json['hoverColor_color'] as String?,
      errorBorder_inputBorder: json['errorBorder_inputBorder'] == null
          ? const InputBorderModel()
          : InputBorderModel.fromJson(
              json['errorBorder_inputBorder'] as Map<String, dynamic>),
      focusedBorder_inputBorder: json['focusedBorder_inputBorder'] == null
          ? const InputBorderModel()
          : InputBorderModel.fromJson(
              json['focusedBorder_inputBorder'] as Map<String, dynamic>),
      focusedErrorBorder_inputBorder: json['focusedErrorBorder_inputBorder'] ==
              null
          ? const InputBorderModel()
          : InputBorderModel.fromJson(
              json['focusedErrorBorder_inputBorder'] as Map<String, dynamic>),
      disabledBorder_inputBorder: json['disabledBorder_inputBorder'] == null
          ? const InputBorderModel()
          : InputBorderModel.fromJson(
              json['disabledBorder_inputBorder'] as Map<String, dynamic>),
      enabledBorder_inputBorder: json['enabledBorder_inputBorder'] == null
          ? const InputBorderModel()
          : InputBorderModel.fromJson(
              json['enabledBorder_inputBorder'] as Map<String, dynamic>),
      border_inputBorder: json['border_inputBorder'] == null
          ? const InputBorderModel()
          : InputBorderModel.fromJson(
              json['border_inputBorder'] as Map<String, dynamic>),
      alignLabelWithHint_bool:
          json['alignLabelWithHint_bool'] as bool? ?? false,
      constraints_boxConstraints: json['constraints_boxConstraints'] == null
          ? const BoxConstraintsModel()
          : BoxConstraintsModel.fromJson(
              json['constraints_boxConstraints'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InputDecorationModelImplToJson(
        _$InputDecorationModelImpl instance) =>
    <String, dynamic>{
      'labelStyle_textStyle': instance.labelStyle_textStyle,
      'floatingLabelStyle_textStyle': instance.floatingLabelStyle_textStyle,
      'helperStyle_textStyle': instance.helperStyle_textStyle,
      'helperMaxLines_int': instance.helperMaxLines_int,
      'hintStyle_textStyle': instance.hintStyle_textStyle,
      'hintFadeDuration_duration':
          instance.hintFadeDuration_duration?.inMicroseconds,
      'errorStyle_textStyle': instance.errorStyle_textStyle,
      'errorMaxLines_int': instance.errorMaxLines_int,
      'isDense_bool': instance.isDense_bool,
      'contentPadding_edgeInsets': const EdgeInsetsConverter()
          .toJson(instance.contentPadding_edgeInsets),
      'isCollapsed_bool': instance.isCollapsed_bool,
      'iconColor_color': instance.iconColor_color,
      'prefixStyle_textStyle': instance.prefixStyle_textStyle,
      'prefixIconColor_color': instance.prefixIconColor_color,
      'suffixStyle_textStyle': instance.suffixStyle_textStyle,
      'suffixIconColor_color': instance.suffixIconColor_color,
      'counterStyle_textStyle': instance.counterStyle_textStyle,
      'filled_bool': instance.filled_bool,
      'fillColor_color': instance.fillColor_color,
      'activeIndicatorBorder_borderSide':
          instance.activeIndicatorBorder_borderSide?.toJson(),
      'outlineBorder_borderSide': instance.outlineBorder_borderSide?.toJson(),
      'focusColor_color': instance.focusColor_color,
      'hoverColor_color': instance.hoverColor_color,
      'errorBorder_inputBorder': instance.errorBorder_inputBorder?.toJson(),
      'focusedBorder_inputBorder': instance.focusedBorder_inputBorder?.toJson(),
      'focusedErrorBorder_inputBorder':
          instance.focusedErrorBorder_inputBorder?.toJson(),
      'disabledBorder_inputBorder':
          instance.disabledBorder_inputBorder?.toJson(),
      'enabledBorder_inputBorder': instance.enabledBorder_inputBorder?.toJson(),
      'border_inputBorder': instance.border_inputBorder?.toJson(),
      'alignLabelWithHint_bool': instance.alignLabelWithHint_bool,
      'constraints_boxConstraints':
          instance.constraints_boxConstraints?.toJson(),
    };
