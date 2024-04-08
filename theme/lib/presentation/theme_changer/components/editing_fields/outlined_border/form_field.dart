import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:theme/data/models/borders/outlined_border_model.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/border_radius/form_field.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/border_side/form_field.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/outlined_border/store.dart';
import 'package:utilities/helpers/extensions/string.dart';
import 'package:utilities/sizes/spacers.dart';

class OutlinedBorderFormField extends StatelessWidget {
  const OutlinedBorderFormField({super.key, required this.store});

  final OutlinedBorderFormFieldStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SegmentedButton<OutlinedBorderType>(
              segments: OutlinedBorderType.values.map((type) => ButtonSegment<OutlinedBorderType>(value: type, label: Text(type.name.toTitleCase()))).toList(),
              selected: {store.outlinedBorderType},
              onSelectionChanged: (newSelection) => store.onTypeChanged(newSelection.first),
            ),
            Sizes.m.spacer(),
            FilledButton(
              onPressed: () {},
              style: ButtonStyle(shape: MaterialStateProperty.all(store.value.asOutlinedBorder())),
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
