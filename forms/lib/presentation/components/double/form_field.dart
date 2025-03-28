import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:forms/presentation/components/double/store.dart";
import "package:utilities/sizes/spacers.dart";

class DoubleFormField extends BaseFormField<DoubleFormFieldStore> {
  DoubleFormField({
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
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 100,
                  child: TextField(
                    decoration:
                        const InputDecoration(border: UnderlineInputBorder()),
                    controller: store.textController,
                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      if (store.changeOnSaved) return;
                      store.onValueChanged(double.tryParse(value) ?? 0);
                    },
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(
                        RegExp(r"-*[0-9]*(\.[0-9]*)*"),
                      ),
                    ],
                  ),
                ),
                if (store.changeOnSaved) ...[
                  Sizes.s.spacer(axis: Axis.horizontal),
                  InkWell(
                    onTap: () => store.onValueChanged(
                      double.tryParse(store.textController.text) ?? 0,
                    ),
                    child: const Icon(Icons.check_circle_outline),
                  ),
                ],
              ],
            ),
          ],
        );
      },
    );
  }
}
