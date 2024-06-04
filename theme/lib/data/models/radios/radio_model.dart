// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/extensions/theme_color_string.dart";

part "radio_model.mapper.dart";

@MappableClass()
class RadioModel with RadioModelMappable {
  final ThemeColorString? fillColor_themeColorString;
  final ThemeColorString? overlayColor_themeColorString;
  final double? splashRadius_double;

  const RadioModel({
    this.fillColor_themeColorString,
    this.overlayColor_themeColorString,
    this.splashRadius_double,
  });

  static const fromMap = RadioModelMapper.fromMap;
  static const fromJson = RadioModelMapper.fromJson;

  RadioThemeData asRadioThemeData({String? styleTypeName}) {
    return RadioThemeData(
      fillColor: WidgetStateProperty.all(
        fillColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      overlayColor: WidgetStateProperty.all(
        overlayColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      splashRadius: splashRadius_double,
    );
  }

  // static const empty = RadioModel(id: "");

  // static const radioModelOne = RadioModel(
  // id: "radioModelOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const radioModelTwo = RadioModel(
  // id: "radioModelTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const radioModelThree = RadioModel(
  // id: "radioModelThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<RadioModel> fakeData = [
  // radioModelOne,
  // radioModelTwo,
  // radioModelThree,
  // ];
}

// part "radio_model.freezed.dart";
// part "radio_model.g.dart";

// @freezed
// class RadioModel with _$RadioModel {
//   const factory RadioModel({
//     ThemeColorString? fillColor_themeColorString,
//     ThemeColorString? overlayColor_themeColorString,
//     double? splashRadius_double,
//   }) = _RadioModel;

//   const RadioModel._();

//   factory RadioModel.fromJson(Map<String, dynamic> json) =>
//       _$RadioModelFromJson(json);

//   // static RadioModel defaultRadioModel() {
//   //   return const RadioModel(
//   //     fillColor: "primary",
//   //     overlayColor: "surface",
//   //     splashRadius: 24.0,
//   //   );
//   // }

//   RadioThemeData asRadioThemeData({String? styleTypeName}) {
//     return RadioThemeData(
//       fillColor: MaterialStateProperty.all(
//           fillColor_themeColorString?.toColor(styleType: styleTypeName),),
//       overlayColor: MaterialStateProperty.all(
//           overlayColor_themeColorString?.toColor(styleType: styleTypeName),),
//       splashRadius: splashRadius_double,
//     );
//   }
// }
