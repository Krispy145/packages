import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "../base/form_field.dart";
import "store.dart";

class BoolFormField extends BaseFormField<BoolFormFieldStore> {
  const BoolFormField({super.key, required super.store});

  double get doubleFormFieldWidth => 180;

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
              visible: store.value != null,
              child: Switch(
                value: store.value ?? false,
                onChanged: (newValue) {
                  store.value = newValue;
                },
              ),
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
