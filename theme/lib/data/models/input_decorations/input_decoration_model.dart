import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/border_side/border_side.dart';
import 'package:theme/domain/converters/box/constraints.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/domain/converters/input_border/input_border.dart';
import 'package:theme/extensions/string.dart';

part 'input_decoration_model.freezed.dart';
part 'input_decoration_model.g.dart';

@freezed
class InputDecorationModel with _$InputDecorationModel {
  const factory InputDecorationModel({
    String? labelStyle,
    String? floatingLabelStyle,
    String? helperStyle,
    int? helperMaxLines,
    String? hintStyle,
    Duration? hintFadeDuration,
    String? errorStyle,
    int? errorMaxLines,
    @Default(false) bool isDense,
    @EdgeInsetsConverter() EdgeInsets? contentPadding,
    @Default(false) bool isCollapsed,
    String? iconColor,
    String? prefixStyle,
    String? prefixIconColor,
    String? suffixStyle,
    String? suffixIconColor,
    String? counterStyle,
    @Default(false) bool filled,
    String? fillColor,
    @BorderSideConverter() BorderSide? activeIndicatorBorder,
    @BorderSideConverter() BorderSide? outlineBorder,
    String? focusColor,
    String? hoverColor,
    @InputBorderConverter() InputBorder? errorBorder,
    @InputBorderConverter() InputBorder? focusedBorder,
    @InputBorderConverter() InputBorder? focusedErrorBorder,
    @InputBorderConverter() InputBorder? disabledBorder,
    @InputBorderConverter() InputBorder? enabledBorder,
    @InputBorderConverter() InputBorder? border,
    @Default(false) bool alignLabelWithHint,
    @BoxConstraintsConverter() BoxConstraints? constraints,
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
      labelStyle: labelStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      floatingLabelStyle: floatingLabelStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      helperStyle: helperStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      helperMaxLines: helperMaxLines,
      hintStyle: hintStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      hintFadeDuration: hintFadeDuration,
      errorStyle: errorStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      errorMaxLines: errorMaxLines,
      isDense: isDense,
      contentPadding: contentPadding,
      isCollapsed: isCollapsed,
      iconColor: iconColor?.toColor(styleType: styleTypeName),
      prefixStyle: prefixStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      prefixIconColor: prefixIconColor?.toColor(styleType: styleTypeName),
      suffixStyle: suffixStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      suffixIconColor: suffixIconColor?.toColor(styleType: styleTypeName),
      counterStyle: counterStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      filled: filled,
      fillColor: fillColor?.toColor(styleType: styleTypeName),
      focusColor: focusColor?.toColor(styleType: styleTypeName),
      hoverColor: hoverColor?.toColor(styleType: styleTypeName),
      errorBorder: errorBorder,
      focusedBorder: focusedBorder,
      focusedErrorBorder: focusedErrorBorder,
      disabledBorder: disabledBorder,
      enabledBorder: enabledBorder,
      border: border,
      alignLabelWithHint: alignLabelWithHint,
      constraints: constraints,
    );
  }

  InputDecoration asInputDecoration({String? styleTypeName}) {
    return InputDecoration(
      labelStyle: labelStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      floatingLabelStyle: floatingLabelStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      helperStyle: helperStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      helperMaxLines: helperMaxLines,
      hintStyle: hintStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      hintFadeDuration: hintFadeDuration,
      errorStyle: errorStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      errorMaxLines: errorMaxLines,
      isDense: isDense,
      contentPadding: contentPadding,
      isCollapsed: isCollapsed,
      iconColor: iconColor?.toColor(styleType: styleTypeName),
      prefixStyle: prefixStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      prefixIconColor: prefixIconColor?.toColor(styleType: styleTypeName),
      suffixStyle: suffixStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      suffixIconColor: suffixIconColor?.toColor(styleType: styleTypeName),
      counterStyle: counterStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      filled: filled,
      fillColor: fillColor?.toColor(styleType: styleTypeName),
      focusColor: focusColor?.toColor(styleType: styleTypeName),
      hoverColor: hoverColor?.toColor(styleType: styleTypeName),
      errorBorder: errorBorder,
      focusedBorder: focusedBorder,
      focusedErrorBorder: focusedErrorBorder,
      disabledBorder: disabledBorder,
      enabledBorder: enabledBorder,
      border: border,
      alignLabelWithHint: alignLabelWithHint,
      constraints: constraints,
    );
  }
}
