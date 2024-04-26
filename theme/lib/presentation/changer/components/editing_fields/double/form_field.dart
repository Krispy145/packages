import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:theme/presentation/changer/components/editing_fields/base/form_field.dart';
import 'package:theme/presentation/changer/components/editing_fields/double/store.dart';
import 'package:utilities/sizes/spacers.dart';

class DoubleFormField extends BaseFormField<DoubleFormFieldStore> {
  const DoubleFormField({super.key, required super.store});

  double get doubleFormFieldWidth => 180;

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
                    decoration: const InputDecoration(border: UnderlineInputBorder()),
                    controller: store.textController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                Sizes.s.spacer(vertical: false),
                InkWell(
                  onTap: () => store.onValueChanged(double.tryParse(store.textController.text) ?? 0),
                  child: const Icon(Icons.check_circle_outline),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
