import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/double/store.dart';
import 'package:utilities/sizes/spacers.dart';

class DoubleFormField extends StatelessWidget {
  const DoubleFormField({super.key, required this.store});

  final DoubleFormFieldStore store;

  double get doubleFormFieldWidth => 180;

  @override
  Widget build(BuildContext context) {
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
                  icon: const Icon(Icons.remove, color: Colors.white),
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
                    onChanged: (value) => store.onValueChanged(double.tryParse(value)),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                Sizes.s.spacer(vertical: false),
                // if (widget.showButtons)
                IconButton.filled(
                  icon: const Icon(Icons.add, color: Colors.white),
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
