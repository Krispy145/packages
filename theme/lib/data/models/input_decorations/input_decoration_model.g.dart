// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_decoration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputDecorationModelImpl _$$InputDecorationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$InputDecorationModelImpl(
      labelStyle: json['labelStyle'] as String?,
      floatingLabelStyle: json['floatingLabelStyle'] as String?,
      helperStyle: json['helperStyle'] as String?,
      helperMaxLines: json['helperMaxLines'] as int?,
      hintStyle: json['hintStyle'] as String?,
      hintFadeDuration: json['hintFadeDuration'] == null
          ? null
          : Duration(microseconds: json['hintFadeDuration'] as int),
      errorStyle: json['errorStyle'] as String?,
      errorMaxLines: json['errorMaxLines'] as int?,
      isDense: json['isDense'] as bool? ?? false,
      contentPadding: const EdgeInsetsConverter()
          .fromJson(json['contentPadding'] as Map<String, dynamic>?),
      isCollapsed: json['isCollapsed'] as bool? ?? false,
      iconColor: json['iconColor'] as String?,
      prefixStyle: json['prefixStyle'] as String?,
      prefixIconColor: json['prefixIconColor'] as String?,
      suffixStyle: json['suffixStyle'] as String?,
      suffixIconColor: json['suffixIconColor'] as String?,
      counterStyle: json['counterStyle'] as String?,
      filled: json['filled'] as bool? ?? false,
      fillColor: json['fillColor'] as String?,
      activeIndicatorBorder: const BorderSideConverter()
          .fromJson(json['activeIndicatorBorder'] as Map<String, dynamic>?),
      outlineBorder: const BorderSideConverter()
          .fromJson(json['outlineBorder'] as Map<String, dynamic>?),
      focusColor: json['focusColor'] as String?,
      hoverColor: json['hoverColor'] as String?,
      errorBorder: const InputBorderConverter()
          .fromJson(json['errorBorder'] as Map<String, dynamic>?),
      focusedBorder: const InputBorderConverter()
          .fromJson(json['focusedBorder'] as Map<String, dynamic>?),
      focusedErrorBorder: const InputBorderConverter()
          .fromJson(json['focusedErrorBorder'] as Map<String, dynamic>?),
      disabledBorder: const InputBorderConverter()
          .fromJson(json['disabledBorder'] as Map<String, dynamic>?),
      enabledBorder: const InputBorderConverter()
          .fromJson(json['enabledBorder'] as Map<String, dynamic>?),
      border: const InputBorderConverter()
          .fromJson(json['border'] as Map<String, dynamic>?),
      alignLabelWithHint: json['alignLabelWithHint'] as bool? ?? false,
      constraints: const BoxConstraintsConverter()
          .fromJson(json['constraints'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$InputDecorationModelImplToJson(
        _$InputDecorationModelImpl instance) =>
    <String, dynamic>{
      'labelStyle': instance.labelStyle,
      'floatingLabelStyle': instance.floatingLabelStyle,
      'helperStyle': instance.helperStyle,
      'helperMaxLines': instance.helperMaxLines,
      'hintStyle': instance.hintStyle,
      'hintFadeDuration': instance.hintFadeDuration?.inMicroseconds,
      'errorStyle': instance.errorStyle,
      'errorMaxLines': instance.errorMaxLines,
      'isDense': instance.isDense,
      'contentPadding':
          const EdgeInsetsConverter().toJson(instance.contentPadding),
      'isCollapsed': instance.isCollapsed,
      'iconColor': instance.iconColor,
      'prefixStyle': instance.prefixStyle,
      'prefixIconColor': instance.prefixIconColor,
      'suffixStyle': instance.suffixStyle,
      'suffixIconColor': instance.suffixIconColor,
      'counterStyle': instance.counterStyle,
      'filled': instance.filled,
      'fillColor': instance.fillColor,
      'activeIndicatorBorder':
          const BorderSideConverter().toJson(instance.activeIndicatorBorder),
      'outlineBorder':
          const BorderSideConverter().toJson(instance.outlineBorder),
      'focusColor': instance.focusColor,
      'hoverColor': instance.hoverColor,
      'errorBorder': const InputBorderConverter().toJson(instance.errorBorder),
      'focusedBorder':
          const InputBorderConverter().toJson(instance.focusedBorder),
      'focusedErrorBorder':
          const InputBorderConverter().toJson(instance.focusedErrorBorder),
      'disabledBorder':
          const InputBorderConverter().toJson(instance.disabledBorder),
      'enabledBorder':
          const InputBorderConverter().toJson(instance.enabledBorder),
      'border': const InputBorderConverter().toJson(instance.border),
      'alignLabelWithHint': instance.alignLabelWithHint,
      'constraints':
          const BoxConstraintsConverter().toJson(instance.constraints),
    };
