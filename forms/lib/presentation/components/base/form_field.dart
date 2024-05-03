import "package:flutter/material.dart";
import "package:theme/extensions/build_context.dart";

import "store.dart";

// ignore: strict_raw_type
abstract class BaseFormField<T extends BaseFormFieldStore> extends StatelessWidget {
  const BaseFormField({super.key, required this.store, this.showTitle = true});

  final T store;
  final bool showTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showTitle)
          Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 8),
            child: Text(store.title, style: context.textTheme.titleSmall),
          ),
        buildField(context),
      ],
    );
  }

  Widget buildField(BuildContext context);
}
