import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/alignments/alignment.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/domain/converters/offset/offset.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'badge_model.freezed.dart';
part 'badge_model.g.dart';

@freezed
class BadgeModel with _$BadgeModel {
  const factory BadgeModel({
    ThemeColorString? backgroundColor_color,
    ThemeColorString? textColor_color,
    double? smallSize_double,
    double? largeSize_double,
    String? textStyle_textStyle,
    @EdgeInsetsConverter() EdgeInsets? padding_edgeInsets,
    @AlignmentConverter() Alignment? alignment_alignment,
    @OffsetConverter() Offset? offset_offset,
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
      backgroundColor: backgroundColor_color?.toColor(styleType: styleTypeName),
      textColor: textColor_color?.toColor(styleType: styleTypeName),
      smallSize: smallSize_double,
      largeSize: largeSize_double,
      textStyle: textStyle_textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      padding: padding_edgeInsets,
      alignment: alignment_alignment,
      offset: offset_offset,
    );
  }
}
