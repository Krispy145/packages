import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/edge_insets_model.dart';
import 'package:theme/data/models/offset_model.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'badge_model.freezed.dart';
part 'badge_model.g.dart';

enum AlignmentOptions {
  topLeft,
  topCenter,
  topRight,
  centerLeft,
  center,
  centerRight,
  bottomLeft,
  bottomCenter,
  bottomRight;

  Alignment get alignment {
    switch (this) {
      case AlignmentOptions.topLeft:
        return Alignment.topLeft;
      case AlignmentOptions.topCenter:
        return Alignment.topCenter;
      case AlignmentOptions.topRight:
        return Alignment.topRight;
      case AlignmentOptions.centerLeft:
        return Alignment.centerLeft;
      case AlignmentOptions.center:
        return Alignment.center;
      case AlignmentOptions.centerRight:
        return Alignment.centerRight;
      case AlignmentOptions.bottomLeft:
        return Alignment.bottomLeft;
      case AlignmentOptions.bottomCenter:
        return Alignment.bottomCenter;
      case AlignmentOptions.bottomRight:
        return Alignment.bottomRight;
    }
  }
}

@freezed
class BadgeModel with _$BadgeModel {
  const factory BadgeModel({
    ThemeColorString? backgroundColor_themeColorString,
    ThemeColorString? textColor_themeColorString,
    double? smallSize_double,
    double? largeSize_double,
    TextStyleString? textStyle_textStyleString,
    @Default(EdgeInsetsModel()) EdgeInsetsModel? padding_edgeInsets,
    @Default(AlignmentOptions.center) AlignmentOptions? alignment_enum_alignmentOptions,
    @Default(OffsetModel()) OffsetModel? offset_offset,
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
      backgroundColor: backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      textColor: textColor_themeColorString?.toColor(styleType: styleTypeName),
      smallSize: smallSize_double,
      largeSize: largeSize_double,
      textStyle: textStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      padding: padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      alignment: alignment_enum_alignmentOptions?.alignment,
      offset: offset_offset?.asOffset(styleTypeName: styleTypeName),
    );
  }
}
