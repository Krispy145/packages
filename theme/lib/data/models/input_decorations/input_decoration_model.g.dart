// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_decoration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputDecorationModelImpl _$$InputDecorationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputDecorationModelImpl(
      labelStyle_textStyleString: json['labelStyle_textStyleString'] as String?,
      floatingLabelStyle_textStyleString:
          json['floatingLabelStyle_textStyleString'] as String?,
      helperStyle_textStyleString:
          json['helperStyle_textStyleString'] as String?,
      helperMaxLines_int: json['helperMaxLines_int'] as int?,
      hintStyle_textStyleString: json['hintStyle_textStyleString'] as String?,
      hintFadeDuration_duration: json['hintFadeDuration_duration'] == null
          ? null
          : Duration(microseconds: json['hintFadeDuration_duration'] as int),
      errorStyle_textStyleString: json['errorStyle_textStyleString'] as String?,
      errorMaxLines_int: json['errorMaxLines_int'] as int?,
      isDense_bool: json['isDense_bool'] as bool? ?? false,
      contentPadding_edgeInsets: json['contentPadding_edgeInsets'] == null
          ? const EdgeInsetsModel()
          : EdgeInsetsModel.fromJson(
              json['contentPadding_edgeInsets'] as Map<String, dynamic>),
      isCollapsed_bool: json['isCollapsed_bool'] as bool? ?? false,
      iconColor_themeColorString: json['iconColor_themeColorString'] as String?,
      prefixStyle_textStyleString:
          json['prefixStyle_textStyleString'] as String?,
      prefixIconColor_themeColorString:
          json['prefixIconColor_themeColorString'] as String?,
      suffixStyle_textStyleString:
          json['suffixStyle_textStyleString'] as String?,
      suffixIconColor_themeColorString:
          json['suffixIconColor_themeColorString'] as String?,
      counterStyle_textStyleString:
          json['counterStyle_textStyleString'] as String?,
      filled_bool: json['filled_bool'] as bool? ?? false,
      fillColor_themeColorString: json['fillColor_themeColorString'] as String?,
      activeIndicatorBorder_borderSide:
          json['activeIndicatorBorder_borderSide'] == null
              ? const BorderSideModel()
              : BorderSideModel.fromJson(
                  json['activeIndicatorBorder_borderSide']
                      as Map<String, dynamic>),
      outlineBorder_borderSide: json['outlineBorder_borderSide'] == null
          ? const BorderSideModel()
          : BorderSideModel.fromJson(
              json['outlineBorder_borderSide'] as Map<String, dynamic>),
      focusColor_themeColorString:
          json['focusColor_themeColorString'] as String?,
      hoverColor_themeColorString:
          json['hoverColor_themeColorString'] as String?,
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
      'labelStyle_textStyleString': instance.labelStyle_textStyleString,
      'floatingLabelStyle_textStyleString':
          instance.floatingLabelStyle_textStyleString,
      'helperStyle_textStyleString': instance.helperStyle_textStyleString,
      'helperMaxLines_int': instance.helperMaxLines_int,
      'hintStyle_textStyleString': instance.hintStyle_textStyleString,
      'hintFadeDuration_duration':
          instance.hintFadeDuration_duration?.inMicroseconds,
      'errorStyle_textStyleString': instance.errorStyle_textStyleString,
      'errorMaxLines_int': instance.errorMaxLines_int,
      'isDense_bool': instance.isDense_bool,
      'contentPadding_edgeInsets': instance.contentPadding_edgeInsets?.toJson(),
      'isCollapsed_bool': instance.isCollapsed_bool,
      'iconColor_themeColorString': instance.iconColor_themeColorString,
      'prefixStyle_textStyleString': instance.prefixStyle_textStyleString,
      'prefixIconColor_themeColorString':
          instance.prefixIconColor_themeColorString,
      'suffixStyle_textStyleString': instance.suffixStyle_textStyleString,
      'suffixIconColor_themeColorString':
          instance.suffixIconColor_themeColorString,
      'counterStyle_textStyleString': instance.counterStyle_textStyleString,
      'filled_bool': instance.filled_bool,
      'fillColor_themeColorString': instance.fillColor_themeColorString,
      'activeIndicatorBorder_borderSide':
          instance.activeIndicatorBorder_borderSide?.toJson(),
      'outlineBorder_borderSide': instance.outlineBorder_borderSide?.toJson(),
      'focusColor_themeColorString': instance.focusColor_themeColorString,
      'hoverColor_themeColorString': instance.hoverColor_themeColorString,
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
