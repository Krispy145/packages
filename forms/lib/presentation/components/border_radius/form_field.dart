import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:theme/data/models/borders/border_radius_model.dart";
import "package:utilities/helpers/extensions/string.dart";
import "package:utilities/sizes/spacers.dart";

import "../base/form_field.dart";
import "store.dart";

class BorderRadiusFormField extends BaseFormField<BorderRadiusFormFieldStore> {
  BorderRadiusFormField({
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
            SegmentedButton<BorderRadiusType>(
              segments: BorderRadiusType.values
                  .map(
                    (type) => ButtonSegment<BorderRadiusType>(
                      value: type,
                      label: Text(type.name.toTitleCase()),
                    ),
                  )
                  .toList(),
              selected: {store.type},
              onSelectionChanged: (newSelection) => store.onTypeChanged(newSelection.first),
            ),
            Sizes.m.spacer(),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: store.value?.asBorderRadius(),
                border: Border.all(),
              ),
              height: 200,
              width: 400,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: NumberEditingTextField(
                      controller: store.topLeftController,
                      enabled: store.type == BorderRadiusType.only,
                      onChanged: store.onTopLeftChanged,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: NumberEditingTextField(
                      controller: store.topRightController,
                      enabled: store.type == BorderRadiusType.only,
                      onChanged: store.onTopRightChanged,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: NumberEditingTextField(
                      controller: store.bottomLeftController,
                      enabled: store.type == BorderRadiusType.only,
                      onChanged: store.onBottomLeftChanged,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: NumberEditingTextField(
                      controller: store.bottomRightController,
                      enabled: store.type == BorderRadiusType.only,
                      onChanged: store.onBottomRightChanged,
                    ),
                  ),
                  Align(
                    child: NumberEditingTextField(
                      controller: store.allController,
                      enabled: store.type == BorderRadiusType.circular,
                      onChanged: store.onAllChanged,
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
      //       return Column(
      //         mainAxisSize: MainAxisSize.min,
      //         children: [
      //           SegmentedButton<BorderRadiusTypes>(
      //             segments: BorderRadiusTypes.values.map((type) => ButtonSegment<BorderRadiusTypes>(value: type, label: Text(type.name.toTitleCase()))).toList(),
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
      //                 padding: const BorderRadius.all(8),
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
