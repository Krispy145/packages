import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:theme/changer/components/colors/store.dart';
import 'package:theme/domain/converters/colors/color.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/components/color_circle.dart';
import 'package:utilities/sizes/spacers.dart';

/// [ColorChooser] to change color scheme colors for the theme.
class ColorChooser extends StatelessWidget {
  /// [ColorSchemesStore] instance.
  final ColorSchemesStore store;

  /// [color] to change.
  final Color color;

  /// [label] of the color.
  final String? label;

  /// [onApply] callback.
  final ValueChanged<List<double>> onApply;

  /// [ColorChooser] constructor.
  const ColorChooser({
    super.key,
    required this.store,
    required this.onApply,
    required this.color,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ColorCircle(
              color: const ColorConverter().fromJson(store.selectedColor.value) ?? Colors.transparent,
              label: label,
            ),
            Sizes.m.spacer(),
            _buildSlider(
              label: 'Red',
              value: color.red.toDouble(),
              onChanged: (value) => store.selectedColor = MapEntry(
                store.selectedColor.key,
                [
                  value,
                  color.green.toDouble(),
                  color.blue.toDouble(),
                  color.opacity,
                ],
              ),
              color: Colors.red,
            ),
            _buildSlider(
              label: 'Green',
              value: color.green.toDouble(),
              onChanged: (value) => store.selectedColor = MapEntry(
                store.selectedColor.key,
                [
                  color.red.toDouble(),
                  value,
                  color.blue.toDouble(),
                  color.opacity,
                ],
              ),
              color: Colors.green,
            ),
            _buildSlider(
              label: 'Blue',
              value: color.blue.toDouble(),
              onChanged: (value) => store.selectedColor = MapEntry(
                store.selectedColor.key,
                [
                  color.red.toDouble(),
                  color.green.toDouble(),
                  value,
                  color.opacity,
                ],
              ),
              color: Colors.blue,
            ),
            _buildSlider(
              label: 'Opacity',
              value: color.opacity * 255,
              onChanged: (value) => store.selectedColor = MapEntry(
                store.selectedColor.key,
                [
                  color.red.toDouble(),
                  color.green.toDouble(),
                  color.blue.toDouble(),
                  value / 255,
                ],
              ),
              color: Colors.black.withAlpha(
                color.alpha,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                onApply(
                  store.selectedColor.value as List<double>,
                );
              },
              child: const Text('Apply'),
            ),
            Sizes.m.spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildSlider({
    required String label,
    required double value,
    required ValueChanged<double> onChanged,
    Color? color,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(label),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Slider(
              max: 255,
              activeColor: color,
              value: value,
              label: value.toString(),
              onChanged: onChanged,
            ),
            Text(value.toString()),
          ],
        ),
      ],
    );
  }
}
