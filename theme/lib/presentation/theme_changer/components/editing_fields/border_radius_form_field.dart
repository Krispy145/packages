import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme/data/models/borders/border_radius_model.dart';
import 'package:utilities/helpers/extensions/string.dart';
import 'package:utilities/sizes/spacers.dart';

class BorderRadiusFormField extends StatefulWidget {
  late final BorderRadiusModel initialValue;
  final void Function(BorderRadiusModel newBorderRadius) onChanged;

  BorderRadiusFormField({super.key, required BorderRadiusModel? initialValue, required this.onChanged}) {
    this.initialValue = initialValue ?? const BorderRadiusModel();
  }

  @override
  State<BorderRadiusFormField> createState() => _BorderRadiusFormFieldState();
}

class _BorderRadiusFormFieldState extends State<BorderRadiusFormField> {
  late BorderRadiusModel value;

  late BorderRadiusType borderRadiusType;

  late TextEditingController _allController;
  late TextEditingController _topLeftController;
  late TextEditingController _topRightController;
  late TextEditingController _bottomLeftController;
  late TextEditingController _bottomRightController;

  @override
  void initState() {
    value = widget.initialValue;
    borderRadiusType = value.type_enum_borderRadiusType ?? BorderRadiusType.circular;
    _allController = TextEditingController(text: value.all_double?.toString());
    _topLeftController = TextEditingController(text: value.topLeft_double?.toString());
    _topRightController = TextEditingController(text: value.topRight_double?.toString());
    _bottomLeftController = TextEditingController(text: value.bottomLeft_double?.toString());
    _bottomRightController = TextEditingController(text: value.bottomRight_double?.toString());
    super.initState();
  }

  @override
  void dispose() {
    _allController.dispose();
    _topLeftController.dispose();
    _topRightController.dispose();
    _bottomLeftController.dispose();
    _bottomRightController.dispose();
    super.dispose();
  }

  void onTypeChanged(BorderRadiusType type) {
    setState(() {
      borderRadiusType = type;
      value = value.copyWith(type_enum_borderRadiusType: type);
    });
    widget.onChanged(value);
  }

  void onAllChanged(String allValue) {
    setState(() {
      value = value.copyWith(all_double: double.tryParse(allValue));
    });
    widget.onChanged(value);
  }

  void onTopLeftChanged(String topLeftValue) {
    setState(() {
      value = value.copyWith(topLeft_double: double.tryParse(topLeftValue));
    });
    widget.onChanged(value);
  }

  void onTopRightChanged(String topRightValue) {
    setState(() {
      value = value.copyWith(topRight_double: double.tryParse(topRightValue));
    });
    widget.onChanged(value);
  }

  void onBottomLeftChanged(String bottomLeftValue) {
    setState(() {
      value = value.copyWith(bottomLeft_double: double.tryParse(bottomLeftValue));
    });
    widget.onChanged(value);
  }

  void onBottomRightChanged(String bottomRightValue) {
    setState(() {
      value = value.copyWith(bottomRight_double: double.tryParse(bottomRightValue));
    });
    widget.onChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SegmentedButton<BorderRadiusType>(
          segments: BorderRadiusType.values.map((type) => ButtonSegment<BorderRadiusType>(value: type, label: Text(type.name.toTitleCase()))).toList(),
          selected: {borderRadiusType},
          onSelectionChanged: (newSelection) => onTypeChanged(newSelection.first),
        ),
        Sizes.m.spacer(),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: value.asBorderRadius(),
            border: Border.all(),
          ),
          height: 200,
          width: 400,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: NumberEditingTextField(controller: _topLeftController, enabled: borderRadiusType == BorderRadiusType.only, onChanged: onTopLeftChanged),
              ),
              Align(
                alignment: Alignment.topRight,
                child: NumberEditingTextField(controller: _topRightController, enabled: borderRadiusType == BorderRadiusType.only, onChanged: onTopRightChanged),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: NumberEditingTextField(controller: _bottomLeftController, enabled: borderRadiusType == BorderRadiusType.only, onChanged: onBottomLeftChanged),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: NumberEditingTextField(controller: _bottomRightController, enabled: borderRadiusType == BorderRadiusType.only, onChanged: onBottomRightChanged),
              ),
              Align(
                child: NumberEditingTextField(controller: _allController, enabled: borderRadiusType == BorderRadiusType.circular, onChanged: onAllChanged),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NumberEditingTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool enabled;
  final void Function(String) onChanged;

  const NumberEditingTextField({super.key, required this.controller, required this.enabled, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 40,
      child: TextField(
        // decoration: const InputDecoration(
        //   border: UnderlineInputBorder(),
        // ),
        textAlign: TextAlign.center,
        controller: controller,
        keyboardType: TextInputType.number,
        enabled: enabled,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        onChanged: onChanged,
      ),
    );
  }
}
