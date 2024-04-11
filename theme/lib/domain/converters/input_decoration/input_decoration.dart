// import 'package:flutter/material.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:theme/data/models/borders/input_border_model.dart';
// import 'package:theme/domain/converters/colors/color.dart';
// import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
// import 'package:theme/domain/converters/input_border/input_border.dart';
// import 'package:utilities/logger/logger.dart';

// class InputDecorationConverter implements JsonConverter<InputDecoration?, Map<String, dynamic>?> {
//   const InputDecorationConverter();

//   /// This example shows how to use the [InputDecorationConverter]:
//   InputDecoration? example() {
//     final json = const InputDecorationConverter().toJson(
//       const InputDecoration(
//         labelText: 'labelText',
//         helperText: 'helperText',
//         helperMaxLines: 1,
//         hintText: 'hintText',
//         hintMaxLines: 1,
//         errorText: 'errorText',
//         errorMaxLines: 1,
//         isCollapsed: true,
//         isDense: true,
//         contentPadding: EdgeInsets.all(10),
//         prefixText: 'prefixText',
//         suffixText: 'suffixText',
//         counterText: 'counterText',
//         filled: true,
//         fillColor: Colors.red,
//         focusColor: Colors.red,
//         hoverColor: Colors.red,
//         errorBorder: UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.red),
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//         ),
//         focusedBorder: UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.blue),
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//         ),
//         focusedErrorBorder: UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.redAccent),
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//         ),
//         disabledBorder: UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.grey),
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//         ),
//         enabledBorder: UnderlineInputBorder(
//           borderSide: BorderSide(color: Colors.green),
//           borderRadius: BorderRadius.all(Radius.circular(10)),
//         ),
//         border: UnderlineInputBorder(),
//         semanticCounterText: 'semanticCounterText',
//         alignLabelWithHint: true,
//       ),
//     );
//     final inputDecoration = const InputDecorationConverter().fromJson(json);
//     AppLogger.print("INPUT-DECORATION fromJson -> $inputDecoration", [ThemePackageLoggers.converters]);
//     AppLogger.print("INPUT-DECORATION toJson -> $json", [ThemePackageLoggers.converters]);
//     return inputDecoration;
//   }

//   @override
//   InputDecoration? fromJson(dynamic json) {
//     if (json == null) {
//       return null;
//     }
//     return InputDecoration(
//       labelText: json['labelText'] as String?,
//       helperText: json['helperText'] as String?,
//       helperMaxLines: json['helperMaxLines'] as int?,
//       hintText: json['hintText'] as String?,
//       hintMaxLines: json['hintMaxLines'] as int?,
//       errorText: json['errorText'] as String?,
//       errorMaxLines: json['errorMaxLines'] as int?,
//       isCollapsed: json['isCollapsed'] as bool?,
//       isDense: json['isDense'] as bool?,
//       contentPadding: json['contentPadding'] == null ? null : const EdgeInsetsConverter().fromJson(json['contentPadding']),
//       prefixText: json['prefixText'] as String?,
//       suffixText: json['suffixText'] as String?,
//       counterText: json['counterText'] as String?,
//       filled: json['filled'] as bool?,
//       fillColor: json['fillColor'] == null ? null : const ColorConverter().fromJson(json['fillColor']),
//       focusColor: json['focusColor'] == null ? null : const ColorConverter().fromJson(json['focusColor']),
//       hoverColor: json['hoverColor'] == null ? null : const ColorConverter().fromJson(json['hoverColor']),
//       // errorBorder: json['errorBorder'] == null ? null : const InputBorderConverter().fromJson(json['errorBorder']),
//       // focusedBorder: json['focusedBorder'] == null ? null : const InputBorderConverter().fromJson(json['focusedBorder']),
//       // focusedErrorBorder: json['focusedErrorBorder'] == null ? null : const InputBorderConverter().fromJson(json['focusedErrorBorder']),
//       // disabledBorder: json['disabledBorder'] == null ? null : const InputBorderConverter().fromJson(json['disabledBorder']),
//       // enabledBorder: json['enabledBorder'] == null ? null : const InputBorderConverter().fromJson(json['enabledBorder']),
//       // border: json['border'] == null ? null : const InputBorderConverter().fromJson(json['border']),
//       border: json['border'] == null ? null : InputBorderModel.fromJson(json['border'] as Map<String, dynamic>).asInputBorder(),
//       errorBorder: json['errorBorder'] == null ? null : InputBorderModel.fromJson(json['errorBorder'] as Map<String, dynamic>).asInputBorder(),
//       focusedBorder: json['focusedBorder'] == null ? null : InputBorderModel.fromJson(json['focusedBorder'] as Map<String, dynamic>).asInputBorder(),
//       focusedErrorBorder: json['focusedErrorBorder'] == null ? null : InputBorderModel.fromJson(json['focusedErrorBorder'] as Map<String, dynamic>).asInputBorder(),
//       disabledBorder: json['disabledBorder'] == null ? null : InputBorderModel.fromJson(json['disabledBorder'] as Map<String, dynamic>).asInputBorder(),
//       enabledBorder: json['enabledBorder'] == null ? null : InputBorderModel.fromJson(json['enabledBorder'] as Map<String, dynamic>).asInputBorder(),
//       enabled: json['enabled'] as bool? ?? true,
//       semanticCounterText: json['semanticCounterText'] as String?,
//       alignLabelWithHint: json['alignLabelWithHint'] as bool?,
//     );
//   }

