import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:theme/app/app_theme.dart';
import 'package:theme/extensions/theme_color_string.dart';
import 'package:theme/presentation/theme_changer/components/color_circle.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/theme_color_string/store.dart';
import 'package:utilities/logger/logger.dart';
import 'package:utilities/sizes/spacers.dart';

class ThemeColorStringFormField extends StatelessWidget {
  const ThemeColorStringFormField({super.key, required this.store});

  final ThemeColorStringFormFieldStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ColorCircle(
              color: store.value?.toColor() ?? Colors.transparent,
              label: store.value ?? "None",
            ),
            Sizes.m.spacer(),
            SizedBox(
              height: 60,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: AppTheme.currentColorModel!.toJson().entries.map((entry) {
                    final colorName = entry.key;
                    return InkWell(
                      onTap: () {
                        store.value = colorName;
                        AppLogger.print("Calling onChanged with ${store.value}", [PackageFeatures.theme]);
                      },
                      child: SizedBox(
                        height: 60,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ColorCircle(color: colorName.toColor() ?? Colors.transparent),
                            Text(
                              colorName,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
