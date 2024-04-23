import 'package:flutter/material.dart';
import 'package:utilities/widgets/load_state/state_widget.dart';
import 'store.dart';

// ignore: strict_raw_type
abstract class BaseFormField<T extends BaseFormFieldStore> extends StatelessWidget {
  const BaseFormField({super.key, required this.store});

  final T store;

  @override
  Widget build(BuildContext context) {
    return LoadStateBuilder(
      viewStore: store,
      emptyBuilder: (context) {
        return const Center(
          child: Text("Empty form field."),
        );
      },
      errorBuilder: (context) {
        return const Center(
          child: Text("Error loading form field."),
        );
      },
      loadedBuilder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(store.title),
            ),
            buildField(context),
          ],
        );
      },
    );
  }

  Widget buildField(BuildContext context);
}
