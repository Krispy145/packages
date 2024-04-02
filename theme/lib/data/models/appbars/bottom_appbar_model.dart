import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/extensions/string.dart';

part 'bottom_appbar_model.freezed.dart';
part 'bottom_appbar_model.g.dart';

@freezed
class BottomAppbarModel with _$BottomAppbarModel {
  const factory BottomAppbarModel({
    String? color,
    double? elevation,
    double? height,
    String? surfaceTintColor,
    String? shadowColor,
    @EdgeInsetsConverter() EdgeInsets? padding,
  }) = _BottomAppbarModel;

  const BottomAppbarModel._();

  factory BottomAppbarModel.fromJson(Map<String, dynamic> json) => _$BottomAppbarModelFromJson(json);

  // static BottomAppbarModel defaultBottomAppbarModel() {
  //   return const BottomAppbarModel(
  //     color: "surface",
  //     elevation: 8.0,
  //     height: 56.0,
  //     surfaceTintColor: "surface",
  //     shadowColor: "outline",
  //     padding: EdgeInsets.only(
  //       left: 8.0,
  //       top: 8.0,
  //       right: 8.0,
  //       bottom: 8.0,
  //     ),
  //   );
  // }

  BottomAppBarTheme asBottomAppBarTheme({String? styleTypeName}) {
    return BottomAppBarTheme(
      color: color?.toColor(styleType: styleTypeName),
      elevation: elevation,
      height: height,
      surfaceTintColor: surfaceTintColor?.toColor(styleType: styleTypeName),
      shadowColor: shadowColor?.toColor(styleType: styleTypeName),
      padding: padding,
    );
  }
}
