import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/extensions/string.dart';

part 'card_model.freezed.dart';
part 'card_model.g.dart';

@freezed
class CardModel with _$CardModel {
  const factory CardModel({
    String? color,
    String? shadowColor,
    String? surfaceTintColor,
    double? elevation,
    @EdgeInsetsConverter() EdgeInsets? margin,
    @OutlinedBorderConverter() OutlinedBorder? shape,
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
      color: color?.toColor(styleType: styleTypeName),
      shadowColor: shadowColor?.toColor(styleType: styleTypeName),
      surfaceTintColor: surfaceTintColor?.toColor(styleType: styleTypeName),
      elevation: elevation,
      margin: margin,
      shape: shape,
    );
  }
}
