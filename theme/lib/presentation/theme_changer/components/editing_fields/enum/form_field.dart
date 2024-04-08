import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/enum/store.dart';

class EnumFormField extends StatelessWidget {
  const EnumFormField({super.key, required this.store});

  final EnumFormFieldStore store;

  double get doubleFormFieldWidth => 180;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (store.value != null)
              DropdownButton(
                value: store.value,
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
