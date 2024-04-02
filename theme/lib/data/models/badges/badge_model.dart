import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/alignments/alignment.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/domain/converters/offset/offset.dart';
import 'package:theme/extensions/string.dart';

part 'badge_model.freezed.dart';
part 'badge_model.g.dart';

@freezed
class BadgeModel with _$BadgeModel {
  const factory BadgeModel({
    String? backgroundColor,
    String? textColor,
    double? smallSize,
    double? largeSize,
    String? textStyle,
    @EdgeInsetsConverter() EdgeInsets? padding,
    @AlignmentConverter() Alignment? alignment,
    @OffsetConverter() Offset? offset,
  }) = _BadgeModel;

  const BadgeModel._();

  factory BadgeModel.fromJson(Map<String, dynamic> json) => _$BadgeModelFromJson(json);

  // static BadgeModel defaultBadgeModel() {
  //   return const BadgeModel(
  //     backgroundColor: "primary",
  //     textColor: "primaryContainer",
  //     smallSize: 16.0,
  //     largeSize: 24.0,
  //     textStyle: "label-small",
  //     padding: EdgeInsets.only(
  //       left: 2.0,
  //       top: 2.0,
  //       right: 2.0,
  //       bottom: 2.0,
  //     ),
  //     alignment: Alignment.topRight,
  //     offset: Offset(0.2, 0.2),
  //   );
  // }

  BadgeThemeData asBadgeThemeData({String? styleTypeName}) {
    return BadgeThemeData(
      backgroundColor: backgroundColor?.toColor(styleType: styleTypeName),
      textColor: textColor?.toColor(styleType: styleTypeName),
      smallSize: smallSize,
      largeSize: largeSize,
      textStyle: textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      padding: padding,
      alignment: alignment,
      offset: offset,
    );
  }
}
