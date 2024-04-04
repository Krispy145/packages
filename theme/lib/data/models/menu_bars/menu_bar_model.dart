import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/menus/menu_style_model.dart';

part 'menu_bar_model.freezed.dart';
part 'menu_bar_model.g.dart';

@freezed
class MenuBarModel with _$MenuBarModel {
  const factory MenuBarModel({
    MenuStyleModel? style,
  }) = _MenuBarModel;

  const MenuBarModel._();

  factory MenuBarModel.fromJson(Map<String, dynamic> json) => _$MenuBarModelFromJson(json);

  // static MenuBarModel defaultMenuBarModel() {
  //   return MenuBarModel(
  //     style: MenuModel.defaultMenuModel(),
  //   );
  // }

  MenuBarThemeData asMenuBarThemeData({
    String? styleTypeName,
  }) {
    return MenuBarThemeData(
      style: style?.asMenuStyle(styleTypeName: styleTypeName),
    );
  }
}
