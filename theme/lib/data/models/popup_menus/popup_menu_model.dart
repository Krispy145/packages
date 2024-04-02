import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/extensions/string.dart';

part 'popup_menu_model.freezed.dart';
part 'popup_menu_model.g.dart';

@freezed
class PopupMenuModel with _$PopupMenuModel {
  const factory PopupMenuModel({
    String? color,
    @OutlinedBorderConverter() OutlinedBorder? shape,
    double? elevation,
    String? shadowColor,
    String? surfaceTintColor,
    String? textStyle,
    String? labelTextStyle,
    bool? enableFeedback,
    @Default(PopupMenuPosition.under) PopupMenuPosition position,
    String? iconColor,
    double? iconSize,
  }) = _PopupMenuModel;

  const PopupMenuModel._();

  factory PopupMenuModel.fromJson(Map<String, dynamic> json) => _$PopupMenuModelFromJson(json);
  // static PopupMenuModel defaultPopupMenuModel() {
  //   return const PopupMenuModel(
  //     color: "surface",
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(0.0),
  //         topRight: Radius.circular(0.0),
  //         bottomLeft: Radius.circular(0.0),
  //         bottomRight: Radius.circular(0.0),
  //       ),
  //     ),
  //     elevation: 8.0,
  //     shadowColor: "outline",
  //     surfaceTintColor: "surface",
  //     textStyle: "body-medium",
  //     labelTextStyle: "body-medium",
  //     enableFeedback: true,
  //     position: PopupMenuPosition.under,
  //     iconColor: "onSurface",
  //     iconSize: 24.0,
  //   );
  // }

  PopupMenuThemeData asPopupMenuThemeData({String? styleTypeName}) {
    return PopupMenuThemeData(
      color: color?.toColor(styleType: styleTypeName),
      shape: shape,
      elevation: elevation,
      shadowColor: shadowColor?.toColor(styleType: styleTypeName),
      surfaceTintColor: surfaceTintColor?.toColor(styleType: styleTypeName),
      textStyle: textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      enableFeedback: enableFeedback,
      position: position,
      iconColor: iconColor?.toColor(styleType: styleTypeName),
      iconSize: iconSize,
    );
  }
}
