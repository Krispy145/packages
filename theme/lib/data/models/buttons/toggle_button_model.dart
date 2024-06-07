// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/border_radius_model.dart";
import "package:theme/data/models/box_constraints_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "toggle_button_model.mapper.dart";

@MappableClass()
class ToggleButtonModel with ToggleButtonModelMappable {
  final TextStyleString? textStyle_textStyleString;
  @MappableValue(BoxConstraintsModel())
  final BoxConstraintsModel? constraints_boxConstraints;
  final ThemeColorString? color_themeColorString;
  final ThemeColorString? selectedColor_themeColorString;
  final ThemeColorString? disabledColor_themeColorString;
  final ThemeColorString? fillColor_themeColorString;
  final ThemeColorString? focusColor_themeColorString;
  final ThemeColorString? highlightColor_themeColorString;
  final ThemeColorString? hoverColor_themeColorString;
  final ThemeColorString? splashColor_themeColorString;
  final ThemeColorString? borderColor_themeColorString;
  final ThemeColorString? selectedBorderColor_themeColorString;
  final ThemeColorString? disabledBorderColor_themeColorString;
  @MappableValue(BorderRadiusModel())
  final BorderRadiusModel? borderRadius_borderRadius;
  final double? borderWidth_double;

  const ToggleButtonModel({
    this.textStyle_textStyleString,
    this.constraints_boxConstraints = const BoxConstraintsModel(),
    this.color_themeColorString,
    this.selectedColor_themeColorString,
    this.disabledColor_themeColorString,
    this.fillColor_themeColorString,
    this.focusColor_themeColorString,
    this.highlightColor_themeColorString,
    this.hoverColor_themeColorString,
    this.splashColor_themeColorString,
    this.borderColor_themeColorString,
    this.selectedBorderColor_themeColorString,
    this.disabledBorderColor_themeColorString,
    this.borderRadius_borderRadius = const BorderRadiusModel(),
    this.borderWidth_double,
  });

  static const fromMap = ToggleButtonModelMapper.fromMap;
  static const fromJson = ToggleButtonModelMapper.fromJson;

  ToggleButtonsThemeData asToggleButtonThemeData({String? styleTypeName}) {
    return ToggleButtonsThemeData(
      textStyle: textStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      constraints: constraints_boxConstraints?.asBoxConstraints(
        styleTypeName: styleTypeName,
      ),
      color: color_themeColorString?.toColor(styleType: styleTypeName),
      selectedColor: selectedColor_themeColorString?.toColor(styleType: styleTypeName),
      disabledColor: disabledColor_themeColorString?.toColor(styleType: styleTypeName),
      fillColor: fillColor_themeColorString?.toColor(styleType: styleTypeName),
      focusColor: focusColor_themeColorString?.toColor(styleType: styleTypeName),
      highlightColor: highlightColor_themeColorString?.toColor(styleType: styleTypeName),
      hoverColor: hoverColor_themeColorString?.toColor(styleType: styleTypeName),
      splashColor: splashColor_themeColorString?.toColor(styleType: styleTypeName),
      borderColor: borderColor_themeColorString?.toColor(styleType: styleTypeName),
      selectedBorderColor: selectedBorderColor_themeColorString?.toColor(
        styleType: styleTypeName,
      ),
      disabledBorderColor: disabledBorderColor_themeColorString?.toColor(
        styleType: styleTypeName,
      ),
      borderRadius: borderRadius_borderRadius?.asBorderRadius(
        styleTypeName: styleTypeName,
      ),
      borderWidth: borderWidth_double,
    );
  }

  // static const empty = ToggleButtonModel(id: "");

  // static const toggleButtonOne = ToggleButtonModel(
  // id: "toggleButtonOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const toggleButtonTwo = ToggleButtonModel(
  // id: "toggleButtonTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const toggleButtonThree = ToggleButtonModel(
  // id: "toggleButtonThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<ToggleButtonModel> fakeData = [
  // toggleButtonOne,
  // toggleButtonTwo,
  // toggleButtonThree,
  // ];
}

// part "toggle_button_model.freezed.dart";
// part "toggle_button_model.g.dart";

