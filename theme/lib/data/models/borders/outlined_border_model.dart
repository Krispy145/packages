// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/border_radius_model.dart';
import 'package:theme/data/models/borders/border_side_model.dart';

part 'outlined_border_model.freezed.dart';
part 'outlined_border_model.g.dart';

enum OutlinedBorderType {
  circleBorder,
  stadiumBorder,
  starBorder,
  beveledRectangleBorder,
  ovalBorder,
  continuousRectangleBorder,
  roundedRectangleBorder,
  linearBorder,
}

@freezed
class OutlinedBorderModel with _$OutlinedBorderModel {
  const factory OutlinedBorderModel({
    @Default(OutlinedBorderType.roundedRectangleBorder) OutlinedBorderType? type_enum_outlinedBorderType,
    @Default(BorderSideModel()) BorderSideModel? side_borderSide,
    @Default(BorderRadiusModel()) BorderRadiusModel? borderRadius_borderRadius,
  }) = _OutlinedBorderModel;

  const OutlinedBorderModel._();

  factory OutlinedBorderModel.fromJson(Map<String, dynamic> json) => _$OutlinedBorderModelFromJson(json);

  OutlinedBorder asOutlinedBorder({String? styleTypeName}) {
    final borderSide = side_borderSide?.asBorderSide(styleTypeName: styleTypeName) ?? BorderSide.none;
    final borderRadius = borderRadius_borderRadius?.asBorderRadius(styleTypeName: styleTypeName) ?? BorderRadius.zero;
    switch (type_enum_outlinedBorderType) {
      case OutlinedBorderType.circleBorder:
        return CircleBorder(side: borderSide);
      case OutlinedBorderType.stadiumBorder:
        return StadiumBorder(side: borderSide);
      case OutlinedBorderType.starBorder:
        return StarBorder(side: borderSide);
      case OutlinedBorderType.beveledRectangleBorder:
        return BeveledRectangleBorder(side: borderSide, borderRadius: borderRadius);
      case OutlinedBorderType.ovalBorder:
        return RoundedRectangleBorder(borderRadius: borderRadius);
      case OutlinedBorderType.continuousRectangleBorder:
        return ContinuousRectangleBorder(side: borderSide, borderRadius: borderRadius);
      case OutlinedBorderType.roundedRectangleBorder:
        return RoundedRectangleBorder(side: borderSide, borderRadius: borderRadius);
      case OutlinedBorderType.linearBorder:
        return LinearBorder(side: borderSide);
      default:
        return RoundedRectangleBorder(side: borderSide, borderRadius: borderRadius);
    }
  }
}
