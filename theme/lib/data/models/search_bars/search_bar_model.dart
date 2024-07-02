// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/border_side_model.dart";
import "package:theme/data/models/borders/outlined_border_model.dart";
import "package:theme/data/models/box_constraints_model.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "search_bar_model.mapper.dart";

@MappableEnum()
enum TextCapitalizationOptions {
  none,
  characters,
  words,
  sentences;

  TextCapitalization get textCapitalization {
    switch (this) {
      case TextCapitalizationOptions.none:
        return TextCapitalization.none;
      case TextCapitalizationOptions.characters:
        return TextCapitalization.characters;
      case TextCapitalizationOptions.words:
        return TextCapitalization.words;
      case TextCapitalizationOptions.sentences:
        return TextCapitalization.sentences;
    }
  }
}

@MappableClass()
class SearchBarModel with SearchBarModelMappable {
  final double? elevation_double;
  final ThemeColorString? backgroundColor_themeColorString;
  final ThemeColorString? shadowColor_themeColorString;
  final ThemeColorString? surfaceTintColor_themeColorString;
  final ThemeColorString? overlayColor_themeColorString;
  final BorderSideModel? side_borderSide;
  @MappableValue(OutlinedBorderModel())
  final OutlinedBorderModel? shape_outlinedBorder;
  @MappableValue(EdgeInsetsModel())
  final EdgeInsetsModel? padding_edgeInsets;
  final TextStyleString? textStyle_textStyleString;
  final TextStyleString? hintStyle_textStyleString;
  @MappableValue(BoxConstraintsModel())
  final BoxConstraintsModel? constraints_boxConstraints;
  @MappableValue(TextCapitalizationOptions.none)
  final TextCapitalizationOptions? textCapitalization_enum_textCapitalization;

  const SearchBarModel({
    this.elevation_double,
    this.backgroundColor_themeColorString,
    this.shadowColor_themeColorString,
    this.surfaceTintColor_themeColorString,
    this.overlayColor_themeColorString,
    this.side_borderSide,
    this.shape_outlinedBorder = const OutlinedBorderModel(),
    this.padding_edgeInsets = const EdgeInsetsModel(),
    this.textStyle_textStyleString,
    this.hintStyle_textStyleString,
    this.constraints_boxConstraints = const BoxConstraintsModel(),
    this.textCapitalization_enum_textCapitalization = TextCapitalizationOptions.none,
  });

  static const fromMap = SearchBarModelMapper.fromMap;
  static const fromJson = SearchBarModelMapper.fromJson;

  SearchBarThemeData asSearchBarThemeData({String? styleTypeName}) {
    return SearchBarThemeData(
      elevation: WidgetStateProperty.all(elevation_double),
      backgroundColor: WidgetStateProperty.all(
        backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      shadowColor: WidgetStateProperty.all(
        shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      surfaceTintColor: WidgetStateProperty.all(
        surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      overlayColor: WidgetStateProperty.all(
        overlayColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      side: WidgetStateProperty.all(
        side_borderSide?.asBorderSide(styleTypeName: styleTypeName),
      ),
      shape: WidgetStateProperty.all(
        shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
      ),
      padding: WidgetStateProperty.all(
        padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName) ?? EdgeInsets.zero,
      ),
      textStyle: WidgetStateProperty.all(
        textStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      ),
      hintStyle: WidgetStateProperty.all(
        hintStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      ),
      constraints: constraints_boxConstraints?.asBoxConstraints(
        styleTypeName: styleTypeName,
      ),
      textCapitalization: textCapitalization_enum_textCapitalization?.textCapitalization,
    );
  }
}
