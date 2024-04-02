import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/box/constraints.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/extensions/string.dart';

part 'floating_action_button_model.freezed.dart';
part 'floating_action_button_model.g.dart';

@freezed
class FloatingActionButtonModel with _$FloatingActionButtonModel {
  const FloatingActionButtonModel._();
  const factory FloatingActionButtonModel({
    String? foregroundColor,
    String? backgroundColor,
    String? focusColor,
    String? hoverColor,
    String? splashColor,
    double? elevation,
    double? focusElevation,
    double? hoverElevation,
    double? disabledElevation,
    double? highlightElevation,
    @OutlinedBorderConverter() OutlinedBorder? shape,
    bool? enableFeedback,
    double? iconSize,
    @BoxConstraintsConverter() BoxConstraints? sizeConstraints,
    @BoxConstraintsConverter() BoxConstraints? smallSizeConstraints,
    @BoxConstraintsConverter() BoxConstraints? largeSizeConstraints,
    @BoxConstraintsConverter() BoxConstraints? extendedSizeConstraints,
    double? extendedIconLabelSpacing,
    @EdgeInsetsConverter() EdgeInsets? extendedPadding,
    String? extendedTextStyle,
  }) = _FloatingActionButtonModel;

  FloatingActionButtonThemeData asFloatingActionButtonThemeData({String? styleTypeName}) {
    return FloatingActionButtonThemeData(
      foregroundColor: foregroundColor?.toColor(styleType: styleTypeName),
      backgroundColor: backgroundColor?.toColor(styleType: styleTypeName),
      focusColor: focusColor?.toColor(styleType: styleTypeName),
      hoverColor: hoverColor?.toColor(styleType: styleTypeName),
      splashColor: splashColor?.toColor(styleType: styleTypeName),
      elevation: elevation,
      focusElevation: focusElevation,
      hoverElevation: hoverElevation,
      disabledElevation: disabledElevation,
      highlightElevation: highlightElevation,
      shape: shape,
      enableFeedback: enableFeedback,
      iconSize: iconSize,
      sizeConstraints: sizeConstraints,
      smallSizeConstraints: smallSizeConstraints,
      largeSizeConstraints: largeSizeConstraints,
      extendedSizeConstraints: extendedSizeConstraints,
      extendedIconLabelSpacing: extendedIconLabelSpacing,
      extendedPadding: extendedPadding,
      extendedTextStyle: extendedTextStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
    );
  }

  static FloatingActionButtonModel defaultFloatingActionButtonStyle() {
    return const FloatingActionButtonModel(
      foregroundColor: 'onPrimary',
      backgroundColor: 'primary',
      focusColor: 'onPrimary',
      hoverColor: 'onPrimary',
      splashColor: 'onPrimary',
      elevation: 6.0,
      focusElevation: 8.0,
      hoverElevation: 8.0,
      disabledElevation: 0.0,
      highlightElevation: 12.0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.transparent,
          width: 0.0,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
        ),
      ),
      enableFeedback: true,
      iconSize: 24.0,
      sizeConstraints: BoxConstraints(
        minWidth: 56.0,
        minHeight: 56.0,
        maxWidth: 56.0,
        maxHeight: 56.0,
      ),
      smallSizeConstraints: BoxConstraints(
        minWidth: 40.0,
        minHeight: 40.0,
        maxHeight: 40.0,
        maxWidth: 40.0,
      ),
      largeSizeConstraints: BoxConstraints(
        minWidth: 56.0,
        minHeight: 56.0,
        maxWidth: 56.0,
        maxHeight: 56.0,
      ),
      extendedSizeConstraints: BoxConstraints(
        minWidth: 48.0,
        minHeight: 48.0,
        maxWidth: 48.0,
        maxHeight: 48.0,
      ),
      extendedIconLabelSpacing: 12.0,
      extendedPadding: EdgeInsets.only(
        top: 16.0,
        bottom: 16.0,
        left: 16.0,
        right: 16.0,
      ),
      extendedTextStyle: 'label-small',
    );
  }

  factory FloatingActionButtonModel.fromJson(Map<String, dynamic> json) => _$FloatingActionButtonModelFromJson(json);
}
