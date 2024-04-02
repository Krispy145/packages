import 'package:flutter/material.dart';

class BoolFormField extends StatefulWidget {
  const BoolFormField({super.key, required this.onChanged, required this.initialValue});

  final bool initialValue;
  final void Function(bool) onChanged;

  @override
  State<BoolFormField> createState() => _BoolFormFieldState();
}

class _BoolFormFieldState extends State<BoolFormField> {
  @override
  void initState() {
    value = widget.initialValue;
    super.initState();
  }

  late bool value;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: widget.onChanged,
    );
  }
}
