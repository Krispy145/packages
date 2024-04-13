import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fonts/data/do_fonts.dart';
import 'package:theme/app/app.dart';
import 'package:theme/presentation/changer/components/editing_fields/base/form_field.dart';
import 'package:theme/presentation/changer/components/editing_fields/font/store.dart';

class FontFormField extends BaseFormField<FontFormFieldStore> {
  const FontFormField({
    super.key,
    required super.store,
  });

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return DropdownMenu<String>(
          expandedInsets: const EdgeInsets.all(8),
          initialSelection: store.value,
          textStyle: AppTheme.fontsStore.getFont(store.value ?? DOFonts.values.first.name),
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
          onSelected: store.onValueChanged,
        );
      },
    );
  }
}
