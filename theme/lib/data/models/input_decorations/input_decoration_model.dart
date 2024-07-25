// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/border_side_model.dart";
import "package:theme/data/models/borders/input_border_model.dart";
import "package:theme/data/models/box_constraints_model.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "input_decoration_model.mapper.dart";

class DurationMapper extends SimpleMapper<Duration> {
  const DurationMapper();
  @override
  Duration decode(Object value) {
    if (value is int) {
      return Duration(microseconds: value);
    } else if (value is Map) {
      return Duration(
        days: value["days_int"] as int? ?? 0,
        hours: value["hours_int"] as int? ?? 0,
        minutes: value["minutes_int"] as int? ?? 0,
        seconds: value["seconds_int"] as int? ?? 0,
        milliseconds: value["milliseconds_int"] as int? ?? 0,
        microseconds: value["microseconds_int"] as int? ?? 0,
      );
    } else {
      return Duration.zero;
    }
  }

  @override
  Object? encode(Duration self) {
    return {
      "days_int": self.inDays,
      "hours_int": self.inHours,
      "minutes_int": self.inMinutes,
      "seconds_int": self.inSeconds,
      "milliseconds_int": self.inMilliseconds,
      "microseconds_int": self.inMicroseconds,
    };
  }
}

@MappableClass(includeCustomMappers: [DurationMapper()])
class InputDecorationModel with InputDecorationModelMappable {
  final TextStyleString? labelStyle_textStyleString;
  final TextStyleString? floatingLabelStyle_textStyleString;
  final TextStyleString? helperStyle_textStyleString;
  final int? helperMaxLines_int;
  final TextStyleString? hintStyle_textStyleString;
  final Duration? hintFadeDuration_duration; // TODO: Handle Duration mapping
  final TextStyleString? errorStyle_textStyleString;
  final int? errorMaxLines_int;
  @MappableValue(false)
  final bool isDense_bool;
  @MappableValue(EdgeInsetsModel())
  final EdgeInsetsModel? contentPadding_edgeInsets;
  @MappableValue(false)
  final bool isCollapsed_bool;
  final ThemeColorString? iconColor_themeColorString;
  final TextStyleString? prefixStyle_textStyleString;
  final ThemeColorString? prefixIconColor_themeColorString;
  final TextStyleString? suffixStyle_textStyleString;
  final ThemeColorString? suffixIconColor_themeColorString;
  final TextStyleString? counterStyle_textStyleString;
  @MappableValue(false)
  final bool filled_bool;
  final ThemeColorString? fillColor_themeColorString;
  @MappableValue(BorderSideModel())
  final BorderSideModel? activeIndicatorBorder_borderSide;
  @MappableValue(BorderSideModel())
  final BorderSideModel? outlineBorder_borderSide;
  final ThemeColorString? focusColor_themeColorString;
  final ThemeColorString? hoverColor_themeColorString;
  @MappableValue(InputBorderModel())
  final InputBorderModel? errorBorder_inputBorder;
  @MappableValue(InputBorderModel())
  final InputBorderModel? focusedBorder_inputBorder;
  @MappableValue(InputBorderModel())
  final InputBorderModel? focusedErrorBorder_inputBorder;
  @MappableValue(InputBorderModel())
  final InputBorderModel? disabledBorder_inputBorder;
  @MappableValue(InputBorderModel())
  final InputBorderModel? enabledBorder_inputBorder;
  @MappableValue(InputBorderModel())
  final InputBorderModel? border_inputBorder;
  @MappableValue(false)
  final bool alignLabelWithHint_bool;
  @MappableValue(BoxConstraintsModel())
  final BoxConstraintsModel? constraints_boxConstraints;

  const InputDecorationModel({
    this.labelStyle_textStyleString,
    this.floatingLabelStyle_textStyleString,
    this.helperStyle_textStyleString,
    this.helperMaxLines_int,
    this.hintStyle_textStyleString,
    this.hintFadeDuration_duration,
    this.errorStyle_textStyleString,
    this.errorMaxLines_int,
    this.isDense_bool = false,
    this.contentPadding_edgeInsets = const EdgeInsetsModel(),
    this.isCollapsed_bool = false,
    this.iconColor_themeColorString,
    this.prefixStyle_textStyleString,
    this.prefixIconColor_themeColorString,
    this.suffixStyle_textStyleString,
    this.suffixIconColor_themeColorString,
    this.counterStyle_textStyleString,
    this.filled_bool = false,
    this.fillColor_themeColorString,
    this.activeIndicatorBorder_borderSide = const BorderSideModel(),
    this.outlineBorder_borderSide = const BorderSideModel(),
    this.focusColor_themeColorString,
    this.hoverColor_themeColorString,
    this.errorBorder_inputBorder = const InputBorderModel(),
    this.focusedBorder_inputBorder = const InputBorderModel(),
    this.focusedErrorBorder_inputBorder = const InputBorderModel(),
    this.disabledBorder_inputBorder = const InputBorderModel(),
    this.enabledBorder_inputBorder = const InputBorderModel(),
    this.border_inputBorder = const InputBorderModel(),
    this.alignLabelWithHint_bool = false,
    this.constraints_boxConstraints = const BoxConstraintsModel(),
  });

