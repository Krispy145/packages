import 'package:flutter/material.dart';
import '../base/form_field.dart';
import 'store.dart';

class DOTextFormField extends BaseFormField<TextFormFieldStore> {
  const DOTextFormField({super.key, required super.store});

  @override
  Widget buildField(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextFormField(
          controller: store.textController,
          onChanged: store.onValueChanged,
        ),
      ],
    );
  }
}
