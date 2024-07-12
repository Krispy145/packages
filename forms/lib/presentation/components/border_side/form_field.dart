import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_mobx/flutter_mobx.dart";

import "../base/form_field.dart";
import "../double/form_field.dart";
import "../enum/form_field.dart";
import "../theme_color_string/form_field.dart";
import "store.dart";

class BorderSideFormField extends BaseFormField<BorderSideFormFieldStore> {
  BorderSideFormField({
    super.key,
    required super.store,
  });

  double get doubleFormFieldWidth => 180;

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: store.value?.asBorderSide() != null ? Border.fromBorderSide(store.value!.asBorderSide()!) : null,
              ),
            ),
            ThemeColorStringFormField(store: store.colorStore),
            DoubleFormField(store: store.widthStore),
            EnumFormField(store: store.styleStore),
            DoubleFormField(store: store.strokeAlignStore),
          ],
        );
      },
      //       return Column(
      //         mainAxisSize: MainAxisSize.min,
      //         children: [
      //           SegmentedButton<BorderSideTypes>(
      //             segments: BorderSideTypes.values.map((type) => ButtonSegment<BorderSideTypes>(value: type, label: Text(type.name.toTitleCase()))).toList(),
      //             selected: {store.type},
      //             onSelectionChanged: (newSelection) => store.type = newSelection.first,
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               DoubleFormField(
      //                 onChanged: store.onTopFieldChanged,
      //                 enabled: store.topEnabled,
      //                 showButtons: false,
      //               ),
      //             ],
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               DoubleFormField(
      //                 onChanged: store.onLeftFieldChanged,
      //                 enabled: store.leftEnabled,
      //                 showButtons: false,
      //               ),
      //               Padding(
      //                 padding: const BorderSide.all(8),
      //                 child: Container(color: Theme.of(context).primaryColor, padding: store.value, child: Container(width: 40, height: 40, color: Colors.grey)),
      //               ),
      //               DoubleFormField(
      //                 onChanged: store.onRightFieldChanged,
      //                 enabled: store.rightEnabled,
      //                 showButtons: false,
      //               ),
      //             ],
      //           ),
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             children: [
      //               DoubleFormField(
      //                 onChanged: store.onBottomFieldChanged,
      //                 enabled: store.bottomEnabled,
      //                 showButtons: false,
      //               ),
      //             ],
      //           ),
      //         ],
      //       );
      // },
    );
  }
}

class NumberEditingTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool enabled;
  final void Function(String) onChanged;

  const NumberEditingTextField({
    super.key,
    required this.controller,
    required this.enabled,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 40,
      child: TextField(
        // decoration: const InputDecoration(
        //   border: UnderlineInputBorder(),
        // ),
        textAlign: TextAlign.center,
        controller: controller,
        keyboardType: TextInputType.number,
        enabled: enabled,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        onChanged: onChanged,
      ),
    );
  }
}
