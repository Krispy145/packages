import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/extensions/string.dart';

part 'appbar_model.freezed.dart';
part 'appbar_model.g.dart';

@freezed
class AppbarModel with _$AppbarModel {
  const factory AppbarModel({
    String? color,
    String? backgroundColor,
    String? foregroundColor,
    double? elevation,
    double? scrolledUnderElevation,
    String? shadowColor,
    String? surfaceTintColor,
    @OutlinedBorderConverter() OutlinedBorder? shape,
    bool? centerTitle,
    double? titleSpacing,
    double? toolbarHeight,
    String? toolbarTextStyle,
    String? titleTextStyle,
  }) = _AppbarModel;

  const AppbarModel._();

  factory AppbarModel.fromJson(Map<String, dynamic> json) => _$AppbarModelFromJson(json);
  static AppbarModel defaultAppbarModel() {
    return const AppbarModel(
      backgroundColor: "primary",
      foregroundColor: "primaryContainer",
      elevation: 4.0,
      scrolledUnderElevation: 0.0,
      shadowColor: "outline",
      surfaceTintColor: "surface",
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(0.0),
          bottomLeft: Radius.circular(0.0),
          topLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
        ),
      ),
      centerTitle: true,
      titleSpacing: NavigationToolbar.kMiddleSpacing,
      toolbarHeight: 80, //  NavigationToolbar.kMiddleSpacing,
      toolbarTextStyle: "label-medium",
      titleTextStyle: "title-medium",
    );
  }

  AppBarTheme asAppBarTheme({String? styleTypeName}) {
    return AppBarTheme(
      color: color?.toColor(styleType: styleTypeName),
      backgroundColor: backgroundColor?.toColor(styleType: styleTypeName),
      foregroundColor: foregroundColor?.toColor(styleType: styleTypeName),
      elevation: elevation,
      surfaceTintColor: surfaceTintColor?.toColor(styleType: styleTypeName),
      shadowColor: shadowColor?.toColor(styleType: styleTypeName),
      shape: shape,
      centerTitle: centerTitle,
      titleSpacing: titleSpacing,
      toolbarHeight: toolbarHeight,
      toolbarTextStyle: toolbarTextStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      titleTextStyle: titleTextStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle.copyWith(
            color: foregroundColor?.toColor(styleType: styleTypeName),
          ),
    );
  }
}
