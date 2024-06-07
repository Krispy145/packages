import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";
import "package:forms/presentation/components/base/form_field.dart";
import "package:forms/presentation/components/border_radius/form_field.dart";
import "package:forms/presentation/components/border_side/form_field.dart";
import "package:theme/data/models/borders/outlined_border_model.dart";
import "package:utilities/helpers/extensions/string.dart";
import "package:utilities/sizes/spacers.dart";

import "../enum.dart";
import "store.dart";

class OutlinedBorderFormField extends BaseFormField<OutlinedBorderFormFieldStore> {
  const OutlinedBorderFormField({
    super.key,
    required super.store,
  }) : super(type: FormFieldType.outlinedBorderField);

  @override
  Widget buildField(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SegmentedButton<OutlinedBorderType>(
              segments: OutlinedBorderType.values
                  .map(
                    (type) => ButtonSegment<OutlinedBorderType>(
                      value: type,
                      label: Text(type.name.toTitleCase()),
                    ),
                  )
                  .toList(),
              selected: {store.outlinedBorderType},
              onSelectionChanged: (newSelection) => store.onTypeChanged(newSelection.first),
            ),
            Sizes.m.spacer(),
            FilledButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  store.value.asOutlinedBorder(),
                ),
              ),
              child: const Text("Border Preview"),
            ),
            Sizes.m.spacer(),
            Visibility(
              visible: store.showBorderSideField,
              child: BorderSideFormField(
                store: store.borderSideStore,
              ),
            ),
            Sizes.m.spacer(),
            Visibility(
              visible: store.showBorderRadiusField,
              child: BorderRadiusFormField(store: store.borderRadiusStore),
            ),
          ],
        );
      },
    );
  }
}
