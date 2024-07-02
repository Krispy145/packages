// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/extensions/theme_color_string.dart";

part "switch_model.mapper.dart";

@MappableClass()
class SwitchModel with SwitchModelMappable {
  final ThemeColorString? thumbColor_themeColorString;
  final ThemeColorString? trackColor_themeColorString;
  final ThemeColorString? trackOutlineColor_themeColorString;
  final double? trackOutlineWidth_double;
  final ThemeColorString? overlayColor_themeColorString;
  final double? splashRadius_double;

  const SwitchModel({
    this.thumbColor_themeColorString,
    this.trackColor_themeColorString,
    this.trackOutlineColor_themeColorString,
    this.trackOutlineWidth_double,
    this.overlayColor_themeColorString,
    this.splashRadius_double,
  });

  static const fromMap = SwitchModelMapper.fromMap;
  static const fromJson = SwitchModelMapper.fromJson;

  SwitchThemeData asSwitchThemeData({String? styleTypeName}) {
    return SwitchThemeData(
      thumbColor: WidgetStateProperty.all(
        thumbColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      trackColor: WidgetStateProperty.all(
        trackColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      trackOutlineColor: WidgetStateProperty.all(
        trackOutlineColor_themeColorString?.toColor(
          styleType: styleTypeName,
        ),
      ),
      trackOutlineWidth: WidgetStateProperty.all(trackOutlineWidth_double),
      overlayColor: WidgetStateProperty.all(
        overlayColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      splashRadius: splashRadius_double,
    );
  }

  // static const empty = SwitchModel(id: "");

  // static const switchOne = SwitchModel(
  // id: "switchOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const switchTwo = SwitchModel(
  // id: "switchTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const switchThree = SwitchModel(
  // id: "switchThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<SwitchModel> fakeData = [
  // switchOne,
  // switchTwo,
  // switchThree,
  // ];
}

// part "switch_model.freezed.dart";
// part "switch_model.g.dart";

// @freezed
// class SwitchModel with _$SwitchModel {
//   const factory SwitchModel({
//     ThemeColorString? thumbColor_themeColorString,
//     ThemeColorString? trackColor_themeColorString,
//     ThemeColorString? trackOutlineColor_themeColorString,
//     double? trackOutlineWidth_double,
//     ThemeColorString? overlayColor_themeColorString,
//     double? splashRadius_double,
//   }) = _SwitchModel;

//   const SwitchModel._();

//   factory SwitchModel.fromJson(Map<String, dynamic> json) =>
//       _$SwitchModelFromJson(json);

//   // static SwitchModel defaultSwitchModel() {
//   //   return const SwitchModel(
//   //     thumbColor: "primary",
//   //     trackColor: "primary",
//   //     trackOutlineColor: "outline",
//   //     trackOutlineWidth: 1.0,
//   //     overlayColor: "surface",
//   //     splashRadius: 24.0,
//   //   );
//   // }

//   SwitchThemeData asSwitchThemeData({String? styleTypeName}) {
//     return SwitchThemeData(
//       thumbColor: WidgetStateProperty.all(
//           thumbColor_themeColorString?.toColor(styleType: styleTypeName),),
//       trackColor: WidgetStateProperty.all(
//           trackColor_themeColorString?.toColor(styleType: styleTypeName),),
//       trackOutlineColor: WidgetStateProperty.all(
//           trackOutlineColor_themeColorString?.toColor(
//               styleType: styleTypeName,),),
//       trackOutlineWidth: WidgetStateProperty.all(trackOutlineWidth_double),
//       overlayColor: WidgetStateProperty.all(
//           overlayColor_themeColorString?.toColor(styleType: styleTypeName),),
//       splashRadius: splashRadius_double,
//     );
//   }
// }
