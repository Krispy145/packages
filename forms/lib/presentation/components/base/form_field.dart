import "package:flutter/material.dart";
import "package:forms/presentation/components/enum.dart";
import "package:theme/extensions/build_context.dart";

import "store.dart";

// ignore: strict_raw_type
abstract class BaseFormField<T extends BaseFormFieldStore> extends StatelessWidget {
  const BaseFormField({
    super.key,
    required this.store,
    this.showTitle = true,
    required this.type,
  });

  final T store;
  final FormFieldType type;
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