  static const fromMap = InputDecorationModelMapper.fromMap;
  static const fromJson = InputDecorationModelMapper.fromJson;

  InputDecorationTheme asInputDecorationTheme({String? styleTypeName}) {
    return InputDecorationTheme(
      labelStyle: labelStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      floatingLabelStyle: floatingLabelStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      helperStyle: helperStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      helperMaxLines: helperMaxLines_int,
      hintStyle: hintStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      hintFadeDuration: hintFadeDuration_duration,
      errorStyle: errorStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      errorMaxLines: errorMaxLines_int,
      isDense: isDense_bool,
      contentPadding: contentPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      isCollapsed: isCollapsed_bool,
      iconColor: iconColor_themeColorString?.toColor(styleType: styleTypeName),
      prefixStyle: prefixStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      prefixIconColor: prefixIconColor_themeColorString?.toColor(styleType: styleTypeName),
      suffixStyle: suffixStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      suffixIconColor: suffixIconColor_themeColorString?.toColor(styleType: styleTypeName),
      counterStyle: counterStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      filled: filled_bool,
      fillColor: fillColor_themeColorString?.toColor(styleType: styleTypeName),
      focusColor: focusColor_themeColorString?.toColor(styleType: styleTypeName),
      hoverColor: hoverColor_themeColorString?.toColor(styleType: styleTypeName),
      errorBorder: errorBorder_inputBorder?.asInputBorder(styleTypeName: styleTypeName),
      focusedBorder: focusedBorder_inputBorder?.asInputBorder(
        styleTypeName: styleTypeName,
      ),
      focusedErrorBorder: focusedErrorBorder_inputBorder?.asInputBorder(
        styleTypeName: styleTypeName,
      ),
      disabledBorder: disabledBorder_inputBorder?.asInputBorder(
        styleTypeName: styleTypeName,
      ),
      enabledBorder: enabledBorder_inputBorder?.asInputBorder(
        styleTypeName: styleTypeName,
      ),
      border: border_inputBorder?.asInputBorder(styleTypeName: styleTypeName),
      alignLabelWithHint: alignLabelWithHint_bool,
      constraints: constraints_boxConstraints?.asBoxConstraints(
        styleTypeName: styleTypeName,
      ),
    );
  }

  InputDecoration asInputDecoration({String? styleTypeName}) {
    return InputDecoration(
      labelStyle: labelStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      floatingLabelStyle: floatingLabelStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      helperStyle: helperStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      helperMaxLines: helperMaxLines_int,
      hintStyle: hintStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      hintFadeDuration: hintFadeDuration_duration,
      errorStyle: errorStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      errorMaxLines: errorMaxLines_int,
      isDense: isDense_bool,
      contentPadding: contentPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      isCollapsed: isCollapsed_bool,
      iconColor: iconColor_themeColorString?.toColor(styleType: styleTypeName),
      prefixStyle: prefixStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      prefixIconColor: prefixIconColor_themeColorString?.toColor(styleType: styleTypeName),
      suffixStyle: suffixStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      suffixIconColor: suffixIconColor_themeColorString?.toColor(styleType: styleTypeName),
      counterStyle: counterStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      filled: filled_bool,
      fillColor: fillColor_themeColorString?.toColor(styleType: styleTypeName),
      focusColor: focusColor_themeColorString?.toColor(styleType: styleTypeName),
      hoverColor: hoverColor_themeColorString?.toColor(styleType: styleTypeName),
      errorBorder: errorBorder_inputBorder?.asInputBorder(styleTypeName: styleTypeName),
      focusedBorder: focusedBorder_inputBorder?.asInputBorder(
        styleTypeName: styleTypeName,
      ),
      focusedErrorBorder: focusedErrorBorder_inputBorder?.asInputBorder(
        styleTypeName: styleTypeName,
      ),
      disabledBorder: disabledBorder_inputBorder?.asInputBorder(
        styleTypeName: styleTypeName,
      ),
      enabledBorder: enabledBorder_inputBorder?.asInputBorder(
        styleTypeName: styleTypeName,
      ),
      border: border_inputBorder?.asInputBorder(styleTypeName: styleTypeName),
      alignLabelWithHint: alignLabelWithHint_bool,
      constraints: constraints_boxConstraints?.asBoxConstraints(
        styleTypeName: styleTypeName,
      ),
    );
  }
}
