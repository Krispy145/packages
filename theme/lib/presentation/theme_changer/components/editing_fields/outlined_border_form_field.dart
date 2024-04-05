import 'package:flutter/material.dart';
import 'package:theme/data/models/borders/border_radius_model.dart';
import 'package:theme/data/models/borders/border_side_model.dart';
import 'package:theme/data/models/borders/outlined_border_model.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/border_radius_form_field.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/border_side_form_field.dart';
import 'package:utilities/helpers/extensions/string.dart';
import 'package:utilities/sizes/spacers.dart';

class OutlinedBorderFormField extends StatefulWidget {
  late final OutlinedBorderModel initialValue;
  final void Function(OutlinedBorderModel newOutlinedBorder) onChanged;

  OutlinedBorderFormField({super.key, required OutlinedBorderModel? initialValue, required this.onChanged}) {
    this.initialValue = initialValue ?? const OutlinedBorderModel();
  }

  @override
  State<OutlinedBorderFormField> createState() => _OutlinedBorderFormFieldState();
}

class _OutlinedBorderFormFieldState extends State<OutlinedBorderFormField> {
  late OutlinedBorderModel value;

  late OutlinedBorderType outlinedBorderType;

  @override
  void initState() {
    value = widget.initialValue;
    outlinedBorderType = value.type_enum_outlinedBorderType ?? OutlinedBorderType.roundedRectangleBorder;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onTypeChanged(OutlinedBorderType type) {
    setState(() {
      outlinedBorderType = type;
      value = value.copyWith(type_enum_outlinedBorderType: type);
    });
    widget.onChanged(value);
  }

  void onBorderSideChanged(BorderSideModel? borderSide) {
    setState(() {
      value = value.copyWith(side_borderSide: borderSide);
    });
    widget.onChanged(value);
  }

  void onBorderRadiusChanged(BorderRadiusModel? borderRadius) {
    setState(() {
      value = value.copyWith(borderRadius_borderRadius: borderRadius);
    });
    widget.onChanged(value);
  }

  bool get showBorderRadiusField => [
        OutlinedBorderType.beveledRectangleBorder,
        OutlinedBorderType.ovalBorder,
        OutlinedBorderType.continuousRectangleBorder,
        OutlinedBorderType.roundedRectangleBorder,
      ].contains(outlinedBorderType);

  bool get showBorderSideField => [
        OutlinedBorderType.circleBorder,
        OutlinedBorderType.stadiumBorder,
        OutlinedBorderType.starBorder,
        OutlinedBorderType.beveledRectangleBorder,
        OutlinedBorderType.continuousRectangleBorder,
        OutlinedBorderType.roundedRectangleBorder,
        OutlinedBorderType.linearBorder,
      ].contains(outlinedBorderType);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SegmentedButton<OutlinedBorderType>(
          segments: OutlinedBorderType.values.map((type) => ButtonSegment<OutlinedBorderType>(value: type, label: Text(type.name.toTitleCase()))).toList(),
          selected: {outlinedBorderType},
          onSelectionChanged: (newSelection) => onTypeChanged(newSelection.first),
        ),
        Sizes.m.spacer(),
        FilledButton(
          onPressed: () {},
          style: ButtonStyle(shape: MaterialStateProperty.all(value.asOutlinedBorder())),
          child: const Text("Border Preview"),
        ),
        Sizes.m.spacer(),
        Visibility(
          visible: showBorderSideField,
          child: BorderSideFormField(onChanged: onBorderSideChanged, initialValue: value.side_borderSide),
        ),
        Sizes.m.spacer(),
        Visibility(
          visible: showBorderRadiusField,
          child: BorderRadiusFormField(onChanged: onBorderRadiusChanged, initialValue: value.borderRadius_borderRadius),
        ),
      ],
    );
  }
}
