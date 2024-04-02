// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/appbars/appbar_model.dart';
// import 'package:theme/domain/models/types.dart';

// part 'appbar_styles.freezed.dart';
// part 'appbar_styles.g.dart';

// @freezed
// class AppbarStyles with _$AppbarStyles {
//   const AppbarStyles._();
//   const factory AppbarStyles({
//     required AppbarModel primary,
//     AppbarModel? secondary,
//     AppbarModel? tertiary,
//   }) = _AppbarStyles;

//   factory AppbarStyles.fromJson(Map<String, dynamic> json) => _$AppbarStylesFromJson(json);

//   AppBarTheme toAppBarTheme(StyleType type) {
//     return styleModelFromType(type: type).asAppBarTheme();
//   }

//   AppbarModel styleModelFromType({required StyleType type}) {
//     switch (type) {
//       case StyleType.primary:
//         return primary;
//       case StyleType.secondary:
//         return secondary ?? primary;
//       case StyleType.tertiary:
//         return tertiary ?? primary;
//     }
//   }

//   static AppbarStyles defaultStyles() {
//     return const AppbarStyles(
//         primary: AppbarModel(
//       elevation: 4,
//       scrolledUnderElevation: 0,
//       titleSpacing: NavigationToolbar.kMiddleSpacing,
//       toolbarHeight: NavigationToolbar.kMiddleSpacing,
//     ));
//   }
// }
