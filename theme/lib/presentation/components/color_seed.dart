import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:forms/presentation/components/color/color_circle.dart";
import "package:theme/app/app.dart";
import "package:theme/data/models/colors/color_model.dart";
import "package:theme/extensions/theme_color_string.dart";
import "package:theme/presentation/changer/changer.dart";
import "package:utilities/sizes/spacers.dart";

/// [ColorSeed] of the app.
class ColorSeed extends StatelessWidget {
  /// [ColorSeed] constructor.
  ColorSeed({super.key});

  final Color? _color = AppTheme.currentColorModel?.primary;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ColorCircle(color: _color!),
        Sizes.m.spacer(),
        Row(
          children: [
            const Text("#"),
            SizedBox(
              width: 100,
              height: 48,
              child: TextField(
                onSubmitted: (value) {
                  ThemeChanger.changeCurrentThemeStyle(
                    colorModel:
                        ColorModel.fromSeed(seedColor: "#$value".toColor()!),
                  );
                },
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp("[a-fA-F0-9]")),
                ],
              ),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            ThemeChanger.changeCurrentThemeStyle(
              colorModel: ColorModel.fromSeed(seedColor: _color),
            );
          },
          child: const Text("Change Color"),
        ),
      ],
    );
  }
}