// @freezed
// class ToggleButtonModel with _$ToggleButtonModel {
//   const factory ToggleButtonModel({
//     TextStyleString? textStyle_textStyleString,
//     // @BoxConstraintsConverter()
//     @MappableValue(BoxConstraintsModel())
//     BoxConstraintsModel? constraints_boxConstraints,
//     ThemeColorString? color_themeColorString,
//     ThemeColorString? selectedColor_themeColorString,
//     ThemeColorString? disabledColor_themeColorString,
//     ThemeColorString? fillColor_themeColorString,
//     ThemeColorString? focusColor_themeColorString,
//     ThemeColorString? highlightColor_themeColorString,
//     ThemeColorString? hoverColor_themeColorString,
//     ThemeColorString? splashColor_themeColorString,
//     ThemeColorString? borderColor_themeColorString,
//     ThemeColorString? selectedBorderColor_themeColorString,
//     ThemeColorString? disabledBorderColor_themeColorString,
//     @MappableValue(BorderRadiusModel()) BorderRadiusModel? borderRadius_borderRadius,
//     double? borderWidth_double,
//   }) = _ToggleButtonModel;
//   const ToggleButtonModel._();

//   ToggleButtonsThemeData asToggleButtonThemeData({String? styleTypeName}) {
//     return ToggleButtonsThemeData(
//       textStyle: textStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//       constraints: constraints_boxConstraints?.asBoxConstraints(
//           styleTypeName: styleTypeName,),
//       color: color_themeColorString?.toColor(styleType: styleTypeName),
//       selectedColor:
//           selectedColor_themeColorString?.toColor(styleType: styleTypeName),
//       disabledColor:
//           disabledColor_themeColorString?.toColor(styleType: styleTypeName),
//       fillColor: fillColor_themeColorString?.toColor(styleType: styleTypeName),
//       focusColor:
//           focusColor_themeColorString?.toColor(styleType: styleTypeName),
//       highlightColor:
//           highlightColor_themeColorString?.toColor(styleType: styleTypeName),
//       hoverColor:
//           hoverColor_themeColorString?.toColor(styleType: styleTypeName),
//       splashColor:
//           splashColor_themeColorString?.toColor(styleType: styleTypeName),
//       borderColor:
//           borderColor_themeColorString?.toColor(styleType: styleTypeName),
//       selectedBorderColor: selectedBorderColor_themeColorString?.toColor(
//           styleType: styleTypeName,),
//       disabledBorderColor: disabledBorderColor_themeColorString?.toColor(
//           styleType: styleTypeName,),
//       borderRadius: borderRadius_borderRadius?.asBorderRadius(
//           styleTypeName: styleTypeName,),
//       borderWidth: borderWidth_double,
//     );
//   }

//   // static ToggleButtonModel defaultToggleButtonStyle() {
//   //   return const ToggleButtonModel(
//   //     textStyle: "label-small",
//   //     constraints: BoxConstraints(
//   //       minWidth: 88.0,
//   //       minHeight: 36.0,
//   //       maxWidth: 120,
//   //       maxHeight: 48,
//   //     ),
//   //     color: "primary",
//   //     selectedColor: "primary",
//   //     disabledColor: "disabled",
//   //     fillColor: "#2196F3",
//   //     focusColor: "#2196F3",
//   //     highlightColor: "#2196F3",
//   //     hoverColor: "#2196F3",
//   //     splashColor: "#2196F3",
//   //     borderColor: "#2196F3",
//   //     selectedBorderColor: "#2196F3",
//   //     disabledBorderColor: "#BDBDBD",
//   //     borderRadius: BorderRadius.only(
//   //       bottomLeft: Radius.circular(0.0),
//   //       bottomRight: Radius.circular(0.0),
//   //       topLeft: Radius.circular(0.0),
//   //       topRight: Radius.circular(0.0),
//   //     ),
//   //     borderWidth: 2.0,
//   //   );
//   // }

//   factory ToggleButtonModel.fromJson(Map<String, dynamic> json) =>
//       _$ToggleButtonModelFromJson(json);
// }
