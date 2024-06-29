// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/border_side_model.dart";
import "package:theme/data/models/borders/outlined_border_model.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "button_model.mapper.dart";

@MappableEnum()
enum ButtonModelType {
  elevated,
  outlined,
  text,
  toggle,
  icon,
  filled,
  floating,
  menu,
  segmented,
}

@MappableClass()
class ButtonModel with ButtonModelMappable {
  final TextStyleString? textStyle_textStyleString;
  final ThemeColorString? backgroundColor_themeColorString;
  final ThemeColorString? foregroundColor_themeColorString;
  final ThemeColorString? overlayColor_themeColorString;
  final ThemeColorString? shadowColor_themeColorString;
  final ThemeColorString? surfaceTintColor_themeColorString;
  final double? elevation_double;
  @MappableValue(EdgeInsetsModel())
  final EdgeInsetsModel? padding_edgeInsets;
  // @MappableValue(SizeModel())
  // final SizeModel? minimumSize_size;
  // @MappableValue(SizeModel())
  // final SizeModel? fixedSize_size;
  // @MappableValue(SizeModel())
  // final SizeModel? maximumSize_size;
  final ThemeColorString? iconColor_themeColorString;
  final double? iconSize_double;
  @MappableValue(BorderSideModel())
  final BorderSideModel? side_borderSide;
  @MappableValue(OutlinedBorderModel())
  final OutlinedBorderModel? shape_outlinedBorder;

  const ButtonModel({
    this.textStyle_textStyleString,
    this.backgroundColor_themeColorString,
    this.foregroundColor_themeColorString,
    this.overlayColor_themeColorString,
    this.shadowColor_themeColorString,
    this.surfaceTintColor_themeColorString,
    this.elevation_double,
    this.padding_edgeInsets = const EdgeInsetsModel(left_double: 16, right_double: 16, top_double: 4, bottom_double: 4),
    // this.minimumSize_size,
    // this.fixedSize_size,
    // this.maximumSize_size,
    this.iconColor_themeColorString,
    this.iconSize_double,
    this.side_borderSide,
    this.shape_outlinedBorder,
  });

  static const fromMap = ButtonModelMapper.fromMap;
  static const fromJson = ButtonModelMapper.fromJson;

  static const ButtonModel empty = ButtonModel(
    elevation_double: 0,
    // maximumSize_size: SizeModel(
    //   width_double: double.infinity,
    //   height_double: double.infinity,
    // ),
    // minimumSize_size: SizeModel(
    //   width_double: 64,
    //   height_double: 36,
    // ),
    // fixedSize_size: SizeModel(
    //   width_double: 120,
    //   height_double: 36,
    // ),
  );

  ElevatedButtonThemeData toElevatedButtonThemeData() => ElevatedButtonThemeData(style: asButtonStyle());

  OutlinedButtonThemeData toOutlinedButtonThemeData() => OutlinedButtonThemeData(style: asButtonStyle());

  TextButtonThemeData toTextButtonThemeData() => TextButtonThemeData(style: asButtonStyle());

  FilledButtonThemeData toFilledButtonThemeData() => FilledButtonThemeData(style: asButtonStyle());

  IconButtonThemeData toIconButtonThemeData() {
    if (padding_edgeInsets ==
        const EdgeInsetsModel(
          top_double: 4,
          left_double: 16,
          bottom_double: 4,
          right_double: 16,
        )) {
      return IconButtonThemeData(
        style: asButtonStyle().copyWith(
          padding: const MaterialStatePropertyAll(
            EdgeInsets.all(8),
          ),
        ),
      );
    } else {
      return IconButtonThemeData(
        style: asButtonStyle().copyWith(
          padding: MaterialStatePropertyAll(
            padding_edgeInsets?.asEdgeInsets(),
          ),
        ),
      );
    }
  }

  SegmentedButtonThemeData toSegmentedButtonThemeData() => SegmentedButtonThemeData(style: asButtonStyle());

  MenuButtonThemeData toMenuButtonThemeData() => MenuButtonThemeData(style: asButtonStyle());

  ButtonStyle asButtonStyle({String? styleTypeName}) {
    final materialTextStyle = textStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle == null
        ? null
        : MaterialStateProperty.all(
            textStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
          );
    final materialBackgroundColor = backgroundColor_themeColorString?.toColor(styleType: styleTypeName) == null
        ? null
        : MaterialStateProperty.all(
            backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
          );
    final materialForegroundColor = foregroundColor_themeColorString?.toColor(styleType: styleTypeName) == null
        ? null
        : MaterialStateProperty.all(
            foregroundColor_themeColorString?.toColor(styleType: styleTypeName),
          );
    final materialOverlayColor = overlayColor_themeColorString?.toColor(styleType: styleTypeName) == null
        ? null
        : MaterialStateProperty.all(
            overlayColor_themeColorString?.toColor(styleType: styleTypeName),
          );
    final materialShadowColor = shadowColor_themeColorString?.toColor(styleType: styleTypeName) == null
        ? null
        : MaterialStateProperty.all(
            shadowColor_themeColorString?.toColor(styleType: styleTypeName),
          );
    final materialElevation = elevation_double == null ? null : MaterialStateProperty.all(elevation_double);
    final materialPadding = padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName) == null
        ? null
        : MaterialStateProperty.all(
            padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
          );
    // final materialMinimumSize = minimumSize_size?.asSize(styleTypeName: styleTypeName) == null
    //     ? null
    //     : MaterialStateProperty.all(
    //         minimumSize_size?.asSize(styleTypeName: styleTypeName),
    //       );
    // final materialFixedSize = fixedSize_size?.asSize(styleTypeName: styleTypeName) == null
    //     ? null
    //     : MaterialStateProperty.all(
    //         fixedSize_size?.asSize(styleTypeName: styleTypeName),
    //       );
    // final materialMaximumSize = maximumSize_size?.asSize(styleTypeName: styleTypeName) == null
    //     ? null
    //     : MaterialStateProperty.all(
    //         maximumSize_size?.asSize(styleTypeName: styleTypeName),
    //       );
    final materialSide = side_borderSide?.asBorderSide(styleTypeName: styleTypeName) == null
        ? null
        : MaterialStateProperty.all(
            side_borderSide?.asBorderSide(styleTypeName: styleTypeName),
          );
    final materialShape = shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName) == null
        ? null
        : MaterialStateProperty.all(
            shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
          );

    var button = const ButtonStyle();
    if (materialTextStyle != null) {
      button = button.copyWith(textStyle: materialTextStyle);
    }
    if (materialBackgroundColor != null) {
      button = button.copyWith(backgroundColor: materialBackgroundColor);
    }
    if (materialForegroundColor != null) {
      button = button.copyWith(foregroundColor: materialForegroundColor);
    }
    if (materialOverlayColor != null) {
      button = button.copyWith(overlayColor: materialOverlayColor);
    }
    if (materialShadowColor != null) {
      button = button.copyWith(shadowColor: materialShadowColor);
    }
    if (materialElevation != null) {
      button = button.copyWith(elevation: materialElevation);
    }
    if (materialPadding != null) {
      button = button.copyWith(padding: materialPadding);
    }
    // button = button.copyWith(minimumSize: materialMinimumSize);
    // button = button.copyWith(fixedSize: materialFixedSize);
    // button = button.copyWith(maximumSize: materialMaximumSize);
    if (materialSide != null) {
      button = button.copyWith(side: materialSide);
    }
    if (materialShape != null) {
      button = button.copyWith(shape: materialShape);
    }

    return button;
  }
}
