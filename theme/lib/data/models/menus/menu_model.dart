import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/alignments/alignment.dart';
import 'package:theme/domain/converters/border_side/border_side.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/domain/converters/sizes/size.dart';
import 'package:theme/extensions/string.dart';

part 'menu_model.freezed.dart';
part 'menu_model.g.dart';

@freezed
class MenuModel with _$MenuModel {
  const factory MenuModel({
    String? backgroundColor,
    String? shadowColor,
    String? surfaceTintColor,
    double? elevation,
    @EdgeInsetsConverter() EdgeInsets? padding,
    @SizeConverter() Size? minimumSize,
    @SizeConverter() Size? fixedSize,
    @SizeConverter() Size? maximumSize,
    @BorderSideConverter() BorderSide? side,
    @OutlinedBorderConverter() OutlinedBorder? shape,
    @AlignmentConverter() Alignment? alignment,
  }) = _MenuModel;

  const MenuModel._();

  factory MenuModel.fromJson(Map<String, dynamic> json) => _$MenuModelFromJson(json);

  // static MenuModel defaultMenuModel() {
  //   return const MenuModel(
  //     backgroundColor: "surface",
  //     shadowColor: "outline",
  //     surfaceTintColor: "surface",
  //     elevation: 8.0,
  //     padding: EdgeInsets.only(
  //       left: 8.0,
  //       top: 8.0,
  //       right: 8.0,
  //       bottom: 8.0,
  //     ),
  //     minimumSize: Size(64.0, 36.0),
  //     // fixedSize: Size(64.0, 36.0),
  //     maximumSize: Size(1600.0, 960.0),
  //     side: BorderSide.none,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(0.0),
  //         topRight: Radius.circular(0.0),
  //         bottomLeft: Radius.circular(0.0),
  //         bottomRight: Radius.circular(0.0),
  //       ),
  //     ),
  //     alignment: Alignment.center,
  //   );
  // }

  MenuStyle asMenuStyle({String? styleTypeName}) {
    return MenuStyle(
      backgroundColor: MaterialStateProperty.all(backgroundColor?.toColor(styleType: styleTypeName)),
      shadowColor: MaterialStateProperty.all(shadowColor?.toColor(styleType: styleTypeName)),
      surfaceTintColor: MaterialStateProperty.all(surfaceTintColor?.toColor(styleType: styleTypeName)),
      elevation: MaterialStateProperty.all(elevation),
      padding: MaterialStateProperty.all(padding),
      minimumSize: MaterialStateProperty.all(minimumSize),
      fixedSize: MaterialStateProperty.all(fixedSize),
      maximumSize: MaterialStateProperty.all(maximumSize),
      side: MaterialStateProperty.all(side),
      shape: MaterialStateProperty.all(shape),
      alignment: alignment,
    );
  }

  MenuThemeData toMenuThemeData({String? styleTypeName}) {
    return MenuThemeData(
      style: asMenuStyle(styleTypeName: styleTypeName),
    );
  }
}
