import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/border_side/border_side.dart';
import 'package:theme/domain/converters/box/constraints.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/domain/converters/outlined_border/outlined_border.dart';
import 'package:theme/extensions/string.dart';

part 'search_bar_model.freezed.dart';
part 'search_bar_model.g.dart';

@freezed
class SearchBarModel with _$SearchBarModel {
  const factory SearchBarModel({
    double? elevation,
    String? backgroundColor,
    String? shadowColor,
    String? surfaceTintColor,
    String? overlayColor,
    @BorderSideConverter() BorderSide? side,
    @OutlinedBorderConverter() OutlinedBorder? shape,
    @EdgeInsetsConverter() EdgeInsets? padding,
    String? textStyle,
    String? hintStyle,
    @BoxConstraintsConverter() BoxConstraints? constraints,
    @Default(TextCapitalization.none) TextCapitalization? textCapitalization,
  }) = _SearchBarModel;

  const SearchBarModel._();

  factory SearchBarModel.fromJson(Map<String, dynamic> json) => _$SearchBarModelFromJson(json);

  // static SearchBarModel defaultSearchBarModel() {
  //   return const SearchBarModel(
  //     elevation: 0.0,
  //     backgroundColor: "surface",
  //     shadowColor: "outline",
  //     surfaceTintColor: "surface",
  //     overlayColor: "surface",
  //     side: BorderSide(
  //       color: Colors.transparent,
  //       width: 0.0,
  //     ),
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.only(
  //       topLeft: Radius.circular(0.0),
  //       topRight: Radius.circular(0.0),
  //       bottomLeft: Radius.circular(0.0),
  //       bottomRight: Radius.circular(0.0),
  //     )),
  //     padding: EdgeInsets.only(
  //       left: 16.0,
  //       right: 16.0,
  //       bottom: 16.0,
  //       top: 16.0,
  //     ),
  //     textStyle: "body-medium",
  //     hintStyle: "body-medium",
  //     constraints: BoxConstraints(
  //       minHeight: 48.0,
  //       minWidth: 48.0,
  //       maxHeight: 960.0,
  //       maxWidth: 1600.0,
  //     ),
  //     textCapitalization: TextCapitalization.none,
  //   );
  // }

  SearchBarThemeData asSearchBarThemeData({String? styleTypeName}) {
    return SearchBarThemeData(
      elevation: MaterialStateProperty.all(elevation),
      backgroundColor: MaterialStateProperty.all(backgroundColor?.toColor(styleType: styleTypeName)),
      shadowColor: MaterialStateProperty.all(shadowColor?.toColor(styleType: styleTypeName)),
      surfaceTintColor: MaterialStateProperty.all(surfaceTintColor?.toColor(styleType: styleTypeName)),
      overlayColor: MaterialStateProperty.all(overlayColor?.toColor(styleType: styleTypeName)),
      side: MaterialStateProperty.all(side),
      shape: MaterialStateProperty.all(shape),
      padding: MaterialStateProperty.all(padding),
      textStyle: MaterialStateProperty.all(textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle),
      hintStyle: MaterialStateProperty.all(hintStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle),
      constraints: constraints,
      textCapitalization: textCapitalization,
    );
  }
}