//   @override
//   Map<String, dynamic>? toJson(InputDecoration? instance) {
//     if (instance == null) {
//       return null;
//     }
//     final map = <String, dynamic>{};
//     if (instance.labelText != null) {
//       map['labelText'] = instance.labelText;
//     }
//     if (instance.helperText != null) {
//       map['helperText'] = instance.helperText;
//     }
//     if (instance.helperMaxLines != null) {
//       map['helperMaxLines'] = instance.helperMaxLines;
//     }
//     if (instance.hintText != null) {
//       map['hintText'] = instance.hintText;
//     }
//     if (instance.hintMaxLines != null) {
//       map['hintMaxLines'] = instance.hintMaxLines;
//     }
//     if (instance.errorText != null) {
//       map['errorText'] = instance.errorText;
//     }
//     if (instance.errorMaxLines != null) {
//       map['errorMaxLines'] = instance.errorMaxLines;
//     }
//     if (instance.isCollapsed != null) {
//       map['isCollapsed'] = instance.isCollapsed;
//     }
//     if (instance.isDense != null) {
//       map['isDense'] = instance.isDense;
//     }
//     if (instance.contentPadding != null) {
//       map['contentPadding'] = const EdgeInsetsConverter().toJson(instance.contentPadding?.resolve(TextDirection.ltr));
//     }
//     if (instance.prefixText != null) {
//       map['prefixText'] = instance.prefixText;
//     }
//     if (instance.suffixText != null) {
//       map['suffixText'] = instance.suffixText;
//     }
//     if (instance.counterText != null) {
//       map['counterText'] = instance.counterText;
//     }
//     if (instance.filled != null) {
//       map['filled'] = instance.filled;
//     }
//     if (instance.fillColor != null) {
//       map['fillColor'] = const ColorConverter().toJson(instance.fillColor);
//     }
//     if (instance.focusColor != null) {
//       map['focusColor'] = const ColorConverter().toJson(instance.focusColor);
//     }
//     if (instance.hoverColor != null) {
//       map['hoverColor'] = const ColorConverter().toJson(instance.hoverColor);
//     }
//     if (instance.errorBorder != InputBorder.none) {
//       map['errorBorder'] = const InputBorderConverter().toJson(instance.errorBorder);
//     }
//     if (instance.focusedBorder != InputBorder.none) {
//       map['focusedBorder'] = const InputBorderConverter().toJson(instance.focusedBorder);
//     }
//     if (instance.focusedErrorBorder != InputBorder.none) {
//       map['focusedErrorBorder'] = const InputBorderConverter().toJson(instance.focusedErrorBorder);
//     }
//     if (instance.disabledBorder != InputBorder.none) {
//       map['disabledBorder'] = const InputBorderConverter().toJson(instance.disabledBorder);
//     }
//     if (instance.enabledBorder != InputBorder.none) {
//       map['enabledBorder'] = const InputBorderConverter().toJson(instance.enabledBorder);
//     }
//     if (instance.border != InputBorder.none) {
//       map['border'] = const InputBorderConverter().toJson(instance.border);
//     }
//     map['enabled'] = instance.enabled;
//     if (instance.semanticCounterText != null) {
//       map['semanticCounterText'] = instance.semanticCounterText;
//     }
//     if (instance.alignLabelWithHint != null) {
//       map['alignLabelWithHint'] = instance.alignLabelWithHint;
//     }
//     return map.isNotEmpty ? map : null;
//   }
// }
