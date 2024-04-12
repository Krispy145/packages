import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/base/form_field.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/font/store.dart';

class FontFormField extends BaseFormField<FontFormFieldStore> {
  FontFormField({
    super.key,
    required super.store,
  });

  final exampleFontNames = [
    'Arial',
    'Arial Black',
    'Comic Sans MS',
    'Courier New',
    'Georgia',
    'Impact',
    'Lucida Console',
    'Lucida Sans Unicode',
    'Palatino Linotype',
    'Tahoma',
    'Times New Roman',
    'Trebuchet MS',
    'Verdana',
  ];

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return DropdownMenu<String>(
          expandedInsets: const EdgeInsets.all(8),
          initialSelection: store.value,
          menuStyle: Theme.of(context).menuTheme.style?.copyWith(alignment: Alignment.bottomCenter) ?? const MenuStyle(alignment: Alignment.bottomLeft),
          dropdownMenuEntries: exampleFontNames.map((e) => DropdownMenuEntry(value: e, label: e)).toList(),
          onSelected: (newValue) => store.value = newValue,
        );
      },
    );
  }
}
