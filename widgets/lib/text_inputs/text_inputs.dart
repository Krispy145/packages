import 'package:flutter/material.dart';
import 'package:widgets/components/components.dart';
import 'package:widgets/text_fields/text_fields.dart';

class TextInputs extends StatelessWidget {
  const TextInputs({super.key});

  @override
  Widget build(BuildContext context) {
    return const ComponentGroupDecoration(
      label: 'Text inputs',
      children: [TextFields()],
    );
  }
}
