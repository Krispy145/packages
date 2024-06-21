import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:fonts/data/do_fonts.dart";
import "package:theme/app/app.dart";
import "package:theme/utils/loggers.dart";
import "package:utilities/logger/logger.dart";

import "../base/form_field.dart";
import "store.dart";

class FontFormField extends BaseFormField<FontFormFieldStore> {
  FontFormField({
    super.key,
    required super.store,
  });

  @override
  Widget buildField(BuildContext context) {
    TextStyle? textStyle;

    try {
      textStyle = AppTheme.fontsStore.getFont(store.value ?? DOFonts.values.first.name);
    } catch (e) {
      AppLogger.print(
        "Get font failed: $e",
        [ThemeLoggers.textStyles],
        type: LoggerType.error,
      );
    }

    return Observer(
      builder: (context) {
        return DropdownMenu<String>(
          expandedInsets: const EdgeInsets.all(8),
          initialSelection: store.value,
          textStyle: textStyle,
          menuStyle: Theme.of(context).menuTheme.style?.copyWith(
                    alignment: Alignment.bottomCenter,
                  ) ??
              const MenuStyle(
                alignment: Alignment.bottomLeft,
              ),
          dropdownMenuEntries: DOFonts.values
              .map(
                (e) => DropdownMenuEntry(
                  value: e.name,
                  label: e.name,
                  style: ButtonStyle(
                    textStyle: MaterialStateProperty.all(
                      AppTheme.fontsStore.getFont(e.name),
                    ),
                  ),
                ),
              )
              .toList(),
          onSelected: (newValue) {
            AppLogger.print(
              "on value changed: $newValue",
              [ThemeLoggers.textStyles],
            );
            store.onValueChanged(newValue);
          },
        );
      },
    );
  }
}
