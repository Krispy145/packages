// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/extensions/theme_color_string.dart";

part "progress_indicator_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ProgressIndicatorModel with ProgressIndicatorModelMappable {
  final ThemeColorString? color_themeColorString;
  final ThemeColorString? linearTrackColor_themeColorString;
  final double? linearMinHeight_double;
  final ThemeColorString? circularTrackColor_themeColorString;
  final ThemeColorString? refreshBackgroundColor_themeColorString;

  const ProgressIndicatorModel({
    this.color_themeColorString,
    this.linearTrackColor_themeColorString,
    this.linearMinHeight_double,
    this.circularTrackColor_themeColorString,
    this.refreshBackgroundColor_themeColorString,
  });

  static const fromMap = ProgressIndicatorModelMapper.fromMap;
  static const fromJson = ProgressIndicatorModelMapper.fromJson;

  ProgressIndicatorThemeData asProgressIndicatorThemeData({
    String? styleTypeName,
  }) {
    return ProgressIndicatorThemeData(
      color: color_themeColorString?.toColor(styleType: styleTypeName),
      linearTrackColor: linearTrackColor_themeColorString?.toColor(styleType: styleTypeName),
      linearMinHeight: linearMinHeight_double,
      circularTrackColor: circularTrackColor_themeColorString?.toColor(
        styleType: styleTypeName,
      ),
      refreshBackgroundColor: refreshBackgroundColor_themeColorString?.toColor(
        styleType: styleTypeName,
      ),
    );
  }

  // static const empty = ProgressIndicatorModel(id: "");

  // static const progressIndicatorOne = ProgressIndicatorModel(
  // id: "progressIndicatorOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const progressIndicatorTwo = ProgressIndicatorModel(
  // id: "progressIndicatorTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const progressIndicatorThree = ProgressIndicatorModel(
  // id: "progressIndicatorThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<ProgressIndicatorModel> fakeData = [
  // progressIndicatorOne,
  // progressIndicatorTwo,
  // progressIndicatorThree,
  // ];
}

// part "progress_indicator_model.freezed.dart";
// part "progress_indicator_model.g.dart";

// @freezed
// class ProgressIndicatorModel with _$ProgressIndicatorModel {
//   const factory ProgressIndicatorModel({
//     ThemeColorString? color_themeColorString,
//     ThemeColorString? linearTrackColor_themeColorString,
//     double? linearMinHeight_double,
//     ThemeColorString? circularTrackColor_themeColorString,
//     ThemeColorString? refreshBackgroundColor_themeColorString,
//   }) = _ProgressIndicatorModel;

//   const ProgressIndicatorModel._();

//   factory ProgressIndicatorModel.fromJson(Map<String, dynamic> json) =>
//       _$ProgressIndicatorModelFromJson(json);

//   // static ProgressIndicatorModel defaultProgressIndicatorModel() {
//   //   return const ProgressIndicatorModel(
//   //     color: "primary",
//   //     linearTrackColor: "surface",
//   //     linearMinHeight: 4.0,
//   //     circularTrackColor: "surface",
//   //     refreshBackgroundColor: "surface",
//   //   );
//   // }

//   ProgressIndicatorThemeData asProgressIndicatorThemeData(
//       {String? styleTypeName,}) {
//     return ProgressIndicatorThemeData(
//       color: color_themeColorString?.toColor(styleType: styleTypeName),
//       linearTrackColor:
//           linearTrackColor_themeColorString?.toColor(styleType: styleTypeName),
//       linearMinHeight: linearMinHeight_double,
//       circularTrackColor: circularTrackColor_themeColorString?.toColor(
//           styleType: styleTypeName,),
//       refreshBackgroundColor: refreshBackgroundColor_themeColorString?.toColor(
//           styleType: styleTypeName,),
//     );
//   }
// }
