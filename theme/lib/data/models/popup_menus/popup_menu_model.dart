// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/shape_border_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "popup_menu_model.mapper.dart";

@MappableEnum(defaultValue: PopupMenuPositionType.under)
enum PopupMenuPositionType {
  over,
  under;

  PopupMenuPosition toPopupMenuPosition() {
    switch (this) {
      case PopupMenuPositionType.over:
        return PopupMenuPosition.over;
      case PopupMenuPositionType.under:
        return PopupMenuPosition.under;
    }
  }
}

@MappableClass()
class PopupMenuModel with PopupMenuModelMappable {
  final ThemeColorString? color_themeColorString;
  final ShapeBorderModel? shape_shapeBorder;
  final double? elevation_double;
  final ThemeColorString? shadowColor_themeColorString;
  final ThemeColorString? surfaceTintColor_themeColorString;
  final TextStyleString? textStyle_textStyleString;
  final TextStyleString? labelTextStyle_textStyleString;
  final bool? enableFeedback_bool;
  final PopupMenuPositionType position;
  final ThemeColorString? iconColor_themeColorString;
  final double? iconSize_double;

  const PopupMenuModel({
    this.color_themeColorString,
    this.shape_shapeBorder,
    this.elevation_double,
    this.shadowColor_themeColorString,
    this.surfaceTintColor_themeColorString,
    this.textStyle_textStyleString,
    this.labelTextStyle_textStyleString,
    this.enableFeedback_bool,
    this.position = PopupMenuPositionType.under,
    this.iconColor_themeColorString,
    this.iconSize_double,
  });

  static const fromMap = PopupMenuModelMapper.fromMap;
  static const fromJson = PopupMenuModelMapper.fromJson;

  PopupMenuThemeData asPopupMenuThemeData({String? styleTypeName}) {
    return PopupMenuThemeData(
      color: color_themeColorString?.toColor(styleType: styleTypeName),
      shape: shape_shapeBorder?.asShapeBorder(styleTypeName: styleTypeName),
      elevation: elevation_double,
      shadowColor: shadowColor_themeColorString?.toColor(styleType: styleTypeName),
      surfaceTintColor: surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
      textStyle: textStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      enableFeedback: enableFeedback_bool,
      position: position.toPopupMenuPosition(),
      iconColor: iconColor_themeColorString?.toColor(styleType: styleTypeName),
      iconSize: iconSize_double,
    );
  }

  // static const empty = PopupMenuModel(id: "");

  // static const popupMenuOne = PopupMenuModel(
  // id: "popupMenuOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const popupMenuTwo = PopupMenuModel(
  // id: "popupMenuTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const popupMenuThree = PopupMenuModel(
  // id: "popupMenuThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<PopupMenuModel> fakeData = [
  // popupMenuOne,
  // popupMenuTwo,
  // popupMenuThree,
  // ];
}

// part "popup_menu_model.freezed.dart";
// part "popup_menu_model.g.dart";

// @freezed
// class PopupMenuModel with _$PopupMenuModel {
//   const factory PopupMenuModel({
//     ThemeColorString? color_themeColorString,
//     ShapeBorderModel? shape_shapeBorder,
//     double? elevation_double,
//     ThemeColorString? shadowColor_themeColorString,
//     ThemeColorString? surfaceTintColor_themeColorString,
//     TextStyleString? textStyle_textStyleString,
//     TextStyleString? labelTextStyle_textStyleString,
//     bool? enableFeedback_bool,
//     @MappableValue(PopupMenuPosition.under) PopupMenuPosition position,
//     ThemeColorString? iconColor_themeColorString,
//     double? iconSize_double,
//   }) = _PopupMenuModel;

//   const PopupMenuModel._();

//   factory PopupMenuModel.fromJson(Map<String, dynamic> json) =>
//       _$PopupMenuModelFromJson(json);
//   // static PopupMenuModel defaultPopupMenuModel() {
//   //   return const PopupMenuModel(
//   //     color: "surface",
//   //     shape: RoundedRectangleBorder(
//   //       borderRadius: BorderRadius.only(
//   //         topLeft: Radius.circular(0.0),
//   //         topRight: Radius.circular(0.0),
//   //         bottomLeft: Radius.circular(0.0),
//   //         bottomRight: Radius.circular(0.0),
//   //       ),
//   //     ),
//   //     elevation: 8.0,
//   //     shadowColor: "outline",
//   //     surfaceTintColor: "surface",
//   //     textStyle: "body-medium",
//   //     labelTextStyle: "body-medium",
//   //     enableFeedback: true,
//   //     position: PopupMenuPosition.under,
//   //     iconColor: "onSurface",
//   //     iconSize: 24.0,
//   //   );
//   // }

//   PopupMenuThemeData asPopupMenuThemeData({String? styleTypeName}) {
//     return PopupMenuThemeData(
//       color: color_themeColorString?.toColor(styleType: styleTypeName),
//       shape: shape_shapeBorder?.asShapeBorder(styleTypeName: styleTypeName),
//       elevation: elevation_double,
//       shadowColor:
//           shadowColor_themeColorString?.toColor(styleType: styleTypeName),
//       surfaceTintColor:
//           surfaceTintColor_themeColorString?.toColor(styleType: styleTypeName),
//       textStyle: textStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//       enableFeedback: enableFeedback_bool,
//       position: position,
//       iconColor: iconColor_themeColorString?.toColor(styleType: styleTypeName),
//       iconSize: iconSize_double,
//     );
//   }
// }
