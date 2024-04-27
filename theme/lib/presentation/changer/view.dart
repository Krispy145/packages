import "package:collection/collection.dart";
import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/bool/form_field.dart";
// import 'package:forms/presentation/components/';
import "package:forms/presentation/components/bool/store.dart";
import "package:forms/presentation/components/border_radius/form_field.dart";
import "package:forms/presentation/components/border_radius/store.dart";
import "package:forms/presentation/components/border_side/form_field.dart";
import "package:forms/presentation/components/border_side/store.dart";
import "package:forms/presentation/components/double/form_field.dart";
import "package:forms/presentation/components/double/store.dart";
import "package:forms/presentation/components/duration/form_field.dart";
import "package:forms/presentation/components/duration/store.dart";
import "package:forms/presentation/components/edge_insets/form_field.dart";
import "package:forms/presentation/components/edge_insets/store.dart";
import "package:forms/presentation/components/font/form_field.dart";
import "package:forms/presentation/components/font/store.dart";
import "package:forms/presentation/components/input_border/form_field.dart";
import "package:forms/presentation/components/input_border/store.dart";
import "package:forms/presentation/components/outlined_border/form_field.dart";
import "package:forms/presentation/components/outlined_border/store.dart";
import "package:forms/presentation/components/text/form_field.dart";
import "package:forms/presentation/components/text/store.dart";
import "package:forms/presentation/components/text_style_string/form_field.dart";
import "package:forms/presentation/components/text_style_string/store.dart";
import "package:forms/presentation/components/theme_color_string/form_field.dart";
import "package:forms/presentation/components/theme_color_string/store.dart";
import "package:forms/presentation/maps/view.dart";
import "package:theme/app/app.dart";
import "package:theme/data/models/badges/badge_model.dart";
import "package:theme/data/models/borders/border_radius_model.dart";
import "package:theme/data/models/borders/border_side_model.dart";
import "package:theme/data/models/borders/input_border_model.dart";
import "package:theme/data/models/borders/outlined_border_model.dart";
import "package:theme/data/models/borders/shape_border_model.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:theme/data/models/general/duration_model.dart";
import "package:theme/extensions/text_style_string.dart";
import "package:theme/extensions/theme_color_string.dart";
import "package:theme/utils/loggers.dart";
import "package:utilities/logger/logger.dart";

class ThemeComponentEditor extends FormsMapView {
  const ThemeComponentEditor({
    super.key,
    required super.store,
    required this.title,
    this.headerBuilder,
  });

  final String title;
  final Widget Function(BuildContext)? headerBuilder;

  @override
  Widget buildHeader(BuildContext context) {
    return Center(
      child: Observer(
        builder: (context) {
          return Theme(
            data: AppTheme.currentTheme,
            child: headerBuilder != null ? headerBuilder!(context) : Text(title, style: Theme.of(context).textTheme.titleLarge),
          );
        },
      ),
    );
  }

