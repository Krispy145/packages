import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:forms/presentation/components/color/color_circle.dart";
import "package:theme/app/app.dart";
import "package:theme/extensions/theme_color_string.dart";
import "package:theme/utils/loggers.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/sizes/spacers.dart";

import "store.dart";

class ThemeColorStringFormField
    extends BaseFormField<ThemeColorStringFormFieldStore> {
  ThemeColorStringFormField({
    super.key,
    required super.store,
  });

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                ColorCircle(
                  color: store.value?.toColor() ?? Colors.transparent,
                  label: store.value ?? "None",
                ),
                IconButton(
                  color: Colors.black,
                  onPressed: () {
                    store.value = null;
                    AppLogger.print("Clearing color", [ThemeLoggers.colors]);
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
            Sizes.m.spacer(),
            SizedBox(
              height: 60,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children:
                      AppTheme.currentColorModel!.toMap().entries.map((entry) {
                    final colorName = entry.key;
                    return InkWell(
                      onTap: () {
                        store.value = colorName;
                        AppLogger.print(
                          "Calling onChanged with ${store.value}",
                          [ThemeLoggers.colors],
                        );
                      },
                      child: SizedBox(
                        height: 60,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ColorCircle(
                              color: colorName.toColor() ?? Colors.transparent,
                            ),
                            Text(
                              colorName,
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
