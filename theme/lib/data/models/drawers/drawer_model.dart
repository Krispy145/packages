import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/extensions/string.dart';

part 'drawer_model.freezed.dart';
part 'drawer_model.g.dart';

@freezed
class DrawerModel with _$DrawerModel {
  const factory DrawerModel({
    String? backgroundColor,
    String? scrimColor,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    @OutlinedBorderConverter() OutlinedBorder? shape,
    @OutlinedBorderConverter() OutlinedBorder? endShape,
    double? width,
  }) = _DrawerModel;

  const DrawerModel._();

  factory DrawerModel.fromJson(Map<String, dynamic> json) => _$DrawerModelFromJson(json);
  // static DrawerModel defaultDrawerModel() {
  //   return const DrawerModel(
  //     backgroundColor: "surface",
  //     scrimColor: "surface",
  //     elevation: 16.0,
  //     shadowColor: "outline",
  //     surfaceTintColor: "surface",
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(0.0),
  //         topRight: Radius.circular(0.0),
  //         bottomLeft: Radius.circular(0.0),
  //         bottomRight: Radius.circular(0.0),
  //       ),
  //     ),
  //     endShape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(0.0),
  //         topRight: Radius.circular(0.0),
  //         bottomLeft: Radius.circular(0.0),
  //         bottomRight: Radius.circular(0.0),
  //       ),
  //     ),
  //     width: 304.0,
  //   );
  // }

  DrawerThemeData asDrawerThemeData({String? styleTypeName}) {
    return DrawerThemeData(
      backgroundColor: backgroundColor?.toColor(styleType: styleTypeName),
      scrimColor: scrimColor?.toColor(styleType: styleTypeName),
      elevation: elevation,
      shadowColor: shadowColor?.toColor(styleType: styleTypeName),
      surfaceTintColor: surfaceTintColor?.toColor(styleType: styleTypeName),
      shape: shape,
      endShape: endShape,
      width: width,
    );
  }
}
