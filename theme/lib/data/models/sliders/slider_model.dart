// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "slider_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class SliderModel with SliderModelMappable {
  final double? trackHeight_double;
  final ThemeColorString? activeTrackColor_themeColorString;
  final ThemeColorString? inactiveTrackColor_themeColorString;
  final ThemeColorString? secondaryActiveTrackColor_themeColorString;
  final ThemeColorString? disabledActiveTrackColor_themeColorString;
  final ThemeColorString? disabledInactiveTrackColor_themeColorString;
  final ThemeColorString? disabledSecondaryActiveTrackColor_themeColorString;
  final ThemeColorString? activeTickMarkColor_themeColorString;
  final ThemeColorString? inactiveTickMarkColor_themeColorString;
  final ThemeColorString? disabledActiveTickMarkColor_themeColorString;
  final ThemeColorString? disabledInactiveTickMarkColor_themeColorString;
  final ThemeColorString? thumbColor_themeColorString;
  final ThemeColorString? overlappingShapeStrokeColor_themeColorString;
  final ThemeColorString? disabledThumbColor_themeColorString;
  final ThemeColorString? overlayColor_themeColorString;
  final ThemeColorString? valueIndicatorColor_themeColorString;
  final ShowValueIndicator? showValueIndicator_enum_showValueIndicator;
  final SliderInteraction? allowedInteraction_enum_sliderInteraction;
  final TextStyleString? valueIndicatorTextStyle_textStyleString;
  final double? minThumbSeparation_double;

  const SliderModel({
    this.trackHeight_double,
    this.activeTrackColor_themeColorString,
    this.inactiveTrackColor_themeColorString,
    this.secondaryActiveTrackColor_themeColorString,
    this.disabledActiveTrackColor_themeColorString,
    this.disabledInactiveTrackColor_themeColorString,
    this.disabledSecondaryActiveTrackColor_themeColorString,
    this.activeTickMarkColor_themeColorString,
    this.inactiveTickMarkColor_themeColorString,
    this.disabledActiveTickMarkColor_themeColorString,
    this.disabledInactiveTickMarkColor_themeColorString,
    this.thumbColor_themeColorString,
    this.overlappingShapeStrokeColor_themeColorString,
    this.disabledThumbColor_themeColorString,
    this.overlayColor_themeColorString,
    this.valueIndicatorColor_themeColorString,
    this.showValueIndicator_enum_showValueIndicator,
    this.allowedInteraction_enum_sliderInteraction,
    this.valueIndicatorTextStyle_textStyleString,
    this.minThumbSeparation_double,
  });

  static const fromMap = SliderModelMapper.fromMap;
  static const fromJson = SliderModelMapper.fromJson;

  SliderThemeData asSliderThemeData({String? styleTypeName}) {
    return SliderThemeData(
      trackHeight: trackHeight_double,
      activeTrackColor: activeTrackColor_themeColorString?.toColor(styleType: styleTypeName),
      inactiveTrackColor: inactiveTrackColor_themeColorString?.toColor(
        styleType: styleTypeName,
      ),
      secondaryActiveTrackColor: secondaryActiveTrackColor_themeColorString?.toColor(styleType: styleTypeName),
      disabledActiveTrackColor: disabledActiveTrackColor_themeColorString?.toColor(styleType: styleTypeName),
      disabledInactiveTrackColor: disabledInactiveTrackColor_themeColorString?.toColor(styleType: styleTypeName),
      disabledSecondaryActiveTrackColor: disabledSecondaryActiveTrackColor_themeColorString?.toColor(
        styleType: styleTypeName,
      ),
      activeTickMarkColor: activeTickMarkColor_themeColorString?.toColor(
        styleType: styleTypeName,
      ),
      inactiveTickMarkColor: inactiveTickMarkColor_themeColorString?.toColor(
        styleType: styleTypeName,
      ),
      disabledActiveTickMarkColor: disabledActiveTickMarkColor_themeColorString?.toColor(styleType: styleTypeName),
      disabledInactiveTickMarkColor: disabledInactiveTickMarkColor_themeColorString?.toColor(
        styleType: styleTypeName,
      ),
      thumbColor: thumbColor_themeColorString?.toColor(styleType: styleTypeName),
      overlappingShapeStrokeColor: overlappingShapeStrokeColor_themeColorString?.toColor(styleType: styleTypeName),
      disabledThumbColor: disabledThumbColor_themeColorString?.toColor(
        styleType: styleTypeName,
      ),
      overlayColor: overlayColor_themeColorString?.toColor(styleType: styleTypeName),
      valueIndicatorColor: valueIndicatorColor_themeColorString?.toColor(
        styleType: styleTypeName,
      ),
      valueIndicatorTextStyle: valueIndicatorTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      minThumbSeparation: minThumbSeparation_double,
    );
  }

  // static const empty = SliderModel(id: "");

  // static const sliderOne = SliderModel(
  // id: "sliderOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const sliderTwo = SliderModel(
  // id: "sliderTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const sliderThree = SliderModel(
  // id: "sliderThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<SliderModel> fakeData = [
  // sliderOne,
  // sliderTwo,
  // sliderThree,
  // ];
}

// part "slider_model.freezed.dart";
// part "slider_model.g.dart";

