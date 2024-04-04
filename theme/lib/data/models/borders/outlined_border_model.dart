import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    OutlinedBorderType? type_enum_outlinedBorderType,
    @Default(BorderSideModel()) BorderSideModel? side_borderSide,
    double? borderRadius_double,
  }) = _OutlinedBorderModel;

  const OutlinedBorderModel._();

  factory OutlinedBorderModel.fromJson(Map<String, dynamic> json) => _$OutlinedBorderModelFromJson(json);

  OutlinedBorder asOutlinedBorder({String? styleTypeName}) {
    final borderSide = side_borderSide?.asBorderSide(styleTypeName: styleTypeName) ?? BorderSide.none;
    switch (type_enum_outlinedBorderType) {
      case OutlinedBorderType.circleBorder:
        return CircleBorder(side: borderSide);
      case OutlinedBorderType.stadiumBorder:
        return StadiumBorder(side: borderSide);
      case OutlinedBorderType.starBorder:
        return const StarBorder();
      case OutlinedBorderType.beveledRectangleBorder:
        return BeveledRectangleBorder(
          side: borderSide,
          borderRadius: BorderRadius.circular(borderRadius_double ?? 0.0),
        );
      case OutlinedBorderType.ovalBorder:
        return const RoundedRectangleBorder();
      case OutlinedBorderType.continuousRectangleBorder:
        return ContinuousRectangleBorder(
          side: borderSide,
          borderRadius: BorderRadius.circular(borderRadius_double ?? 0.0),
        );
      case OutlinedBorderType.roundedRectangleBorder:
        return RoundedRectangleBorder(
          side: borderSide,
          borderRadius: BorderRadius.circular(borderRadius_double ?? 0.0),
        );
      case OutlinedBorderType.linearBorder:
        return LinearBorder(side: borderSide);
      default:
        return RoundedRectangleBorder(
          side: borderSide,
          borderRadius: BorderRadius.circular(borderRadius_double ?? 0.0),
        );
    }
  }
}
