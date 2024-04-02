import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:theme/data/models/buttons/button_style_model.dart';
import 'package:theme/data/models/buttons/floating_action_button_model.dart';
import 'package:theme/data/models/buttons/toggle_button_model.dart';

part 'button_styles.freezed.dart';
part 'button_styles.g.dart';

enum ButtonStyleModelType {
  elevated,
  outlined,
  text,
  toggle,
  icon,
  filled,
  floating,
  menu,
  segmented,
}

// @unfreezed
// class ButtonStyles with _$ButtonStyles {
//   factory ButtonStyles({
//     Map<String, ButtonStyleModel>? elevated,
//     Map<String, ButtonStyleModel>? outlined,
//     Map<String, ButtonStyleModel>? text,
//     Map<String, ButtonStyleModel>? icon,
//     Map<String, ButtonStyleModel>? filled,
//     Map<String, ButtonStyleModel>? menu,
//     Map<String, ButtonStyleModel>? segmented,
//     Map<String, FloatingActionButtonModel>? floatingAction,
//     Map<String, ToggleButtonModel>? toggle,
//   }) = _ButtonStyles;
//   ButtonStyles._();

//   factory ButtonStyles.fromJson(Map<String, dynamic> json) => _$ButtonStylesFromJson(json);

//   ThemeData toThemeData(String type) {
//     return ThemeData(
//       elevatedButtonTheme: (elevated?[type] ?? elevated?[primaryStyle])?.toElevatedButtonThemeData(),
//       outlinedButtonTheme: (outlined?[type] ?? outlined?[primaryStyle])?.toOutlinedButtonThemeData(),
//       textButtonTheme: (text?[type] ?? text?[primaryStyle])?.toTextButtonThemeData(),
//       iconButtonTheme: (icon?[type] ?? icon?[primaryStyle])?.toIconButtonThemeData(),
//       filledButtonTheme: (filled?[type] ?? filled?[primaryStyle])?.toFilledButtonThemeData(),
//       menuButtonTheme: (menu?[type] ?? menu?[primaryStyle])?.toMenuButtonThemeData(),
//       segmentedButtonTheme: (segmented?[type] ?? segmented?[primaryStyle])?.toSegmentedButtonThemeData(),
//       toggleButtonsTheme: (toggle?[type] ?? toggle?[primaryStyle])?.asToggleButtonThemeData(),
//       floatingActionButtonTheme: (floatingAction?[type] ?? floatingAction?[primaryStyle])?.asFloatingActionButtonThemeData(),
//     );
//   }

//   static ButtonStyles defaultButtonStyles() {
//     return ButtonStyles(
//       elevated: {
//         primaryStyle: ButtonStyleModel(),
//       },
//       outlined: {
//         primaryStyle: ButtonStyleModel(),
//       },
//       text: {
//         primaryStyle: ButtonStyleModel(),
//       },
//       icon: {
//         primaryStyle: ButtonStyleModel(),
//       },
//       filled: {
//         primaryStyle: ButtonStyleModel(),
//       },
//       menu: {
//         primaryStyle: ButtonStyleModel(),
//       },
//       segmented: {
//         primaryStyle: ButtonStyleModel(),
//       },
//       floatingAction: {
//         primaryStyle: FloatingActionButtonModel.defaultFloatingActionButtonStyle(),
//       },
//       toggle: {
//         primaryStyle: ToggleButtonModel.defaultToggleButtonStyle(),
//       },
//     );
//   }
// }
