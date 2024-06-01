// ignore_for_file: non_constant_identifier_names

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/input_decorations/input_decoration_model.dart";
import "package:theme/data/models/menus/menu_style_model.dart";
import "package:theme/extensions/text_style_string.dart";

part "dropdown_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class DropdownModel with DropdownModelMappable {
  final TextStyleString? textStyle_textStyleString;
  final InputDecorationModel? inputDecoration_inputDecoration;
  final MenuStyleModel? menuStyle_menu;

  const DropdownModel({
    this.textStyle_textStyleString,
    this.inputDecoration_inputDecoration,
    this.menuStyle_menu,
  });

  static const fromMap = DropdownModelMapper.fromMap;
  static const fromJson = DropdownModelMapper.fromJson;

  DropdownMenuThemeData asDropdownMenuThemeData({String? styleTypeName}) {
    return DropdownMenuThemeData(
      textStyle: textStyle_textStyleString?.toTextStyleModel(styleType: styleTypeName)?.asTextStyle,
      inputDecorationTheme: inputDecoration_inputDecoration?.asInputDecorationTheme(),
      menuStyle: menuStyle_menu?.asMenuStyle(),
    );
  }

  // static const empty = DropdownModel(id: "");

  // static const dropdownOne = DropdownModel(
  // id: "dropdownOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const dropdownTwo = DropdownModel(
  // id: "dropdownTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const dropdownThree = DropdownModel(
  // id: "dropdownThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<DropdownModel> fakeData = [
  // dropdownOne,
  // dropdownTwo,
  // dropdownThree,
  // ];
}

// part "dropdown_model.freezed.dart";
// part "dropdown_model.g.dart";

// @freezed
// class DropdownModel with _$DropdownModel {
//   const factory DropdownModel({
//     TextStyleString? textStyle_textStyleString,
//     InputDecorationModel? inputDecoration_inputDecoration,
//     MenuStyleModel? menuStyle_menu,
//   }) = _DropdownModel;

//   const DropdownModel._();

//   factory DropdownModel.fromJson(Map<String, dynamic> json) =>
//       _$DropdownModelFromJson(json);

//   // static DropdownModel defaultDropdownModel() {
//   //   return DropdownModel(
//   //     textStyle: "body-medium",
//   //     inputDecoration: InputDecorationModel.defaultInputDecorationModel(),
//   //     menuStyle: MenuModel.defaultMenuModel(),
//   //   );
//   // }

//   DropdownMenuThemeData asDropdownMenuThemeData({String? styleTypeName}) {
//     return DropdownMenuThemeData(
//       textStyle: textStyle_textStyleString
//           ?.toTextStyleModel(styleType: styleTypeName)
//           ?.asTextStyle,
//       inputDecorationTheme:
//           inputDecoration_inputDecoration?.asInputDecorationTheme(),
//       menuStyle: menuStyle_menu?.asMenuStyle(),
//     );
//   }
// }
