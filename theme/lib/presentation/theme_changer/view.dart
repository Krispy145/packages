import 'package:flutter/material.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/bool_form_field.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/double_form_field.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/edge_insets_form_field.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/text_style_form_field.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/theme_color_form_field.dart';
import 'package:theme/presentation/theme_changer/components/editing_map/view.dart';
import 'package:utilities/logger/logger.dart';

class ThemeComponentEditor extends MapEditor {
  const ThemeComponentEditor({
    super.key,
    required super.mapEditorStore,
    required this.title,
    this.headerBuilder,
  });

  final String title;
  final Widget Function(BuildContext)? headerBuilder;

  @override
  Widget buildHeader(BuildContext context) {
    if (headerBuilder != null) {
      return headerBuilder!(context);
    }
    return Text(title.toString(), style: Theme.of(context).textTheme.titleLarge);
  }

  @override
  Widget? buildValueEditor(dynamic value, List<String> keys, Function(List<String> keys, dynamic value) onChanged) {
    if (keys.last.toLowerCase().contains("textstyle")) {
      // Working
      return TextStyleFormField(
        initialValue: value,
        onChanged: (newValue) => onChanged(keys, newValue),
      );
    } else if (value is double) {
      // Working
      return DoubleFormField(
        initialValue: value,
        increment: 1,
        onChanged: (newValue) => onChanged(keys, newValue),
      );
    } else if (value is bool) {
      // Resetting on click
      return BoolFormField(
        initialValue: value,
        onChanged: (newValue) => onChanged(keys, newValue),
      );
    } else if (keys.last.toLowerCase().contains("color")) {
      // Not working
      return ThemeColorFormField(
        initialValue: value,
        onChanged: (newValue) => onChanged(keys, newValue),
      );
    } else if (keys.last.toLowerCase().contains("padding") || keys.last.toLowerCase().contains("margin")) {
      //
      return EdgeInsetsFormField(
        initialValue: const EdgeInsetsConverter().fromJson(value),
        onChanged: (newValue) => onChanged(keys, const EdgeInsetsConverter().toJson(newValue)),
      );
    } else if (value is String) {
      // Enums not matching right :'(
      for (var element in enumComponentProperties) {
        if (element.values.map((e) => e.name).contains(value)) {
          // if ((keys.last == 'type' && element.keyMatcher(keys[keys.length - 2])) || element.keyMatcher(keys.last) || element.values.map((e) => e.name).contains(value)) {
          AppLogger.print("ENUM: Found a match for ${element.name} -> $keys", [PackageFeatures.theme]);
          return DropdownButton(
            value: element.values.firstWhere((element) => element.toString().toLowerCase() == value.toLowerCase()),
            onChanged: (newValue) => onChanged(keys, newValue.toString()),
            items: element.values.map((e) => DropdownMenuItem<Enum>(value: e, child: Text(e.toString()))).toList(),
          );
        }
      }
      // AppLogger.print("NOT ENUM: Found a match for -> $keys", [PackageFeatures.theme]);
      return TextFormField(
        initialValue: value,
        onChanged: (newValue) => onChanged(keys, newValue),
      );
    }
    return null;
  }
}

class EnumComponentProperties<T extends Enum> {
  final String name;
  final List<Enum> values;
  final bool Function(String) keyMatcher;
  final bool Function(String) valueMatcher;

  EnumComponentProperties({
    required this.name,
    required this.values,
    required this.keyMatcher,
    required this.valueMatcher,
  });
}

final List<EnumComponentProperties> enumComponentProperties = [
  EnumComponentProperties(
    name: "Font Style",
    values: FontStyle.values,
    keyMatcher: (String key) => RegExp('[a-z]*font[a-z]*style').hasMatch(key.toLowerCase()),
    valueMatcher: (String value) => FontStyle.values.contains(value),
  ),
  EnumComponentProperties(
    name: "Shape",
    values: BoxShape.values,
    keyMatcher: (String key) => key.toLowerCase().contains('shape'),
    valueMatcher: (String value) => BoxShape.values.contains(value),
  ),
];
