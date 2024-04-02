// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/popup_menus/popup_menu_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'popup_menu_styles.freezed.dart';
// part 'popup_menu_styles.g.dart';

// @freezed
// class PopupMenuStyles with _$PopupMenuStyles {
//   const PopupMenuStyles._();
//   const factory PopupMenuStyles({
//     required PopupMenuModel primary,
//     PopupMenuModel? secondary,
//     PopupMenuModel? tertiary,
//   }) = _PopupMenuStyles;

//   factory PopupMenuStyles.fromJson(Map<String, dynamic> json) => _$PopupMenuStylesFromJson(json);

//   PopupMenuThemeData toPopupMenuThemeData(StyleType type) {
//     return styleModelFromType(type: type).asPopupMenuThemeData();
//   }

//   PopupMenuModel styleModelFromType({required StyleType type}) {
//     switch (type) {
//       case StyleType.primary:
//         return primary;
//       case StyleType.secondary:
//         return secondary ?? primary;
//       case StyleType.tertiary:
//         return tertiary ?? primary;
//     }
//   }
// }
