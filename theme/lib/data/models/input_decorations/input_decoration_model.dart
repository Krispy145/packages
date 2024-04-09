// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/border_side_model.dart';
import 'package:theme/data/models/borders/input_border_model.dart';
import 'package:theme/data/models/box_constraints_model.dart';
import 'package:theme/data/models/edge_insets_model.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'input_decoration_model.freezed.dart';
part 'input_decoration_model.g.dart';

@freezed
class InputDecorationModel with _$InputDecorationModel {
  const factory InputDecorationModel({
    TextStyleString? labelStyle_textStyle,
    TextStyleString? floatingLabelStyle_textStyle,
    TextStyleString? helperStyle_textStyle,
    int? helperMaxLines_int,
    TextStyleString? hintStyle_textStyle,
    Duration? hintFadeDuration_duration,
    TextStyleString? errorStyle_textStyle,
    int? errorMaxLines_int,
    @Default(false) bool isDense_bool,
    @Default(EdgeInsetsModel()) EdgeInsetsModel? contentPadding_edgeInsets,
    @Default(false) bool isCollapsed_bool,
    ThemeColorString? iconColor_color,
    TextStyleString? prefixStyle_textStyle,
    ThemeColorString? prefixIconColor_color,
    TextStyleString? suffixStyle_textStyle,
    ThemeColorString? suffixIconColor_color,
    TextStyleString? counterStyle_textStyle,
    @Default(false) bool filled_bool,
    ThemeColorString? fillColor_color,
    @Default(BorderSideModel()) BorderSideModel? activeIndicatorBorder_borderSide,
    @Default(BorderSideModel()) BorderSideModel? outlineBorder_borderSide,
    ThemeColorString? focusColor_color,
    ThemeColorString? hoverColor_color,
    @Default(InputBorderModel()) InputBorderModel? errorBorder_inputBorder,
    @Default(InputBorderModel()) InputBorderModel? focusedBorder_inputBorder,
    @Default(InputBorderModel()) InputBorderModel? focusedErrorBorder_inputBorder,
    @Default(InputBorderModel()) InputBorderModel? disabledBorder_inputBorder,
    @Default(InputBorderModel()) InputBorderModel? enabledBorder_inputBorder,
    @Default(InputBorderModel()) InputBorderModel? border_inputBorder,
    @Default(false) bool alignLabelWithHint_bool,
    @Default(BoxConstraintsModel()) BoxConstraintsModel? constraints_boxConstraints,
  }) = _InputDecorationModel;

  const InputDecorationModel._();

  factory InputDecorationModel.fromJson(Map<String, dynamic> json) => _$InputDecorationModelFromJson(json);

  // static InputDecorationModel defaultInputDecorationModel() {
  //   return InputDecorationModel(
  //     labelStyle: "label-small",
  //     floatingLabelStyle: "label-small",
  //     helperStyle: "label-small",
  //     helperMaxLines: 1,
  //     hintStyle: "label-small",
  //     hintFadeDuration: const Duration(milliseconds: 300),
  //     errorStyle: "error-small",
  //     errorMaxLines: 1,
  //     isDense: false,
  //     contentPadding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 8.0, right: 8.0),
  //     isCollapsed: false,
  //     iconColor: "primary",
  //     prefixStyle: "label-small",
  //     prefixIconColor: "primary",
  //     suffixStyle: "label-small",
  //     suffixIconColor: "primary",
  //     counterStyle: "label-small",
  //     filled: true,
  //     fillColor: "surface",
  //     activeIndicatorBorder: BorderSide(
  //       width: 1.0,
  //       color: "primary".toColor() ?? Colors.transparent,
  //     ),
  //     outlineBorder: BorderSide(
  //       width: 1.0,
  //       color: "primary".toColor() ?? Colors.transparent,
  //     ),
  //     focusColor: "primary",
  //     hoverColor: "primary",
  //     errorBorder: OutlineInputBorder(
  //       borderSide: BorderSide(
  //         width: 1.0,
  //         color: "error".toColor() ?? Colors.transparent,
  //       ),
  //     ),
  //     focusedBorder: OutlineInputBorder(
  //       borderSide: BorderSide(
  //         width: 1.0,
  //         color: "primary".toColor() ?? Colors.transparent,
  //       ),
  //     ),
  //     focusedErrorBorder: OutlineInputBorder(
  //       borderSide: BorderSide(
  //         width: 1.0,
  //         color: "error".toColor() ?? Colors.transparent,
  //       ),
  //     ),
  //     disabledBorder: OutlineInputBorder(
  //       borderSide: BorderSide(
  //         width: 1.0,
  //         color: "disabled".toColor() ?? Colors.transparent,
  //       ),
  //     ),
  //     enabledBorder: OutlineInputBorder(
  //       borderSide: BorderSide(
  //         width: 1.0,
  //         color: "primary".toColor() ?? Colors.transparent,
  //       ),
  //     ),
  //     border: OutlineInputBorder(
  //       borderSide: BorderSide(
  //         width: 1.0,
  //         color: "primary".toColor() ?? Colors.transparent,
  //       ),
  //     ),
  //     alignLabelWithHint: true,
  //     constraints: const BoxConstraints(
  //       minWidth: 100.0,
  //       minHeight: 50.0,
  //       maxWidth: 300.0,
  //       maxHeight: 600.0,
  //     ),
  //   );
  // }