  @override
  Widget? buildValueEditor(
    BuildContext context,
    dynamic value,
    List<String> keys,
    void Function(List<String> keys, dynamic value) onChanged,
  ) {
    final currentKey = keys.last;
    if (!currentKey.contains("_")) {
      AppLogger.print(
        "$currentKey doesn't have _ format",
        [ThemeLoggers.changer],
        type: LoggerType.error,
      );
      return null;
    }
    final formattedKey = currentKey.substring(0, currentKey.indexOf("_"));
    final valueType = currentKey.substring(currentKey.indexOf("_"));

    if (valueType.startsWith("_enum")) {
      final enumName = currentKey.substring(currentKey.indexOf("_enum") + 6);
      final enumProperties = enumComponentProperties.firstWhereOrNull((element) => element.name == enumName);
      if (enumProperties == null) {
        AppLogger.print(
          "$enumName not found (enum)",
          [ThemeLoggers.changer],
          type: LoggerType.error,
        );
        return null;
      }
      final enumInitialValue = enumProperties.values.firstWhereOrNull((element) => element.name == value as String?);
      return DropdownButton(
        value: enumInitialValue,
        onChanged: (newValue) => onChanged(keys, newValue?.name),
        items: enumProperties.values
            .map(
              (enumValue) => DropdownMenuItem<Enum>(
                value: enumValue,
                child: Text(enumValue.name),
              ),
            )
            .toList(),
      );
    }

    switch (valueType) {
      case "_double":
        final store = DoubleFormFieldStore(
          value: value as double?,
          onValueChanged: (newValue) => onChanged(keys, newValue),
          increment: 0.1,
          title: formattedKey,
        );
        return DoubleFormField(store: store);
      case "_int":
        final store = DoubleFormFieldStore(
          value: value as double?,
          onValueChanged: (newValue) => onChanged(keys, newValue),
          title: formattedKey,
        );
        return DoubleFormField(store: store);
      case "_bool":
        final store = BoolFormFieldStore(
          value: value as bool?,
          onValueChanged: (newValue) => onChanged(keys, newValue),
          title: formattedKey,
        );
        return BoolFormField(store: store);
      case "_string":
        final store = TextFormFieldStore(
          value: value as String?,
          onValueChanged: (newValue) => onChanged(keys, newValue),
          title: keys.last,
        );
        return DOTextFormField(
          store: store,
        );
      case "_edgeInsets":
        final store = EdgeInsetsFormFieldStore(
          value: value != null ? EdgeInsetsModel.fromJson(value as Map<String, dynamic>) : const EdgeInsetsModel(),
          onValueChanged: (newValue) => onChanged(keys, newValue.toJson()),
          title: formattedKey,
        );
        return EdgeInsetsFormField(store: store);
      case "_themeColorString":
        final store = ThemeColorStringFormFieldStore(
          value: value as ThemeColorString?,
          onValueChanged: (newValue) {
            onChanged(keys, newValue);
          },
          title: formattedKey,
        );
        return ThemeColorStringFormField(store: store);
      case "_font":
        final store = FontFormFieldStore(
          value: value as String?,
          onValueChanged: (newValue) => onChanged(keys, newValue),
          title: formattedKey,
        );
        return FontFormField(store: store);

      case "_textStyleString":
        final store = TextStyleStringFormFieldStore(
          value: value as TextStyleString?,
          onValueChanged: (newValue) => onChanged(keys, newValue),
          title: formattedKey,
        );
        return TextStyleStringFormField(store: store);
      case "_borderSide":
        final store = BorderSideFormFieldStore(
          value: value != null ? BorderSideModel.fromJson(value as Map<String, dynamic>) : const BorderSideModel(),
          onValueChanged: (newValue) => onChanged(keys, newValue.toJson()),
          title: formattedKey,
        );
        return BorderSideFormField(store: store);
      case "_borderRadius":
        final store = BorderRadiusFormFieldStore(
          onValueChanged: (newValue) => onChanged(keys, newValue.toJson()),
          value: BorderRadiusModel.fromJson(value as Map<String, dynamic>? ?? {}),
          title: formattedKey,
        );
        return BorderRadiusFormField(store: store);

      case "_outlinedBorder":
        final store = OutlinedBorderFormFieldStore(
          value: value != null ? OutlinedBorderModel.fromJson(value as Map<String, dynamic>) : const OutlinedBorderModel(),
          onValueChanged: (newValue) => onChanged(keys, newValue.toJson()),
          title: formattedKey,
        );
        return OutlinedBorderFormField(store: store);
      case "_inputBorder":
        final store = InputBorderFormFieldStore(
          value: value != null ? InputBorderModel.fromJson(value as Map<String, dynamic>) : const InputBorderModel(),
          onValueChanged: (newValue) => onChanged(keys, newValue.toJson()),
          title: formattedKey,
        );
        return InputBorderFormField(store: store);
      case "_duration":
        final store = DurationFormFieldStore(
          value: value != null ? DurationModel.fromJson(value as Map<String, dynamic>) : const DurationModel(),
          onValueChanged: (newValue) => onChanged(keys, newValue.toJson()),
          title: formattedKey,
        );
        return DurationFormField(store: store);
      default:
        return null;
    }
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
  EnumComponentProperties(
    name: "tabBarIndicatorSize",
    values: TabBarIndicatorSize.values,
  ),
  EnumComponentProperties(name: "tabAlignment", values: TabAlignment.values),
  EnumComponentProperties(
    name: "textCapitalization",
    values: TextCapitalization.values,
  ),
  EnumComponentProperties(
    name: "listTileTitleAlignment",
    values: ListTileTitleAlignment.values,
  ),
  EnumComponentProperties(
    name: "navigationRailLabelType",
    values: NavigationRailLabelType.values,
  ),
  EnumComponentProperties(
    name: "tooltipTriggerMode",
    values: TooltipTriggerMode.values,
  ),
  EnumComponentProperties(
    name: "showValueIndicator",
    values: ShowValueIndicator.values,
  ),
  EnumComponentProperties(
    name: "sliderInteraction",
    values: SliderInteraction.values,
  ),
  EnumComponentProperties(
    name: "snackBarBehavior",
    values: SnackBarBehavior.values,
  ),
  EnumComponentProperties(
    name: "borderRadiusType",
    values: BorderRadiusType.values,
  ),
  EnumComponentProperties(
    name: "inputBorderType",
    values: InputBorderType.values,
  ),
  EnumComponentProperties(
    name: "outlinedBorderType",
    values: OutlinedBorderType.values,
  ),
  EnumComponentProperties(
    name: "shapeBorderType",
    values: ShapeBorderType.values,
  ),
  EnumComponentProperties(name: "borderStyle", values: BorderStyle.values),
  EnumComponentProperties(
    name: "materialTapTargetSize",
    values: MaterialTapTargetSize.values,
  ),
  EnumComponentProperties(name: "materialType", values: MaterialType.values),
  EnumComponentProperties(
    name: "navigationDestinationLabelConverter",
    values: NavigationDestinationLabelBehavior.values,
  ),
  EnumComponentProperties(
    name: "alignmentOptions",
    values: AlignmentOptions.values,
  ),
];
