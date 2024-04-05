import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/double_form_field.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/edge_insets/store.dart';
import 'package:utilities/helpers/extensions/string.dart';

class EdgeInsetsFormField extends StatelessWidget {
  const EdgeInsetsFormField({super.key, required this.store});

  final EdgeInsetsFormFieldStore store;

  double get doubleFormFieldWidth => 180;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SegmentedButton<EdgeInsetsTypes>(
              segments: EdgeInsetsTypes.values.map((type) => ButtonSegment<EdgeInsetsTypes>(value: type, label: Text(type.name.toTitleCase()))).toList(),
              selected: {store.type},
              onSelectionChanged: (newSelection) => store.type = newSelection.first,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DoubleFormField(
                  onChanged: store.onTopFieldChanged,
                  enabled: store.topEnabled,
                  showButtons: false,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DoubleFormField(
                  onChanged: store.onLeftFieldChanged,
                  enabled: store.leftEnabled,
                  showButtons: false,
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(color: Theme.of(context).primaryColor, padding: store.value, child: Container(width: 40, height: 40, color: Colors.grey)),
                ),
                DoubleFormField(
                  onChanged: store.onRightFieldChanged,
                  enabled: store.rightEnabled,
                  showButtons: false,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DoubleFormField(
                  onChanged: store.onBottomFieldChanged,
                  enabled: store.bottomEnabled,
                  showButtons: false,
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