  InputDecorationTheme asInputDecorationTheme({String? styleTypeName}) {
    return InputDecorationTheme(
      labelStyle: labelStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      floatingLabelStyle: floatingLabelStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      helperStyle: helperStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      helperMaxLines: helperMaxLines_int,
      hintStyle: hintStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      hintFadeDuration: hintFadeDuration_duration,
      errorStyle: errorStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      errorMaxLines: errorMaxLines_int,
      isDense: isDense_bool,
      contentPadding: contentPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      isCollapsed: isCollapsed_bool,
      iconColor: iconColor_color?.toColor(styleType: styleTypeName),
      prefixStyle: prefixStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      prefixIconColor: prefixIconColor_color?.toColor(styleType: styleTypeName),
      suffixStyle: suffixStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      suffixIconColor: suffixIconColor_color?.toColor(styleType: styleTypeName),
      counterStyle: counterStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      filled: filled_bool,
      fillColor: fillColor_color?.toColor(styleType: styleTypeName),
      focusColor: focusColor_color?.toColor(styleType: styleTypeName),
      hoverColor: hoverColor_color?.toColor(styleType: styleTypeName),
      errorBorder: errorBorder_inputBorder?.asInputBorder(styleTypeName: styleTypeName),
      focusedBorder: focusedBorder_inputBorder?.asInputBorder(styleTypeName: styleTypeName),
      focusedErrorBorder: focusedErrorBorder_inputBorder?.asInputBorder(styleTypeName: styleTypeName),
      disabledBorder: disabledBorder_inputBorder?.asInputBorder(styleTypeName: styleTypeName),
      enabledBorder: enabledBorder_inputBorder?.asInputBorder(styleTypeName: styleTypeName),
      border: border_inputBorder?.asInputBorder(styleTypeName: styleTypeName),
      alignLabelWithHint: alignLabelWithHint_bool,
      constraints: constraints_boxConstraints?.asBoxConstraints(styleTypeName: styleTypeName),
    );
  }

  InputDecoration asInputDecoration({String? styleTypeName}) {
    return InputDecoration(
      labelStyle: labelStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      floatingLabelStyle: floatingLabelStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      helperStyle: helperStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      helperMaxLines: helperMaxLines_int,
      hintStyle: hintStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      hintFadeDuration: hintFadeDuration_duration,
      errorStyle: errorStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      errorMaxLines: errorMaxLines_int,
      isDense: isDense_bool,
      contentPadding: contentPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      isCollapsed: isCollapsed_bool,
      iconColor: iconColor_color?.toColor(styleType: styleTypeName),
      prefixStyle: prefixStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      prefixIconColor: prefixIconColor_color?.toColor(styleType: styleTypeName),
      suffixStyle: suffixStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      suffixIconColor: suffixIconColor_color?.toColor(styleType: styleTypeName),
      counterStyle: counterStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      filled: filled_bool,
      fillColor: fillColor_color?.toColor(styleType: styleTypeName),
      focusColor: focusColor_color?.toColor(styleType: styleTypeName),
      hoverColor: hoverColor_color?.toColor(styleType: styleTypeName),
      errorBorder: errorBorder_inputBorder?.asInputBorder(styleTypeName: styleTypeName),
      focusedBorder: focusedBorder_inputBorder?.asInputBorder(styleTypeName: styleTypeName),
      focusedErrorBorder: focusedErrorBorder_inputBorder?.asInputBorder(styleTypeName: styleTypeName),
      disabledBorder: disabledBorder_inputBorder?.asInputBorder(styleTypeName: styleTypeName),
      enabledBorder: enabledBorder_inputBorder?.asInputBorder(styleTypeName: styleTypeName),
      border: border_inputBorder?.asInputBorder(styleTypeName: styleTypeName),
      alignLabelWithHint: alignLabelWithHint_bool,
      constraints: constraints_boxConstraints?.asBoxConstraints(styleTypeName: styleTypeName),
    );
  }
}
