import 'package:flutter/material.dart';
import 'package:theme/data/models/borders/border_side_model.dart';

class BorderSideFormField extends StatefulWidget {
  const BorderSideFormField({super.key, required this.onChanged, required this.initialValue});

  final BorderSideModel? initialValue;
  final void Function(BorderSideModel?) onChanged;

  @override
  State<BorderSideFormField> createState() => _BorderSideFormFieldState();
}

class _BorderSideFormFieldState extends State<BorderSideFormField> {
  @override
  void initState() {
    value = widget.initialValue;
    super.initState();
  }

  late BorderSideModel? value;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
