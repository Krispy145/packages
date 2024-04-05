import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/bool/store.dart';

class BoolFormField extends StatelessWidget {
  const BoolFormField({super.key, required this.store});

  final BoolFormFieldStore store;

  double get doubleFormFieldWidth => 180;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (store.value != null)
              Switch(
                value: store.value!,
                onChanged: (newValue) {
                  store.value = newValue;
                },
              ),
            FilledButton(
              child: Text(store.value == null ? "Set Value" : "Clear Value"),
              onPressed: () {
                store.value == null ? store.value = true : store.value = null;
              },
            ),
          ],
        );
      },
    );
  }
}
