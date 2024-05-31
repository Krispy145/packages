// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:theme/data/models/badges/badge_model.dart";
import "package:theme/data/models/borders/border_side_model.dart";
import "package:theme/data/models/borders/outlined_border_model.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/data/models/general/size_model.dart";
import "package:theme/extensions/theme_color_string.dart";

part "menu_style_model.freezed.dart";
part "menu_style_model.g.dart";

@freezed
class MenuStyleModel with _$MenuStyleModel {
  const factory MenuStyleModel({
    ThemeColorString? backgroundColor_themeColorString,
    ThemeColorString? shadowColor_themeColorString,
    ThemeColorString? surfaceTintColor_themeColorString,
    double? elevation_double,
    @Default(EdgeInsetsModel()) EdgeInsetsModel? padding_edgeInsets,
    @Default(SizeModel()) SizeModel? minimumSize_size,
    @Default(SizeModel()) SizeModel? fixedSize_size,
    @Default(SizeModel()) SizeModel? maximumSize_size,
    @Default(BorderSideModel()) BorderSideModel? side_borderSide,
    @Default(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
    // @AlignmentConverter()
    @Default(AlignmentOptions.center) AlignmentOptions? alignment_enum_alignmentOptions,
  }) = _MenuModel;

  const MenuStyleModel._();

  factory MenuStyleModel.fromJson(Map<String, dynamic> json) => _$MenuStyleModelFromJson(json);

  // static MenuModel defaultMenuModel() {
  //   return const MenuModel(
  //     backgroundColor: "surface",
  //     shadowColor: "outline",
  //     surfaceTintColor: "surface",
  //     elevation: 8.0,
  //     padding: EdgeInsets.only(
  //       left: 8.0,
  //       top: 8.0,
  //       right: 8.0,
  //       bottom: 8.0,
  //     ),
  //     minimumSize: Size(64.0, 36.0),
  //     // fixedSize: Size(64.0, 36.0),
  //     maximumSize: Size(1600.0, 960.0),
  //     side: BorderSide.none,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(0.0),
  //         topRight: Radius.circular(0.0),
  //         bottomLeft: Radius.circular(0.0),
  //         bottomRight: Radius.circular(0.0),
  //       ),
  //     ),
  //     alignment: Alignment.center,
  //   );
  // }

  MenuStyle asMenuStyle({String? styleTypeName}) {
    final backgroundColor = backgroundColor_themeColorString?.toColor(styleType: styleTypeName);
    final shadowColor = shadowColor_themeColorString?.toColor(styleType: styleTypeName);
    final surfaceTintColor = surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName);
    final elevation = elevation_double;
    final padding = padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName);
    final minimumSize = minimumSize_size?.asSize(styleTypeName: styleTypeName);
    final fixedSize = fixedSize_size?.asSize(styleTypeName: styleTypeName);
    final maximumSize = maximumSize_size?.asSize(styleTypeName: styleTypeName);
    final side = side_borderSide?.asBorderSide(styleTypeName: styleTypeName);
    final shape = shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName);
    final alignment = alignment_enum_alignmentOptions?.alignment;
    return MenuStyle(
      backgroundColor: backgroundColor != null ? WidgetStateProperty.all(backgroundColor) : null,
      shadowColor: shadowColor != null ? WidgetStateProperty.all(shadowColor) : null,
      surfaceTintColor: surfaceTintColor != null ? WidgetStateProperty.all(surfaceTintColor) : null,
      elevation: elevation != null ? WidgetStateProperty.all(elevation) : null,
      padding: padding != null ? WidgetStateProperty.all(padding) : null,
      minimumSize: minimumSize != null ? WidgetStateProperty.all(minimumSize) : null,
      fixedSize: fixedSize != null ? WidgetStateProperty.all(fixedSize) : null,
      maximumSize: maximumSize != null ? WidgetStateProperty.all(maximumSize) : null,
      side: side != null ? WidgetStateProperty.all(side) : null,
      shape: shape != null ? WidgetStateProperty.all(shape) : null,
      alignment: alignment,
    );
  }

  MenuThemeData toMenuThemeData({String? styleTypeName}) {
    return MenuThemeData(
      style: asMenuStyle(styleTypeName: styleTypeName),
    );
  }
}
