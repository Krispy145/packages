import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/shape_border_model.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
class CardModel with _$CardModel {
  const factory CardModel({
    ThemeColorString? color_color,
    ThemeColorString? shadowColor_color,
    ThemeColorString? surfaceTintColor_color,
    double? elevation_double,
    @EdgeInsetsConverter() EdgeInsets? margin_edgeInsets,
    // @OutlinedBorderConverter()
    ShapeBorderModel? shape_shapeBorder,
  }) = _CardModel;

  const CardModel._();

  factory CardModel.fromJson(Map<String, dynamic> json) => _$CardModelFromJson(json);

  // static CardModel defaultCardModel() {
  //   return const CardModel(
  //     color: "surface",
  //     shadowColor: "outline",
  //     surfaceTintColor: "surface",
  //     elevation: 1.0,
  //     margin: EdgeInsets.only(
  //       left: 8.0,
  //       top: 8.0,
  //       right: 8.0,
  //       bottom: 8.0,
  //     ),
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(0.0),
  //         topRight: Radius.circular(0.0),
  //         bottomLeft: Radius.circular(0.0),
  //         bottomRight: Radius.circular(0.0),
  //       ),
  //     ),
  //   );
  // }

  CardTheme asCardTheme({String? styleTypeName}) {
    return CardTheme(
      color: color_color?.toColor(styleType: styleTypeName),
      shadowColor: shadowColor_color?.toColor(styleType: styleTypeName),
      surfaceTintColor: surfaceTintColor_color?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      margin: margin_edgeInsets,
      shape: shape_shapeBorder?.asShapeBorder(styleTypeName: styleTypeName),
    );
  }
}
