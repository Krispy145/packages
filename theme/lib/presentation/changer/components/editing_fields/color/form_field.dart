import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:theme/presentation/changer/components/color_circle.dart';
import 'package:theme/presentation/changer/components/editing_fields/color/store.dart';
import 'package:utilities/sizes/spacers.dart';

/// [ColorFormField] to change color scheme colors for the theme.
class ColorFormField extends StatelessWidget {
  /// [ColorFormFieldStore] instance.
  final ColorFormFieldStore store;

  /// [ColorFormField] constructor.
  const ColorFormField({
    super.key,
    required this.store,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Observer(
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ColorCircle(
                color: store.color,
                label: store.title,
              ),
              Sizes.m.spacer(),
              _ThemeColorStringSlider(
                label: 'Red',
                value: store.color.red.toDouble(),
                onChanged: (red) => store.updateColor(red: red),
                fixedColor: Colors.red,
                max: 255,
              ),
              _ThemeColorStringSlider(
                label: 'Green',
                value: store.color.green.toDouble(),
                onChanged: (green) => store.updateColor(green: green),
                fixedColor: Colors.green,
                max: 255,
              ),
              _ThemeColorStringSlider(
                label: 'Blue',
                value: store.color.blue.toDouble(),
                onChanged: (blue) => store.updateColor(blue: blue),
                fixedColor: Colors.blue,
                max: 255,
              ),
              _ThemeColorStringSlider(
                label: 'Opacity',
                value: store.color.opacity,
                onChanged: (opacity) => store.updateColor(opacity: opacity),
                fixedColor: Colors.black.withOpacity(store.color.opacity),
                max: 1,
              ),
              ElevatedButton(onPressed: store.onDone, child: const Text('Apply')),
              Sizes.m.spacer(),
            ],
          );
        },
      ),
    );
  }
}

class _ThemeColorStringSlider extends StatelessWidget {
  final String label;
  final double value;
  final ValueChanged<double> onChanged;
  final Color fixedColor;
  final double max;

  const _ThemeColorStringSlider({
    required this.label,
    required this.value,
    required this.onChanged,
    required this.fixedColor,
    required this.max,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Slider(
              max: max,
              activeColor: fixedColor,
              value: value,
              label: value.toString(),
              onChanged: onChanged,
            ),
            Text(double.parse(value.toStringAsFixed(2)).toString()), // TODO: Change to better rounding
          ],
        ),
      ],
    );
  }
}
