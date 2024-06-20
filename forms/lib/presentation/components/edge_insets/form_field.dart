import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:theme/data/models/edge_insets_model.dart";
import "package:utilities/helpers/extensions/string.dart";

import "../base/form_field.dart";
import "../double/form_field.dart";
import "../enum.dart";
import "store.dart";

class EdgeInsetsFormField extends BaseFormField<EdgeInsetsFormFieldStore> {
  EdgeInsetsFormField({
    super.key,
    required super.store,
  }) : super(type: FormFieldType.edgeInsetsField);

  double get doubleFormFieldWidth => 180;

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SegmentedButton<EdgeInsetsTypes>(
              segments: EdgeInsetsTypes.values
                  .map(
                    (type) => ButtonSegment<EdgeInsetsTypes>(
                      value: type,
                      label: Text(type.name.toTitleCase()),
                    ),
                  )
                  .toList(),
              selected: {store.type},
              onSelectionChanged: (newSelection) => store.type = newSelection.first,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DoubleFormField(store: store.topStore),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DoubleFormField(store: store.leftStore),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    color: Theme.of(context).primaryColor,
                    padding: store.value?.asEdgeInsets(),
                    child: Container(width: 40, height: 40, color: Colors.grey),
                  ),
                ),
                DoubleFormField(store: store.rightStore),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DoubleFormField(store: store.bottomStore),
              ],
            ),
          ],
        );
      },
    );
  }
}
