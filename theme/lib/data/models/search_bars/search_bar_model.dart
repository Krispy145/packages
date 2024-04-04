// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/border_side_model.dart';
import 'package:theme/data/models/borders/outlined_border_model.dart';
import 'package:theme/data/models/box_constraints_model.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'search_bar_model.freezed.dart';
part 'search_bar_model.g.dart';

@freezed
class SearchBarModel with _$SearchBarModel {
  const factory SearchBarModel({
    double? elevation_double,
    ThemeColorString? backgroundColor_color,
    ThemeColorString? shadowColor_color,
    ThemeColorString? surfaceTintColor_color,
    ThemeColorString? overlayColor_color,
    // @BorderSideConverter()
    BorderSideModel? side_borderSide,
    // @OutlinedBorderConverter()
    @Default(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
    @EdgeInsetsConverter() EdgeInsets? padding_edgeInsets,
    TextStyleString? textStyle_textStyle,
    TextStyleString? hintStyle_textStyle,
    @Default(BoxConstraintsModel()) BoxConstraintsModel? constraints_boxConstraints,
    @Default(TextCapitalization.none) TextCapitalization? textCapitalization_enum_textCapitalization,
  }) = _SearchBarModel;

  const SearchBarModel._();

  factory SearchBarModel.fromJson(Map<String, dynamic> json) => _$SearchBarModelFromJson(json);

  // static SearchBarModel defaultSearchBarModel() {
  //   return const SearchBarModel(
  //     elevation: 0.0,
  //     backgroundColor: "surface",
  //     shadowColor: "outline",
  //     surfaceTintColor: "surface",
  //     overlayColor: "surface",
  //     side: BorderSide(
  //       color: Colors.transparent,
  //       width: 0.0,
  //     ),
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.only(
  //       topLeft: Radius.circular(0.0),
  //       topRight: Radius.circular(0.0),
  //       bottomLeft: Radius.circular(0.0),
  //       bottomRight: Radius.circular(0.0),
  //     )),
  //     padding: EdgeInsets.only(
  //       left: 16.0,
  //       right: 16.0,
  //       bottom: 16.0,
  //       top: 16.0,
  //     ),
  //     textStyle: "body-medium",
  //     hintStyle: "body-medium",
  //     constraints: BoxConstraints(
  //       minHeight: 48.0,
  //       minWidth: 48.0,
  //       maxHeight: 960.0,
  //       maxWidth: 1600.0,
  //     ),
  //     textCapitalization: TextCapitalization.none,
  //   );
  // }

  SearchBarThemeData asSearchBarThemeData({String? styleTypeName}) {
    return SearchBarThemeData(
      elevation: MaterialStateProperty.all(elevation_double),
      backgroundColor: MaterialStateProperty.all(backgroundColor_color?.toColor(styleType: styleTypeName)),
      shadowColor: MaterialStateProperty.all(shadowColor_color?.toColor(styleType: styleTypeName)),
      surfaceTintColor: MaterialStateProperty.all(surfaceTintColor_color?.toColor(styleType: styleTypeName)),
      overlayColor: MaterialStateProperty.all(overlayColor_color?.toColor(styleType: styleTypeName)),
      side: MaterialStateProperty.all(side_borderSide?.asBorderSide(styleTypeName: styleTypeName)),
      shape: MaterialStateProperty.all(shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName)),
      padding: MaterialStateProperty.all(padding_edgeInsets),
      textStyle: MaterialStateProperty.all(textStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle),
      hintStyle: MaterialStateProperty.all(hintStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle),
      constraints: constraints_boxConstraints?.asBoxConstraints(styleTypeName: styleTypeName),
      textCapitalization: textCapitalization_enum_textCapitalization,
    );
  }
}
