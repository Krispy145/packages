import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:theme/data/models/borders/input_border_model.dart';
import 'package:theme/presentation/changer/components/editing_fields/base/form_field.dart';
import 'package:theme/presentation/changer/components/editing_fields/border_radius/form_field.dart';
import 'package:theme/presentation/changer/components/editing_fields/border_side/form_field.dart';
import 'package:theme/presentation/changer/components/editing_fields/double/form_field.dart';
import 'package:theme/presentation/changer/components/editing_fields/input_border/store.dart';
import 'package:utilities/helpers/extensions/string.dart';
import 'package:utilities/sizes/spacers.dart';

class InputBorderFormField extends BaseFormField<InputBorderFormFieldStore> {
  const InputBorderFormField({super.key, required super.store});

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SegmentedButton<InputBorderType>(
              segments: InputBorderType.values.map((type) => ButtonSegment<InputBorderType>(value: type, label: Text(type.name.toTitleCase()))).toList(),
              selected: {store.type},
              onSelectionChanged: (newSelection) => store.onTypeChanged(newSelection.first),
            ),
            Sizes.m.spacer(),
            TextField(
              controller: TextEditingController(text: "Preview Text Field"),
              decoration: InputDecoration(border: store.value.asInputBorder()),
            ),
            Sizes.m.spacer(),
            Visibility(
              visible: store.showBorderSideField,
              child: BorderSideFormField(store: store.borderSideStore),
            ),
            Sizes.m.spacer(),
            Visibility(
              visible: store.showBorderRadiusField,
              child: BorderRadiusFormField(store: store.borderRadiusStore),
            ),
            Sizes.m.spacer(),
            Visibility(visible: store.showGapPaddingField, child: DoubleFormField(store: store.gapPaddingStore)),
          ],
        );
      },
      //       return Column(
      //         mainAxisSize: MainAxisSize.min,
      //         children: [
      //           SegmentedButton<InputBorderTypes>(
      //             segments: InputBorderTypes.values.map((type) => ButtonSegment<InputBorderTypes>(value: type, label: Text(type.name.toTitleCase()))).toList(),
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
      //                 padding: const InputBorder.all(8),
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

  const NumberEditingTextField({super.key, required this.controller, required this.enabled, required this.onChanged});

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
