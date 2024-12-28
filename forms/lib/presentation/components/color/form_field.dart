import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:theme/domain/converters/colors/color.dart";
import "package:theme/extensions/build_context.dart";
import "package:theme/presentation/components/colors/view.dart";
import "package:utilities/sizes/spacers.dart";

import "color_circle.dart";
import "store.dart";

/// [ColorFormField] to change color scheme colors for the theme.
class ColorFormField extends BaseFormField<ColorFormFieldStore> {
  final void Function(Color changedColor)? onDone;

  /// [ColorFormField] constructor.
  ColorFormField({
    super.key,
    required super.showTitle,
    required super.store,
    this.onDone,
  });

  @override
  Widget buildField(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Observer(
        builder: (context) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ColorCircle(
                  color: store.color,
                  label: store.title,
                  onTap: () => _openModalSheetForColorSelection(context, store),
                ),
                Sizes.m.spacer(),
                _ThemeColorStringSlider(
                  label: "Red",
                  value: store.color.red.toDouble(),
                  onChanged: (red) => store.updateColor(red: red),
                  fixedColor: Colors.red,
                  max: 255,
                ),
                _ThemeColorStringSlider(
                  label: "Green",
                  value: store.color.green.toDouble(),
                  onChanged: (green) => store.updateColor(green: green),
                  fixedColor: Colors.green,
                  max: 255,
                ),
                _ThemeColorStringSlider(
                  label: "Blue",
                  value: store.color.blue.toDouble(),
                  onChanged: (blue) => store.updateColor(blue: blue),
                  fixedColor: Colors.blue,
                  max: 255,
                ),
                _ThemeColorStringSlider(
                  label: "Opacity",
                  value: store.color.opacity,
                  onChanged: (opacity) => store.updateColor(opacity: opacity),
                  fixedColor: Colors.black.withValues(alpha: store.color.opacity),
                  max: 1,
                ),
                ElevatedButton(
                  onPressed: () {
                    store.onDone();
                    onDone?.call(store.color);
                  },
                  child: const Text("Apply"),
                ),
                Sizes.m.spacer(),
              ],
            ),
          );
        },
      ),
    );
  }

  void _openModalSheetForColorSelection(BuildContext context, ColorFormFieldStore store) {
    showModalBottomSheet<void>(
      context: context,
      builder: (context) {
        return ColorModelView(
          showPalette: true,
          onPaletteColorSelected: (color) {
            store.updateColor(
              red: color.red.toDouble(),
              green: color.green.toDouble(),
              blue: color.blue.toDouble(),
              opacity: color.opacity,
            );
            Navigator.of(context).pop();
          },
          onColorSelected: (e) {
            final color = const ColorMapper().decode(e.value);
            store.updateColor(
              red: color.red.toDouble(),
              green: color.green.toDouble(),
              blue: color.blue.toDouble(),
              opacity: color.opacity,
            );
            Navigator.of(context).pop();
          },
        );
      },
    );
  }
}

class _ThemeColorStringSlider extends StatelessWidget {
  final String label;
  final double value;
  final ValueChanged<double> onChanged;
  final Color fixedColor;
  final double max;

  _ThemeColorStringSlider({
    required this.label,
    required this.value,
    required this.onChanged,
    required this.fixedColor,
    required this.max,
  });

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Slider(
            max: max,
            activeColor: fixedColor,
            value: value,
            label: value.toString(),
            onChanged: onChanged,
          ),
          Sizes.s.spacer(),
          SizedBox(
            width: 100,
            height: 32,
            child: TextField(
              controller: _controller..text = value.toString(),
              style: TextStyle(color: context.colorScheme.onPrimary),
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: label,
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp("[0-9.]")),
              ],
              onSubmitted: (value) {
                final doubleValue = double.parse(value);
                if (doubleValue >= 0 && doubleValue <= max) {
                  onChanged(doubleValue);
                }
              },
            ),
          ),
          Sizes.xl.spacer(),
        ],
      ),
    );
  }
}
