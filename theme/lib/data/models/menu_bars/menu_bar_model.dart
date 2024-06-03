import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/material.dart";
import "package:theme/data/models/menus/menu_style_model.dart";

part "menu_bar_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class MenuBarModel with MenuBarModelMappable {
  final MenuStyleModel? style;

  const MenuBarModel({
    this.style,
  });

  static const fromMap = MenuBarModelMapper.fromMap;
  static const fromJson = MenuBarModelMapper.fromJson;

  MenuBarThemeData asMenuBarThemeData({
    String? styleTypeName,
  }) {
    return MenuBarThemeData(
      style: style?.asMenuStyle(styleTypeName: styleTypeName),
    );
  }

  // static const empty = MenuBarModel(id: "");

  // static const menuBarOne = MenuBarModel(
  // id: "menuBarOneId",
  // name: "{{name.titleCase()}} One",
  // );

  // static const menuBarTwo = MenuBarModel(
  // id: "menuBarTwoId",
  // name: "{{name.titleCase()}} Two",
  // );

  // static const menuBarThree = MenuBarModel(
  // id: "menuBarThreeId",
  // name: "{{name.titleCase()}} Three",
  // );

  // static final List<MenuBarModel> fakeData = [
  // menuBarOne,
  // menuBarTwo,
  // menuBarThree,
  // ];
}

// part "menu_bar_model.freezed.dart";
// part "menu_bar_model.g.dart";

// @freezed
// class MenuBarModel with _$MenuBarModel {
//   const factory MenuBarModel({
//     MenuStyleModel? style,
//   }) = _MenuBarModel;

//   const MenuBarModel._();

//   factory MenuBarModel.fromJson(Map<String, dynamic> json) =>
//       _$MenuBarModelFromJson(json);

//   // static MenuBarModel defaultMenuBarModel() {
//   //   return MenuBarModel(
//   //     style: MenuModel.defaultMenuModel(),
//   //   );
//   // }

//   MenuBarThemeData asMenuBarThemeData({
//     String? styleTypeName,
//   }) {
//     return MenuBarThemeData(
//       style: style?.asMenuStyle(styleTypeName: styleTypeName),
//     );
//   }
// }
