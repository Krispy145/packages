import 'package:flutter/material.dart';

class EnumFormField extends StatefulWidget {
  const EnumFormField({super.key, required this.onChanged, required this.initialValue, required this.options});

  final List<Enum> options;
  final Enum? initialValue;
  final void Function(Enum?) onChanged;

  @override
  State<EnumFormField> createState() => _EnumFormFieldState();
}

class _EnumFormFieldState extends State<EnumFormField> {
  @override
  void initState() {
    value = widget.initialValue;
    super.initState();
  }

  late Enum? value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (value != null)
          DropdownButton(
            value: value,
            onChanged: (newValue) => widget.onChanged(newValue),
            items: widget.options.map((enumValue) => DropdownMenuItem<Enum>(value: enumValue, child: Text(enumValue.name))).toList(),
          ),
        if (value != null)
          FilledButton(
            child: const Text("Clear Value"),
            onPressed: () => setState(() {
              value = null;
              widget.onChanged(value);
            }),
          ),
      ],
    );
  }
}
