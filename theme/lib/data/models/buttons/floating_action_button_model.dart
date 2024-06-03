// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/borders/shape_border_model.dart";
import "package:theme/data/models/box_constraints_model.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";

part "floating_action_button_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class FloatingActionButtonModel with FloatingActionButtonModelMappable {
  final ThemeColorString? foregroundColor_themeColorString;
  final ThemeColorString? backgroundColor_themeColorString;
  final ThemeColorString? focusColor_themeColorString;
  final ThemeColorString? hoverColor_themeColorString;
  final ThemeColorString? splashColor_themeColorString;
  final double? elevation_double;
  final double? focusElevation_double;
  final double? hoverElevation_double;
  final double? disabledElevation_double;
  final double? highlightElevation_double;
  final ShapeBorderModel? shape_shapeBorder; // TODO: Change to ShapeBorderMode;
  final bool? enableFeedback_bool;
  final double? iconSize_double;
  @MappableValue(BoxConstraintsModel())
  final BoxConstraintsModel? sizeConstraints_boxConstraints;
  @MappableValue(BoxConstraintsModel())
  final BoxConstraintsModel? smallSizeConstraints_boxConstraints;
  @MappableValue(BoxConstraintsModel())
  final BoxConstraintsModel? largeSizeConstraints_boxConstraints;
  @MappableValue(BoxConstraintsModel())
  final BoxConstraintsModel? extendedSizeConstraints_boxConstraints;
  final double? extendedIconLabelSpacing_double;
  @MappableValue(EdgeInsetsModel())
  final EdgeInsetsModel? extendedPadding_edgeInsets;
  final TextStyleString? extendedTextStyle_textStyleString;

  const FloatingActionButtonModel({
    this.foregroundColor_themeColorString,
    this.backgroundColor_themeColorString,
    this.focusColor_themeColorString,
    this.hoverColor_themeColorString,
    this.splashColor_themeColorString,
    this.elevation_double,
    this.focusElevation_double,
    this.hoverElevation_double,
    this.disabledElevation_double,
    this.highlightElevation_double,
    this.shape_shapeBorder,
    this.enableFeedback_bool,
    this.iconSize_double,
    this.sizeConstraints_boxConstraints = const BoxConstraintsModel(),
    this.smallSizeConstraints_boxConstraints = const BoxConstraintsModel(),
    this.largeSizeConstraints_boxConstraints = const BoxConstraintsModel(),
    this.extendedSizeConstraints_boxConstraints = const BoxConstraintsModel(),
    this.extendedIconLabelSpacing_double,
    this.extendedPadding_edgeInsets = const EdgeInsetsModel(),
    this.extendedTextStyle_textStyleString,
  });

  static const fromMap = FloatingActionButtonModelMapper.fromMap;
  static const fromJson = FloatingActionButtonModelMapper.fromJson;

  // static const empty = FloatingActionButtonModel(id: "");

  // static const floatingActionButtonOne = FloatingActionButtonModel(
  // id: "floatingActionButtonOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const floatingActionButtonTwo = FloatingActionButtonModel(
  // id: "floatingActionButtonTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const floatingActionButtonThree = FloatingActionButtonModel(
  // id: "floatingActionButtonThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<FloatingActionButtonModel> fakeData = [
  // floatingActionButtonOne,
  // floatingActionButtonTwo,
  // floatingActionButtonThree,
  // ];

  FloatingActionButtonThemeData asFloatingActionButtonThemeData({
    String? styleTypeName,
  }) {
    return FloatingActionButtonThemeData(
      foregroundColor: foregroundColor_themeColorString?.toColor(styleType: styleTypeName),
      backgroundColor: backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
      focusColor: focusColor_themeColorString?.toColor(styleType: styleTypeName),
      hoverColor: hoverColor_themeColorString?.toColor(styleType: styleTypeName),
      splashColor: splashColor_themeColorString?.toColor(styleType: styleTypeName),
      elevation: elevation_double,
      focusElevation: focusElevation_double,
      hoverElevation: hoverElevation_double,
      disabledElevation: disabledElevation_double,
      highlightElevation: highlightElevation_double,
      shape: shape_shapeBorder?.asShapeBorder(styleTypeName: styleTypeName),
      enableFeedback: enableFeedback_bool,
      iconSize: iconSize_double,
      sizeConstraints: sizeConstraints_boxConstraints?.asBoxConstraints(
        styleTypeName: styleTypeName,
      ),
      smallSizeConstraints: smallSizeConstraints_boxConstraints?.asBoxConstraints(styleTypeName: styleTypeName),
      largeSizeConstraints: largeSizeConstraints_boxConstraints?.asBoxConstraints(styleTypeName: styleTypeName),
      extendedSizeConstraints: extendedSizeConstraints_boxConstraints?.asBoxConstraints(styleTypeName: styleTypeName),
      extendedIconLabelSpacing: extendedIconLabelSpacing_double,
      extendedPadding: extendedPadding_edgeInsets?.asEdgeInsets(
        styleTypeName: styleTypeName,
      ),
      extendedTextStyle: extendedTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
    );
  }
}

// part "floating_action_button_model.freezed.dart";
// part "floating_action_button_model.g.dart";

