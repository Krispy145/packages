// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/domain/models/colors/color_schemes.dart';
// import 'package:theme/domain/models/types.dart';

// part 'color_styles.freezed.dart';
// part 'color_styles.g.dart';

// @freezed
// class ColorStyles with _$ColorStyles {
//   const ColorStyles._();
//   const factory ColorStyles({
//     required ColorSchemes primary,
//     ColorSchemes? secondary,
//     ColorSchemes? tertiary,
//   }) = _themeColorStringStyles;

//   factory ColorStyles.fromJson(Map<String, dynamic> json) => _$ColorStylesFromJson(json);

//   ColorSchemes styleModelFromType({required StyleType type}) {
//     switch (type) {
//       case StyleType.primary:
//         return primary;
//       case StyleType.secondary:
//         return secondary ?? primary;
//       case StyleType.tertiary:
//         return tertiary ?? primary;
//     }
//   }

//   static ColorStyles defaultStyles() {
//     return ColorStyles(
//       primary: ColorSchemes.defaultSchemes(),
//       secondary: ColorSchemes.defaultSchemes(),
//       tertiary: ColorSchemes.defaultSchemes(),
//     );
//   }
// }
