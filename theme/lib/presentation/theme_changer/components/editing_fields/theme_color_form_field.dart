import 'package:flutter/material.dart';
import 'package:theme/app/app_theme.dart';
import 'package:theme/extensions/string.dart';
import 'package:theme/presentation/theme_changer/components/editing_fields/components/color_circle.dart';
import 'package:utilities/logger/logger.dart';
import 'package:utilities/sizes/spacers.dart';

class ThemeColorFormField extends StatefulWidget {
  const ThemeColorFormField({super.key, required this.onChanged, required this.initialValue});

  final String? initialValue;
  final void Function(String?) onChanged;

  @override
  State<ThemeColorFormField> createState() => _ThemeColorFormFieldState();
}

class _ThemeColorFormFieldState extends State<ThemeColorFormField> {
  @override
  void initState() {
    value = widget.initialValue;
    super.initState();
  }

  late String? value;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ColorCircle(
          color: value?.toColor() ?? Colors.transparent,
          label: value ?? "None",
        ),
        Sizes.m.spacer(),
        SizedBox(
          height: 60,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: AppTheme.currentColorModel!.toJson().entries.map((entry) {
                final colorName = entry.key;
                return InkWell(
                  onTap: () {
                    setState(() {
                      value = colorName;
                      AppLogger.print("Calling onChanged with $value", [PackageFeatures.theme]);
                    });
                    widget.onChanged(value);
                  },
                  child: SizedBox(
                    height: 60,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ColorCircle(color: colorName.toColor() ?? Colors.transparent),
                        Text(
                          colorName,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        )
      ],
    );
  }
}
