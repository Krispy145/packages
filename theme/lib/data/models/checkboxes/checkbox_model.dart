// ignore_for_file: non_constant_identifier_names

import "package:flutter/material.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:theme/data/models/borders/border_side_model.dart";
import "package:theme/data/models/borders/outlined_border_model.dart";
import "package:theme/extensions/theme_color_string.dart";

part "checkbox_model.freezed.dart";
part "checkbox_model.g.dart";

@freezed
class CheckboxModel with _$CheckboxModel {
  const factory CheckboxModel({
    ThemeColorString? fillColor_themeColorString,
    ThemeColorString? checkColor_themeColorString,
    ThemeColorString? overlayColor_themeColorString,
    double? splashRadius_double,
    @Default(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
    @Default(BorderSideModel()) BorderSideModel? side_borderSide,
  }) = _CheckboxModel;

  const CheckboxModel._();

  factory CheckboxModel.fromJson(Map<String, dynamic> json) => _$CheckboxModelFromJson(json);
  // static CheckboxModel defaultCheckboxModel() {
  //   return const CheckboxModel(
  //     fillColor: "primary",
  //     checkColor: "primaryContainer",
  //     overlayColor: "surface",
  //     splashRadius: 24.0,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(4.0),
  //         topRight: Radius.circular(4.0),
  //         bottomLeft: Radius.circular(4.0),
  //         bottomRight: Radius.circular(4.0),
  //       ),
  //     ),
  //     side: BorderSide(
  //       color: Colors.transparent,
  //       width: 0.0,
  //     ),
  //   );
  // }

  CheckboxThemeData asCheckboxThemeData({String? styleTypeName}) {
    return CheckboxThemeData(
      fillColor: WidgetStateProperty.all(
        fillColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      checkColor: WidgetStateProperty.all(
        checkColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      overlayColor: WidgetStateProperty.all(
        overlayColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      splashRadius: splashRadius_double,
      shape: shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
      side: side_borderSide?.asBorderSide(styleTypeName: styleTypeName),
    );
  }
}