// @freezed
// class SliderModel with _$SliderModel {
//   const factory SliderModel({
//     double? trackHeight_double,
//     ThemeColorString? activeTrackColor_themeColorString,
//     ThemeColorString? inactiveTrackColor_themeColorString,
//     ThemeColorString? secondaryActiveTrackColor_themeColorString,
//     ThemeColorString? disabledActiveTrackColor_themeColorString,
//     ThemeColorString? disabledInactiveTrackColor_themeColorString,
//     ThemeColorString? disabledSecondaryActiveTrackColor_themeColorString,
//     ThemeColorString? activeTickMarkColor_themeColorString,
//     ThemeColorString? inactiveTickMarkColor_themeColorString,
//     ThemeColorString? disabledActiveTickMarkColor_themeColorString,
//     ThemeColorString? disabledInactiveTickMarkColor_themeColorString,
//     ThemeColorString? thumbColor_themeColorString,
//     ThemeColorString? overlappingShapeStrokeColor_themeColorString,
//     ThemeColorString? disabledThumbColor_themeColorString,
//     ThemeColorString? overlayColor_themeColorString,
//     ThemeColorString? valueIndicatorColor_themeColorString,
//     ShowValueIndicator? showValueIndicator_enum_showValueIndicator,
//     SliderInteraction? allowedInteraction_enum_sliderInteraction,
//     TextStyleString? valueIndicatorTextStyle_textStyleString,
//     double? minThumbSeparation_double,
//     //TODO: implement Converter for these
//     // SliderComponentShape? overlayShape,
//     // SliderTickMarkShape? tickMarkShape,
//     // SliderComponentShape? thumbShape,
//     // SliderTrackShape? trackShape,
//     // SliderComponentShape? valueIndicatorShape,
//     // RangeSliderTickMarkShape? rangeTickMarkShape,
//     // RangeSliderThumbShape? rangeThumbShape,
//     // RangeSliderTrackShape? rangeTrackShape,
//     // RangeSliderValueIndicatorShape? rangeValueIndicatorShape,
//   }) = _SliderModel;

//   const SliderModel._();

//   factory SliderModel.fromJson(Map<String, dynamic> json) =>
//       _$SliderModelFromJson(json);

//   // static SliderModel defaultSliderModel() {
//   //   return const SliderModel(
//   //     trackHeight: 2.0,
//   //     activeTrackColor: "primary",
//   //     inactiveTrackColor: "onSurface",
//   //     secondaryActiveTrackColor: "primary",
//   //     disabledActiveTrackColor: "onSurface",
//   //     disabledInactiveTrackColor: "onSurface",
//   //     disabledSecondaryActiveTrackColor: "onSurface",
//   //     activeTickMarkColor: "onSurface",
//   //     inactiveTickMarkColor: "onSurface",
//   //     disabledActiveTickMarkColor: "onSurface",
//   //     disabledInactiveTickMarkColor: "onSurface",
//   //     thumbColor: "primary",
//   //     overlappingShapeStrokeColor: "primary",
//   //     disabledThumbColor: "onSurface",
//   //     overlayColor: "primary",
//   //     valueIndicatorColor: "primary",
//   //     valueIndicatorTextStyle: "body-medium",
//   //     minThumbSeparation: 8.0,
//   //   );
//   // }

//   SliderThemeData asSliderThemeData({String? styleTypeName}) {
//     return SliderThemeData(
//       trackHeight: trackHeight_double,
//       activeTrackColor:
//           activeTrackColor_themeColorString?.toColor(styleType: styleTypeName),
//       inactiveTrackColor: inactiveTrackColor_themeColorString?.toColor(
//           styleType: styleTypeName,),
//       secondaryActiveTrackColor: secondaryActiveTrackColor_themeColorString
//           ?.toColor(styleType: styleTypeName),
//       disabledActiveTrackColor: disabledActiveTrackColor_themeColorString
//           ?.toColor(styleType: styleTypeName),
//       disabledInactiveTrackColor: disabledInactiveTrackColor_themeColorString
//           ?.toColor(styleType: styleTypeName),
//       disabledSecondaryActiveTrackColor:
//           disabledSecondaryActiveTrackColor_themeColorString?.toColor(
//               styleType: styleTypeName,),
//       activeTickMarkColor: activeTickMarkColor_themeColorString?.toColor(
//           styleType: styleTypeName,),
//       inactiveTickMarkColor: inactiveTickMarkColor_themeColorString?.toColor(
//           styleType: styleTypeName,),
//       disabledActiveTickMarkColor: disabledActiveTickMarkColor_themeColorString
//           ?.toColor(styleType: styleTypeName),
//       disabledInactiveTickMarkColor:
//           disabledInactiveTickMarkColor_themeColorString?.toColor(
//               styleType: styleTypeName,),
//       thumbColor:
//           thumbColor_themeColorString?.toColor(styleType: styleTypeName),
//       overlappingShapeStrokeColor: overlappingShapeStrokeColor_themeColorString
//           ?.toColor(styleType: styleTypeName),
//       disabledThumbColor: disabledThumbColor_themeColorString?.toColor(
//           styleType: styleTypeName,),
//       overlayColor:
//           overlayColor_themeColorString?.toColor(styleType: styleTypeName),
//       valueIndicatorColor: valueIndicatorColor_themeColorString?.toColor(
//           styleType: styleTypeName,),
//       valueIndicatorTextStyle: valueIndicatorTextStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//       minThumbSeparation: minThumbSeparation_double,
//     );
//   }
// }
