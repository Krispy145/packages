import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/input_decorations/input_decoration_model.dart';
import 'package:theme/data/models/menus/menu_model.dart';
import 'package:theme/extensions/string.dart';

part 'dropdown_model.freezed.dart';
part 'dropdown_model.g.dart';

@freezed
class DropdownModel with _$DropdownModel {
  const factory DropdownModel({
    String? textStyle,
    InputDecorationModel? inputDecoration,
    MenuModel? menuStyle,
  }) = _DropdownModel;

  const DropdownModel._();

  factory DropdownModel.fromJson(Map<String, dynamic> json) => _$DropdownModelFromJson(json);

  // static DropdownModel defaultDropdownModel() {
  //   return DropdownModel(
  //     textStyle: "body-medium",
  //     inputDecoration: InputDecorationModel.defaultInputDecorationModel(),
  //     menuStyle: MenuModel.defaultMenuModel(),
  //   );
  // }

  DropdownMenuThemeData asDropdownMenuThemeData({String? styleTypeName}) {
    return DropdownMenuThemeData(
      textStyle: textStyle?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      inputDecorationTheme: inputDecoration?.asInputDecorationTheme(),
      menuStyle: menuStyle?.asMenuStyle(),
    );
  }
}
