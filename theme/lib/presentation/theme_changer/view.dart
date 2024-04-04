import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:theme/data/models/borders/border_radius_model.dart';
import 'package:theme/data/models/borders/input_border_model.dart';
import 'package:theme/data/models/borders/outlined_border_model.dart';
import 'package:theme/data/models/borders/shape_border_model.dart';
import 'package:theme/domain/converters/edge_insets/edge_insets.dart';
import 'package:theme/extensions/text_style_string.dart';
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
    return Text(title, style: Theme.of(context).textTheme.titleLarge);
  }

  @override
  Widget? buildValueEditor(BuildContext context, dynamic value, List<String> keys, void Function(List<String> keys, dynamic value) onChanged) {
    final currentKey = keys.last;
    if (!currentKey.contains('_')) {
      AppLogger.print("$currentKey doesn't have _ format", [PackageFeatures.theme], type: LoggerType.error);
      return null;
    }
    final valueType = currentKey.substring(currentKey.indexOf('_'));

    if (valueType.startsWith("_enum")) {
      final enumName = currentKey.substring(currentKey.indexOf('_enum') + 6);
      final enumProperties = enumComponentProperties.firstWhereOrNull((element) => element.name == enumName);
      if (enumProperties == null) {
        AppLogger.print("$enumName not found (enum)", [PackageFeatures.theme], type: LoggerType.error);
        return null;
      }
      final enumInitalValue = enumProperties.values.firstWhereOrNull((element) => element.name == value as String?);
      return DropdownButton(
        value: enumInitalValue,
        onChanged: (newValue) => onChanged(keys, newValue?.name),
        items: enumProperties.values.map((enumValue) => DropdownMenuItem<Enum>(value: enumValue, child: Text(enumValue.name))).toList(),
      );
    }

    switch (valueType) {
      case "_double":
        return DoubleFormField(
          initialValue: value as double?,
          increment: 0.1,
          onChanged: (newValue) => onChanged(keys, newValue),
        );
      case "_int":
        // TODO: Figure out how to handle ints better
        return DoubleFormField(
          initialValue: value as double?,
          increment: 1,
          onChanged: (newValue) => onChanged(keys, newValue),
        );
      case "_bool":
        return BoolFormField(
          initialValue: value as bool?,
          onChanged: (newValue) => onChanged(keys, newValue),
        );
      case "_string":
        return TextFormField(
          initialValue: value as String?,
          onChanged: (newValue) => onChanged(keys, newValue),
        );
      case "_edgeInsets":
        return EdgeInsetsFormField(
          initialValue: const EdgeInsetsConverter().fromJson(value),
          onChanged: (newValue) => onChanged(keys, const EdgeInsetsConverter().toJson(newValue)),
        );
      case "_color":
        return ThemeColorFormField(
          initialValue: value as String?,
          onChanged: (newValue) => onChanged(keys, newValue),
        );
      case "_textStyle":
        return TextStyleFormField(
          initialValue: value as TextStyleString?,
          onChanged: (newValue) => onChanged(keys, newValue),
        );
      case "_size":
      case "_boxConstraints":
      case "_borderSide":
      case "_shapeBorder":
      case "_outlinedBorder":
      case "_inputBorder":
      default:
        return null;
    }

    // if (keys.last.toLowerCase().contains("textstyle") && value is String?) {
    //   // Working
    //   return TextStyleFormField(
    //     initialValue: value,
    //     onChanged: (newValue) => onChanged(keys, newValue),
    //   );
    // } else if (value is double) {
    //   // Working
    //   return DoubleFormField(
    //     initialValue: value,
    //     increment: 1,
    //     onChanged: (newValue) => onChanged(keys, newValue),
    //   );
    // } else if (value is bool) {
    //   // Resetting on click
    //   return BoolFormField(
    //     initialValue: value,
    //     onChanged: (newValue) => onChanged(keys, newValue),
    //   );
    // } else if (keys.last.toLowerCase().contains("color") && value is String?) {
    //   // Not working
    //   return ThemeColorFormField(
    //     initialValue: value,
    //     onChanged: (newValue) => onChanged(keys, newValue),
    //   );
    // } else if (keys.last.toLowerCase().contains("padding") || keys.last.toLowerCase().contains("margin")) {
    //   //
    //   return EdgeInsetsFormField(
    //     initialValue: const EdgeInsetsConverter().fromJson(value),
    //     onChanged: (newValue) => onChanged(keys, const EdgeInsetsConverter().toJson(newValue)),
    //   );
    // } else if (value is String) {
    //   // Enums not matching right :'(
    //   for (final element in enumComponentProperties) {
    //     if (element.values.map((e) => e.name).contains(value)) {
    //       // if ((keys.last == 'type' && element.keyMatcher(keys[keys.length - 2])) || element.keyMatcher(keys.last) || element.values.map((e) => e.name).contains(value)) {
    //       AppLogger.print("ENUM: Found a match for ${element.name} -> $keys", [PackageFeatures.theme]);
    //       return DropdownButton(
    //         value: element.values.firstWhere((element) => element.toString().toLowerCase() == value.toLowerCase()),
    //         onChanged: (newValue) => onChanged(keys, newValue.toString()),
    //         items: element.values.map((e) => DropdownMenuItem<Enum>(value: e, child: Text(e.toString()))).toList(),
    //       );
    //     }
    //   }
    //   // AppLogger.print("NOT ENUM: Found a match for -> $keys", [PackageFeatures.theme]);
    //   return TextFormField(
    //     initialValue: value,
    //     onChanged: (newValue) => onChanged(keys, newValue),
    //   );
    // }
  }
}

class EnumComponentProperties {
  final String name;
  final List<Enum> values;

  EnumComponentProperties({
    required this.name,
    required this.values,
  });
}

final List<EnumComponentProperties> enumComponentProperties = [
  EnumComponentProperties(name: "fontStyle", values: FontStyle.values),
  EnumComponentProperties(name: "boxShape", values: BoxShape.values),
  EnumComponentProperties(name: "textAlign", values: TextAlign.values),
  EnumComponentProperties(name: "tabBarIndicatorSize", values: TabBarIndicatorSize.values),
  EnumComponentProperties(name: "tabAlignment", values: TabAlignment.values),
  EnumComponentProperties(name: "textCapitalization", values: TextCapitalization.values),
  EnumComponentProperties(name: "listTileTitleAlignment", values: ListTileTitleAlignment.values),
  EnumComponentProperties(name: "navigationRailLabelType", values: NavigationRailLabelType.values),
  EnumComponentProperties(name: "tooltipTriggerMode", values: TooltipTriggerMode.values),
  EnumComponentProperties(name: "showValueIndicator", values: ShowValueIndicator.values),
  EnumComponentProperties(name: "sliderInteraction", values: SliderInteraction.values),
  EnumComponentProperties(name: "snackBarBehavior", values: SnackBarBehavior.values),
  EnumComponentProperties(name: "borderRadiusType", values: BorderRadiusType.values),
  EnumComponentProperties(name: "inputBorderType", values: InputBorderType.values),
  EnumComponentProperties(name: "outlinedBorderType", values: OutlinedBorderType.values),
  EnumComponentProperties(name: "shapeBorderType", values: ShapeBorderType.values),
];
