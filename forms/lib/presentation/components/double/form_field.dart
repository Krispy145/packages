import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:forms/utils/loggers.dart';
import 'package:utilities/logger/logger.dart';
import 'package:utilities/sizes/spacers.dart';

import '../base/form_field.dart';
import 'store.dart';

class DoubleFormField extends BaseFormField<DoubleFormFieldStore> {
  const DoubleFormField({super.key, required super.store});

  double get doubleFormFieldWidth => 180;

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 48,
            maxWidth: doubleFormFieldWidth,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // if (widget.showButtons)
              IconButton.filled(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints.tight(const Size(18, 18)),
                iconSize: 10,
                icon: const Icon(Icons.remove, color: Colors.white),
                onPressed: store.add,
              ),
              Sizes.s.spacer(vertical: false),
              Expanded(
                child: TextField(
                  decoration: const InputDecoration(border: UnderlineInputBorder()),
                  controller: store.textController,
                  keyboardType: TextInputType.number,
                  // enabled: widget.enabled,
                  // onChanged: (value) => store.onValueChanged(double.tryParse(value)),
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                ),
              ),
              Sizes.s.spacer(vertical: false),
              // if (widget.showButtons)
              IconButton.filled(
                padding: EdgeInsets.zero,
                constraints: BoxConstraints.tight(const Size(18, 18)),
                iconSize: 10,
                icon: const Icon(Icons.add, color: Colors.white),
                onPressed: store.subtract,
              ),
              Sizes.s.spacer(vertical: false),
              InkWell(
                onTap: () {
                  AppLogger.print('Apply button pressed: ${store.textController.text}', [FormsLoggers.field]);
                  store.onValueChanged(double.tryParse(store.textController.text) ?? 0);
                },
                child: const Text('Apply'),
              ),
            ],
          ),
        );
      },
    );
  }
}
