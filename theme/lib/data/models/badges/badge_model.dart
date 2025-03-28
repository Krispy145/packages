// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/data/models/offset_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "badge_model.mapper.dart";

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

@MappableClass()
class BadgeModel with BadgeModelMappable {
  final ThemeColorString? backgroundColor_themeColorString;
  final ThemeColorString? textColor_themeColorString;
  final double? smallSize_double;
  final double? largeSize_double;
  final TextStyleString? textStyle_textStyleString;
  @MappableValue(EdgeInsetsModel())
  final EdgeInsetsModel? padding_edgeInsets;
  @MappableValue(AlignmentOptions.center)
  final AlignmentOptions? alignment_enum_alignmentOptions;
  @MappableValue(OffsetModel())
  final OffsetModel? offset_offset;

  const BadgeModel({
    this.backgroundColor_themeColorString,
    this.textColor_themeColorString,
    this.smallSize_double,
    this.largeSize_double,
    this.textStyle_textStyleString,
    this.padding_edgeInsets,
    this.alignment_enum_alignmentOptions,
    this.offset_offset,
  });

  static const fromMap = BadgeModelMapper.fromMap;
  static const fromJson = BadgeModelMapper.fromJson;

  BadgeThemeData asBadgeThemeData({String? styleTypeName}) {
    return BadgeThemeData(
      backgroundColor:
          backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      textColor: textColor_themeColorString?.toColor(styleType: styleTypeName),
      smallSize: smallSize_double,
      largeSize: largeSize_double,
      textStyle: textStyle_textStyleString
          ?.toTextStyleModel(styleType: styleTypeName)
          ?.asTextStyle,
      padding: padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      alignment: alignment_enum_alignmentOptions?.alignment,
      offset: offset_offset?.asOffset(styleTypeName: styleTypeName),
    );
  }

  // static const empty = BadgeModel(id: "");

  // static const badgeOne = BadgeModel(
  //   id: "badgeOneId",
  //   name: "{{name.titleCase()}} One",
  // );

  // static const badgeTwo = BadgeModel(
  //   id: "badgeTwoId",
  //   name: "{{name.titleCase()}} Two",
  // );

  // static const badgeThree = BadgeModel(
  //   id: "badgeThreeId",
  //   name: "{{name.titleCase()}} Three",
  // );

  // static final List<BadgeModel> fakeData = [
  //   badgeOne,
  //   badgeTwo,
  //   badgeThree,
  // ];
}

// import "package:flutter/material.dart";
//
// import "package:theme/data/models/edge_insets_model.dart";
// import "package:theme/data/models/offset_model.dart";
// import "package:theme/extensions/text_style_string.dart";
// import "package:theme/extensions/theme_color_string.dart";

// part "badge_model.freezed.dart";
// part "badge_model.g.dart";

// enum AlignmentOptions {
//   topLeft,
//   topCenter,
//   topRight,
//   centerLeft,
//   center,
//   centerRight,
//   bottomLeft,
//   bottomCenter,
//   bottomRight;

//   Alignment get alignment {
//     switch (this) {
//       case AlignmentOptions.topLeft:
//         return Alignment.topLeft;
//       case AlignmentOptions.topCenter:
//         return Alignment.topCenter;
//       case AlignmentOptions.topRight:
//         return Alignment.topRight;
//       case AlignmentOptions.centerLeft:
//         return Alignment.centerLeft;
//       case AlignmentOptions.center:
//         return Alignment.center;
//       case AlignmentOptions.centerRight:
//         return Alignment.centerRight;
//       case AlignmentOptions.bottomLeft:
//         return Alignment.bottomLeft;
//       case AlignmentOptions.bottomCenter:
//         return Alignment.bottomCenter;
//       case AlignmentOptions.bottomRight:
//         return Alignment.bottomRight;
//     }
//   }
// }

// @freezed
// class BadgeModel with _$BadgeModel {
//   const factory BadgeModel({
//     ThemeColorString? backgroundColor_themeColorString,
//     ThemeColorString? textColor_themeColorString,
//     double? smallSize_double,
//     double? largeSize_double,
//     TextStyleString? textStyle_textStyleString,
//     @MappableValue(EdgeInsetsModel()) EdgeInsetsModel? padding_edgeInsets,
//     @MappableValue(AlignmentOptions.center)
//     AlignmentOptions? alignment_enum_alignmentOptions,
//     @MappableValue(OffsetModel()) OffsetModel? offset_offset,
//   }) = _BadgeModel;

//   const BadgeModel._();

//   factory BadgeModel.fromJson(Map<String, dynamic> json) =>
//       _$BadgeModelFromJson(json);

//   BadgeThemeData asBadgeThemeData({String? styleTypeName}) {
//     return BadgeThemeData(
//       backgroundColor:
//           backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
//       textColor: textColor_themeColorString?.toColor(styleType: styleTypeName),
//       smallSize: smallSize_double,
//       largeSize: largeSize_double,
//       textStyle: textStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//       padding: padding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
//       alignment: alignment_enum_alignmentOptions?.alignment,
//       offset: offset_offset?.asOffset(styleTypeName: styleTypeName),
//     );
//   }
// }
