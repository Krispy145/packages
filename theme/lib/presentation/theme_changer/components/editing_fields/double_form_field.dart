import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:utilities/sizes/spacers.dart';

class DoubleFormField extends StatefulWidget {
  final double? initialValue;
  final double increment;
  final void Function(double? newDouble) onChanged;
  final bool enabled;
  final bool showButtons;
  const DoubleFormField({super.key, this.initialValue, required this.onChanged, this.increment = 1, this.enabled = true, this.showButtons = true});

  @override
  State<DoubleFormField> createState() => _DoubleChangerState();
}

class _DoubleChangerState extends State<DoubleFormField> {
  late TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController(text: widget.initialValue?.toString());
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void addToValueInController(double increment) {
    final newValue = double.parse(_controller.text) + increment;
    _controller.text = newValue.toString();
    widget.onChanged(newValue);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.showButtons)
              IconButton.filled(
                icon: const Icon(Icons.remove, color: Colors.white),
                onPressed: () => setState(() => addToValueInController(-widget.increment)),
              ),
            Sizes.s.spacer(vertical: false),
            SizedBox(
              width: 100,
              child: TextField(
                decoration: const InputDecoration(border: UnderlineInputBorder()),
                controller: _controller,
                keyboardType: TextInputType.number,
                enabled: widget.enabled,
                onChanged: (value) => widget.onChanged(double.tryParse(value)),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  // FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
                ],
              ),
            ),
            Sizes.s.spacer(vertical: false),
            if (widget.showButtons)
              IconButton.filled(
                icon: const Icon(Icons.add, color: Colors.white),
                onPressed: () => setState(() => addToValueInController(widget.increment)),
              ),
          ],
        ),
      ],
    );
  }
}
