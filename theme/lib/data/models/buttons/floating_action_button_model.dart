// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/borders/shape_border_model.dart';
import 'package:theme/data/models/box_constraints_model.dart';
import 'package:theme/data/models/edge_insets_model.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:theme/extensions/theme_color_string.dart';

part 'floating_action_button_model.freezed.dart';
part 'floating_action_button_model.g.dart';

@freezed
class FloatingActionButtonModel with _$FloatingActionButtonModel {
  const factory FloatingActionButtonModel({
    ThemeColorString? foregroundColor_themeColorString,
    ThemeColorString? backgroundColor_themeColorString,
    ThemeColorString? focusColor_themeColorString,
    ThemeColorString? hoverColor_themeColorString,
    ThemeColorString? splashColor_themeColorString,
    double? elevation_double,
    double? focusElevation_double,
    double? hoverElevation_double,
    double? disabledElevation_double,
    double? highlightElevation_double,
    ShapeBorderModel? shape_shapeBorder, // TODO: Change to ShapeBorderModel
    bool? enableFeedback_bool,
    double? iconSize_double,
    @Default(BoxConstraintsModel()) BoxConstraintsModel? sizeConstraints_boxConstraints,
    @Default(BoxConstraintsModel()) BoxConstraintsModel? smallSizeConstraints_boxConstraints,
    @Default(BoxConstraintsModel()) BoxConstraintsModel? largeSizeConstraints_boxConstraints,
    @Default(BoxConstraintsModel()) BoxConstraintsModel? extendedSizeConstraints_boxConstraints,
    double? extendedIconLabelSpacing_double,
    @Default(EdgeInsetsModel()) EdgeInsetsModel? extendedPadding_edgeInsets,
    TextStyleString? extendedTextStyle_textStyleString,
  }) = _FloatingActionButtonModel;

  const FloatingActionButtonModel._();

  FloatingActionButtonThemeData asFloatingActionButtonThemeData({String? styleTypeName}) {
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
      sizeConstraints: sizeConstraints_boxConstraints?.asBoxConstraints(styleTypeName: styleTypeName),
      smallSizeConstraints: smallSizeConstraints_boxConstraints?.asBoxConstraints(styleTypeName: styleTypeName),
      largeSizeConstraints: largeSizeConstraints_boxConstraints?.asBoxConstraints(styleTypeName: styleTypeName),
      extendedSizeConstraints: extendedSizeConstraints_boxConstraints?.asBoxConstraints(styleTypeName: styleTypeName),
      extendedIconLabelSpacing: extendedIconLabelSpacing_double,
      extendedPadding: extendedPadding_edgeInsets?.asEdgeInsets(styleTypeName: styleTypeName),
      extendedTextStyle: extendedTextStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
    );
  }

  // static FloatingActionButtonModel defaultFloatingActionButtonStyle() {
  //   return const FloatingActionButtonModel(
  //     foregroundColor_themeColorString: 'onPrimary',
  //     backgroundColor_themeColorString: 'primary',
  //     focusColor_themeColorString: 'onPrimary',
  //     hoverColor_themeColorString: 'onPrimary',
  //     splashColor_themeColorString: 'onPrimary',
  //     elevation: 6,
  //     focusElevation: 8,
  //     hoverElevation: 8,
  //     disabledElevation: 0,
  //     highlightElevation: 12,
  //     shape: RoundedRectangleBorder(
  //       side: BorderSide(
  //         color: Colors.transparent,
  //         width: 0,
  //       ),
  //     ),
  //     enableFeedback: true,
  //     iconSize: 24,
  //     sizeConstraints: BoxConstraints(
  //       minWidth: 56,
  //       minHeight: 56,
  //       maxWidth: 56,
  //       maxHeight: 56,
  //     ),
  //     smallSizeConstraints: BoxConstraints(
  //       minWidth: 40,
  //       minHeight: 40,
  //       maxHeight: 40,
  //       maxWidth: 40,
  //     ),
  //     largeSizeConstraints: BoxConstraints(
  //       minWidth: 56,
  //       minHeight: 56,
  //       maxWidth: 56,
  //       maxHeight: 56,
  //     ),
  //     extendedSizeConstraints: BoxConstraints(
  //       minWidth: 48,
  //       minHeight: 48,
  //       maxWidth: 48,
  //       maxHeight: 48,
  //     ),
  //     extendedIconLabelSpacing: 12,
  //     extendedPadding: EdgeInsets.only(
  //       top: 16,
  //       bottom: 16,
  //       left: 16,
  //       right: 16,
  //     ),
  //     extendedTextStyle: 'label-small',
  //   );
  // }

  factory FloatingActionButtonModel.fromJson(Map<String, dynamic> json) => _$FloatingActionButtonModelFromJson(json);
}
