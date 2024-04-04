import 'package:flutter/material.dart';
import 'package:theme/app/app_theme.dart';
import 'package:theme/data/models/text/text_style_sizes.dart';
import 'package:theme/extensions/text_style_string.dart';
import 'package:utilities/sizes/spacers.dart';

class TextStyleFormField extends StatefulWidget {
  final TextStyleString? initialValue;
  final void Function(String?) onChanged;

  const TextStyleFormField({super.key, required this.initialValue, required this.onChanged});

  @override
  State<TextStyleFormField> createState() => _TextStyleFormFieldState();
}

class _TextStyleFormFieldState extends State<TextStyleFormField> {
  late TextStyleString? value;

  @override
  void initState() {
    super.initState();
    _setNewTextStyle(widget.initialValue);
  }

  void _setNewTextStyle(TextStyleString? newValue) {
    setState(() => value = newValue);
    widget.onChanged(newValue);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: AppTheme.textStyleTypes()!.toJson().entries.map((entry) {
            final styleTitle = entry.key;
            final value = TextStyleSizes.fromJson(entry.value as Map<String, dynamic>);
            return Column(
              children: value.toJson().entries.map((entry) {
                final title = entry.key;
                return InkWell(
                  onTap: () => _setNewTextStyle("$styleTitle-$title"),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$styleTitle-$title",
                        maxLines: 2,
                        style: "$styleTitle-$title".toTextStyleModel()?.asTextStyle.copyWith(color: Colors.black),
                      ),
                      Sizes.m.spacer(vertical: false),
                    ],
                  ),
                );
              }).toList(),
            );
          }).toList(),
          // ..add(
          //   Column(
          //     children: [
          //       Sizes.m.spacer(),
          //       ElevatedButton(
          //         onPressed: () {
          //           widget.onChanged(value);
          //           Navigator.of(context).pop();
          //         },
          //         child: const Text('Change'),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
