import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/border_side/border_side.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/extensions/string.dart';

part 'checkbox_model.freezed.dart';
part 'checkbox_model.g.dart';

@freezed
class CheckboxModel with _$CheckboxModel {
  const factory CheckboxModel({
    String? fillColor,
    String? checkColor,
    String? overlayColor,
    double? splashRadius,
    @OutlinedBorderConverter() OutlinedBorder? shape,
    @BorderSideConverter() BorderSide? side,
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
      fillColor: MaterialStateProperty.all(fillColor?.toColor(styleType: styleTypeName)),
      checkColor: MaterialStateProperty.all(checkColor?.toColor(styleType: styleTypeName)),
      overlayColor: MaterialStateProperty.all(overlayColor?.toColor(styleType: styleTypeName)),
      splashRadius: splashRadius,
      shape: shape,
      side: side,
    );
  }
}
