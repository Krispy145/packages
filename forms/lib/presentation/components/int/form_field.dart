import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:theme/extensions/build_context.dart";
import "package:utilities/sizes/spacers.dart";

import "store.dart";

class IntFormField extends BaseFormField<IntFormFieldStore> {
  const IntFormField({
    super.key,
    required super.store,
  });

  int get intFormFieldWidth => 180;

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
                // if (widget.showButtons)
                IconButton.filled(
                  icon: Icon(Icons.remove, color: context.colorScheme.onPrimary),
                  onPressed: store.add,
                ),
                Sizes.s.spacer(vertical: false),
                SizedBox(
                  width: 100,
                  child: TextField(
                    decoration: const InputDecoration(border: UnderlineInputBorder()),
                    controller: store.textController,
                    keyboardType: TextInputType.number,
                    // enabled: widget.enabled,
                    onChanged: (value) => store.onValueChanged(int.tryParse(value)),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                Sizes.s.spacer(vertical: false),
                // if (widget.showButtons)
                IconButton.filled(
                  icon: Icon(Icons.add, color: context.colorScheme.onPrimary),
                  onPressed: store.subtract,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
