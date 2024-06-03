// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/border_side_model.dart";
import "package:theme/data/models/borders/outlined_border_model.dart";
import "package:theme/extensions/theme_color_string.dart";

<<<<<<< HEAD
part "checkbox_model.freezed.dart";
part "checkbox_model.g.dart";

@freezed
class CheckboxModel with _$CheckboxModel {
  const factory CheckboxModel({
    ThemeColorString? fillColor_themeColorString,
    ThemeColorString? checkColor_themeColorString,
    ThemeColorString? overlayColor_themeColorString,
    double? splashRadius_double,
    @Default(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
    @Default(BorderSideModel()) BorderSideModel? side_borderSide,
  }) = _CheckboxModel;

  const CheckboxModel._();

  factory CheckboxModel.fromJson(Map<String, dynamic> json) => _$CheckboxModelFromJson(json);
  // static CheckboxModel defaultCheckboxModel() {
  //   return const CheckboxModel(
  //     fillColor: "primary",
  //     checkColor: "primaryContainer",
  //     overlayColor: "surface",
  //     splashRadius: 24.0,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(4.0),
  //         topRight: Radius.circular(4.0),
  //         bottomLeft: Radius.circular(4.0),
  //         bottomRight: Radius.circular(4.0),
  //       ),
  //     ),
  //     side: BorderSide(
  //       color: Colors.transparent,
  //       width: 0.0,
  //     ),
  //   );
  // }

  CheckboxThemeData asCheckboxThemeData({String? styleTypeName}) {
    return CheckboxThemeData(
      fillColor: WidgetStateProperty.all(
        fillColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      checkColor: WidgetStateProperty.all(
        checkColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      overlayColor: WidgetStateProperty.all(
=======
part "checkbox_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class CheckboxModel with CheckboxModelMappable {
  final ThemeColorString? fillColor_themeColorString;
  final ThemeColorString? checkColor_themeColorString;
  final ThemeColorString? overlayColor_themeColorString;
  final double? splashRadius_double;
  @MappableValue(OutlinedBorderModel())
  final OutlinedBorderModel? shape_outlinedBorder;
  @MappableValue(BorderSideModel())
  final BorderSideModel? side_borderSide;

  const CheckboxModel({
    this.fillColor_themeColorString,
    this.checkColor_themeColorString,
    this.overlayColor_themeColorString,
    this.splashRadius_double,
    this.shape_outlinedBorder,
    this.side_borderSide,
  });

  static const fromMap = CheckboxModelMapper.fromMap;
  static const fromJson = CheckboxModelMapper.fromJson;

  CheckboxThemeData asCheckboxThemeData({String? styleTypeName}) {
    return CheckboxThemeData(
      fillColor: MaterialStateProperty.all(
        fillColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      checkColor: MaterialStateProperty.all(
        checkColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      overlayColor: MaterialStateProperty.all(
>>>>>>> e2c0d9a28d92669ca254504fbb66dc030dd5f623
        overlayColor_themeColorString?.toColor(styleType: styleTypeName),
      ),
      splashRadius: splashRadius_double,
      shape: shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
      side: side_borderSide?.asBorderSide(styleTypeName: styleTypeName),
    );
  }

  // static const empty = CheckboxModel(id: "");

  // static const checkboxOne = CheckboxModel(
  // id: "checkboxOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const checkboxTwo = CheckboxModel(
  // id: "checkboxTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const checkboxThree = CheckboxModel(
  // id: "checkboxThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<CheckboxModel> fakeData = [
  // checkboxOne,
  // checkboxTwo,
  // checkboxThree,
  // ];
}

// part "checkbox_model.freezed.dart";
// part "checkbox_model.g.dart";

// @freezed
// class CheckboxModel with _$CheckboxModel {
//   const factory CheckboxModel({
//     ThemeColorString? fillColor_themeColorString,
//     ThemeColorString? checkColor_themeColorString,
//     ThemeColorString? overlayColor_themeColorString,
//     double? splashRadius_double,
//     @MappableValue(OutlinedBorderModel()) OutlinedBorderModel? shape_outlinedBorder,
//     @MappableValue(BorderSideModel()) BorderSideModel? side_borderSide,
//   }) = _CheckboxModel;

//   const CheckboxModel._();

//   factory CheckboxModel.fromJson(Map<String, dynamic> json) =>
//       _$CheckboxModelFromJson(json);
//   // static CheckboxModel defaultCheckboxModel() {
//   //   return const CheckboxModel(
//   //     fillColor: "primary",
//   //     checkColor: "primaryContainer",
//   //     overlayColor: "surface",
//   //     splashRadius: 24.0,
//   //     shape: RoundedRectangleBorder(
//   //       borderRadius: BorderRadius.only(
//   //         topLeft: Radius.circular(4.0),
//   //         topRight: Radius.circular(4.0),
//   //         bottomLeft: Radius.circular(4.0),
//   //         bottomRight: Radius.circular(4.0),
//   //       ),
//   //     ),
//   //     side: BorderSide(
//   //       color: Colors.transparent,
//   //       width: 0.0,
//   //     ),
//   //   );
//   // }

//   CheckboxThemeData asCheckboxThemeData({String? styleTypeName}) {
//     return CheckboxThemeData(
//       fillColor: MaterialStateProperty.all(
//           fillColor_themeColorString?.toColor(styleType: styleTypeName),),
//       checkColor: MaterialStateProperty.all(
//           checkColor_themeColorString?.toColor(styleType: styleTypeName),),
//       overlayColor: MaterialStateProperty.all(
//           overlayColor_themeColorString?.toColor(styleType: styleTypeName),),
//       splashRadius: splashRadius_double,
//       shape:
//           shape_outlinedBorder?.asOutlinedBorder(styleTypeName: styleTypeName),
//       side: side_borderSide?.asBorderSide(styleTypeName: styleTypeName),
//     );
//   }
// }
