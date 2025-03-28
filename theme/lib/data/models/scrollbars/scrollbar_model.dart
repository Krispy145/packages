// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/extensions/theme_color_string.dart";

part "scrollbar_model.mapper.dart";

@MappableClass()
class ScrollbarModel with ScrollbarModelMappable {
  final bool? thumbVisibility_bool;
  final double? thickness_double;
  final bool? trackVisibility_bool;
  // @RadiusConverter() Radius?
  final double? radius_double;
  final ThemeColorString? thumbColor_themeColorString;
  final ThemeColorString? trackColor_themeColorString;
  final ThemeColorString? trackBorderColor_themeColorString;
  final double? crossAxisMargin_double;
  final double? mainAxisMargin_double;
  final double? minThumbLength_double;
  final bool? interactive_bool;

  const ScrollbarModel({
    this.thumbVisibility_bool,
    this.thickness_double,
    this.trackVisibility_bool,
    this.radius_double,
    this.thumbColor_themeColorString,
    this.trackColor_themeColorString,
    this.trackBorderColor_themeColorString,
    this.crossAxisMargin_double,
    this.mainAxisMargin_double,
    this.minThumbLength_double,
    this.interactive_bool,
  });

  static const fromMap = ScrollbarModelMapper.fromMap;
  static const fromJson = ScrollbarModelMapper.fromJson;

  ScrollbarThemeData asScrollbarThemeData({String? styleTypeName}) {
    return ScrollbarThemeData(
      thumbVisibility: WidgetStateProperty.all(thumbVisibility_bool),
      thickness: WidgetStateProperty.all(thickness_double),
      trackVisibility: WidgetStateProperty.all(trackVisibility_bool),
      radius: radius_double != null
          ? Radius.circular(radius_double!)
          : null, // radius_radius?.asBorderRadius(styleTypeName: styleTypeName),
      thumbColor: WidgetStateProperty.all(
        thumbColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      trackColor: WidgetStateProperty.all(
        trackColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      trackBorderColor: WidgetStateProperty.all(
        trackBorderColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      crossAxisMargin: crossAxisMargin_double,
      mainAxisMargin: mainAxisMargin_double,
      minThumbLength: minThumbLength_double,
      interactive: interactive_bool,
    );
  }

  // static const empty = ScrollbarModel(id: "");

  // static const scrollbarOne = ScrollbarModel(
  // id: "scrollbarOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const scrollbarTwo = ScrollbarModel(
  // id: "scrollbarTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const scrollbarThree = ScrollbarModel(
  // id: "scrollbarThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<ScrollbarModel> fakeData = [
  // scrollbarOne,
  // scrollbarTwo,
  // scrollbarThree,
  // ];
}

// part "scrollbar_model.freezed.dart";
// part "scrollbar_model.g.dart";

// @freezed
// class ScrollbarModel with _$ScrollbarModel {
//   const factory ScrollbarModel({
//     bool? thumbVisibility_bool,
//     double? thickness_double,
//     bool? trackVisibility_bool,
//     // @RadiusConverter() Radius?
//     double? radius_double,
//     ThemeColorString? thumbColor_themeColorString,
//     ThemeColorString? trackColor_themeColorString,
//     ThemeColorString? trackBorderColor_themeColorString,
//     double? crossAxisMargin_double,
//     double? mainAxisMargin_double,
//     double? minThumbLength_double,
//     bool? interactive_bool,
//   }) = _ScrollbarModel;

//   const ScrollbarModel._();

//   factory ScrollbarModel.fromJson(Map<String, dynamic> json) =>
//       _$ScrollbarModelFromJson(json);

//   // static ScrollbarModel defaultScrollbarModel() {
//   //   return const ScrollbarModel(
//   //     thumbVisibility: true,
//   //     thickness: 8.0,
//   //     trackVisibility: true,
//   //     radius: Radius.circular(0.0),
//   //     thumbColor: "primary",
//   //     trackColor: "surface",
//   //     trackBorderColor: "outline",
//   //     crossAxisMargin: 4.0,
//   //     mainAxisMargin: 4.0,
//   //     minThumbLength: 48.0,
//   //     interactive: true,
//   //   );
//   // }

//   ScrollbarThemeData asScrollbarThemeData({String? styleTypeName}) {
//     return ScrollbarThemeData(
//       thumbVisibility: WidgetStateProperty.all(thumbVisibility_bool),
//       thickness: WidgetStateProperty.all(thickness_double),
//       trackVisibility: WidgetStateProperty.all(trackVisibility_bool),
//       radius: radius_double != null
//           ? Radius.circular(radius_double!)
//           : null, // radius_radius?.asBorderRadius(styleTypeName: styleTypeName),
//       thumbColor: WidgetStateProperty.all(
//           thumbColor_themeColorString?.toColor(styleType: styleTypeName),),
//       trackColor: WidgetStateProperty.all(
//           trackColor_themeColorString?.toColor(styleType: styleTypeName),),
//       trackBorderColor: WidgetStateProperty.all(
//           trackBorderColor_themeColorString?.toColor(styleType: styleTypeName),),
//       crossAxisMargin: crossAxisMargin_double,
//       mainAxisMargin: mainAxisMargin_double,
//       minThumbLength: minThumbLength_double,
//       interactive: interactive_bool,
//     );
//   }
// }
