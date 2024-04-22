import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../base/form_field.dart';
import 'store.dart';

class EnumFormField extends BaseFormField<EnumFormFieldStore> {
  const EnumFormField({super.key, required super.store});

  double get doubleFormFieldWidth => 180;

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (store.value != null)
              DropdownButton(
                value: store.value,
                alignment: Alignment.bottomCenter,
                onChanged: (newValue) => store.value = newValue,
                items: store.options.map((enumValue) => DropdownMenuItem<Enum>(value: enumValue, child: Text(enumValue.name))).toList(),
              ),
            if (store.value != null)
              FilledButton(
                child: const Text("Clear Value"),
                onPressed: () => store.value = null,
              ),
          ],
        );
      },
    );
  }
}