// @freezed
// class FloatingActionButtonModel with _$FloatingActionButtonModel {
//   const factory FloatingActionButtonModel({
//     ThemeColorString? foregroundColor_themeColorString,
//     ThemeColorString? backgroundColor_themeColorString,
//     ThemeColorString? focusColor_themeColorString,
//     ThemeColorString? hoverColor_themeColorString,
//     ThemeColorString? splashColor_themeColorString,
//     double? elevation_double,
//     double? focusElevation_double,
//     double? hoverElevation_double,
//     double? disabledElevation_double,
//     double? highlightElevation_double,
//     ShapeBorderModel? shape_shapeBorder, // TODO: Change to ShapeBorderModel
//     bool? enableFeedback_bool,
//     double? iconSize_double,
//     @MappableValue(BoxConstraintsModel())
//     BoxConstraintsModel? sizeConstraints_boxConstraints,
//     @MappableValue(BoxConstraintsModel())
//     BoxConstraintsModel? smallSizeConstraints_boxConstraints,
//     @MappableValue(BoxConstraintsModel())
//     BoxConstraintsModel? largeSizeConstraints_boxConstraints,
//     @MappableValue(BoxConstraintsModel())
//     BoxConstraintsModel? extendedSizeConstraints_boxConstraints,
//     double? extendedIconLabelSpacing_double,
//     @MappableValue(EdgeInsetsModel()) EdgeInsetsModel? extendedPadding_edgeInsets,
//     TextStyleString? extendedTextStyle_textStyleString,
//   }) = _FloatingActionButtonModel;

//   const FloatingActionButtonModel._();

//   FloatingActionButtonThemeData asFloatingActionButtonThemeData(
//       {String? styleTypeName,}) {
//     return FloatingActionButtonThemeData(
//       foregroundColor:
//           foregroundColor_themeColorString?.toColor(styleType: styleTypeName),
//       backgroundColor:
//           backgroundColor_themeColorString?.toColor(styleType: styleTypeName),
//       focusColor:
//           focusColor_themeColorString?.toColor(styleType: styleTypeName),
//       hoverColor:
//           hoverColor_themeColorString?.toColor(styleType: styleTypeName),
//       splashColor:
//           splashColor_themeColorString?.toColor(styleType: styleTypeName),
//       elevation: elevation_double,
//       focusElevation: focusElevation_double,
//       hoverElevation: hoverElevation_double,
//       disabledElevation: disabledElevation_double,
//       highlightElevation: highlightElevation_double,
//       shape: shape_shapeBorder?.asShapeBorder(styleTypeName: styleTypeName),
//       enableFeedback: enableFeedback_bool,
//       iconSize: iconSize_double,
//       sizeConstraints: sizeConstraints_boxConstraints?.asBoxConstraints(
//           styleTypeName: styleTypeName,),
//       smallSizeConstraints: smallSizeConstraints_boxConstraints
//           ?.asBoxConstraints(styleTypeName: styleTypeName),
//       largeSizeConstraints: largeSizeConstraints_boxConstraints
//           ?.asBoxConstraints(styleTypeName: styleTypeName),
//       extendedSizeConstraints: extendedSizeConstraints_boxConstraints
//           ?.asBoxConstraints(styleTypeName: styleTypeName),
//       extendedIconLabelSpacing: extendedIconLabelSpacing_double,
//       extendedPadding: extendedPadding_edgeInsets?.asEdgeInsets(
//           styleTypeName: styleTypeName,),
//       extendedTextStyle: extendedTextStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//     );
//   }

//   // static FloatingActionButtonModel defaultFloatingActionButtonStyle() {
//   //   return const FloatingActionButtonModel(
//   //     foregroundColor_themeColorString: 'onPrimary',
//   //     backgroundColor_themeColorString: 'primary',
//   //     focusColor_themeColorString: 'onPrimary',
//   //     hoverColor_themeColorString: 'onPrimary',
//   //     splashColor_themeColorString: 'onPrimary',
//   //     elevation: 6,
//   //     focusElevation: 8,
//   //     hoverElevation: 8,
//   //     disabledElevation: 0,
//   //     highlightElevation: 12,
//   //     shape: RoundedRectangleBorder(
//   //       side: BorderSide(
//   //         color: Colors.transparent,
//   //         width: 0,
//   //       ),
//   //     ),
//   //     enableFeedback: true,
//   //     iconSize: 24,
//   //     sizeConstraints: BoxConstraints(
//   //       minWidth: 56,
//   //       minHeight: 56,
//   //       maxWidth: 56,
//   //       maxHeight: 56,
//   //     ),
//   //     smallSizeConstraints: BoxConstraints(
//   //       minWidth: 40,
//   //       minHeight: 40,
//   //       maxHeight: 40,
//   //       maxWidth: 40,
//   //     ),
//   //     largeSizeConstraints: BoxConstraints(
//   //       minWidth: 56,
//   //       minHeight: 56,
//   //       maxWidth: 56,
//   //       maxHeight: 56,
//   //     ),
//   //     extendedSizeConstraints: BoxConstraints(
//   //       minWidth: 48,
//   //       minHeight: 48,
//   //       maxWidth: 48,
//   //       maxHeight: 48,
//   //     ),
//   //     extendedIconLabelSpacing: 12,
//   //     extendedPadding: EdgeInsets.only(
//   //       top: 16,
//   //       bottom: 16,
//   //       left: 16,
//   //       right: 16,
//   //     ),
//   //     extendedTextStyle: 'label-small',
//   //   );
//   // }

//   factory FloatingActionButtonModel.fromJson(Map<String, dynamic> json) =>
//       _$FloatingActionButtonModelFromJson(json);
// }
