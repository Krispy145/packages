import 'package:flutter/material.dart';
import 'package:theme/data/models/borders/border_radius_model.dart';
import 'package:theme/data/models/borders/border_side_model.dart';
import 'package:theme/data/models/borders/input_border_model.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/border_radius_form_field.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/border_side_form_field.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/double_form_field.dart';
import 'package:utilities/helpers/extensions/string.dart';
import 'package:utilities/sizes/spacers.dart';

class InputBorderFormField extends StatefulWidget {
  late final InputBorderModel initialValue;
  final void Function(InputBorderModel newInputBorder) onChanged;

  InputBorderFormField({super.key, required InputBorderModel? initialValue, required this.onChanged}) {
    this.initialValue = initialValue ?? const InputBorderModel();
  }

  @override
  State<InputBorderFormField> createState() => _InputBorderFormFieldState();
}

class _InputBorderFormFieldState extends State<InputBorderFormField> {
  late InputBorderModel value;

  late InputBorderType inputBorderType;

  @override
  void initState() {
    value = widget.initialValue;
    inputBorderType = value.type_enum_inputBorderType ?? InputBorderType.none;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onTypeChanged(InputBorderType type) {
    setState(() {
      inputBorderType = type;
      value = value.copyWith(type_enum_inputBorderType: type);
    });
    widget.onChanged(value);
  }

  void onBorderSideChanged(BorderSideModel? borderSide) {
    setState(() {
      value = value.copyWith(borderSide_borderSide: borderSide);
    });
    widget.onChanged(value);
  }

  void onBorderRadiusChanged(BorderRadiusModel? borderRadius) {
    setState(() {
      value = value.copyWith(borderRadius_borderRadius: borderRadius);
    });
    widget.onChanged(value);
  }

  void onGapPaddingChanged(double? gapPadding) {
    setState(() {
      value = value.copyWith(gapPadding_double: gapPadding);
    });
    widget.onChanged(value);
  }

  bool get showBorderRadiusField => [InputBorderType.outlined, InputBorderType.underlined].contains(inputBorderType);
  bool get showBorderSideField => [InputBorderType.outlined, InputBorderType.underlined].contains(inputBorderType);
  bool get showGapPaddingField => [InputBorderType.outlined].contains(inputBorderType);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SegmentedButton<InputBorderType>(
          segments: InputBorderType.values.map((type) => ButtonSegment<InputBorderType>(value: type, label: Text(type.name.toTitleCase()))).toList(),
          selected: {inputBorderType},
          onSelectionChanged: (newSelection) => onTypeChanged(newSelection.first),
        ),
        Sizes.m.spacer(),
        TextField(
          controller: TextEditingController(text: "Preview Text Field"),
          decoration: InputDecoration(border: value.asInputBorder()),
        ),
        Sizes.m.spacer(),
        Visibility(
          visible: showBorderSideField,
          child: BorderSideFormField(onChanged: onBorderSideChanged, initialValue: value.borderSide_borderSide),
        ),
        Sizes.m.spacer(),
        Visibility(
          visible: showBorderRadiusField,
          child: BorderRadiusFormField(onChanged: onBorderRadiusChanged, initialValue: value.borderRadius_borderRadius),
        ),
        Sizes.m.spacer(),
        Visibility(
          visible: showGapPaddingField,
          child: DoubleFormField(onChanged: onGapPaddingChanged, increment: 0.1),
        ),
      ],
    );
  }
}
