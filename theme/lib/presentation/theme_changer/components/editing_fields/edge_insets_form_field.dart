import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:utilities/helpers/extensions/string.dart';
import 'package:utilities/sizes/spacers.dart';

enum _EdgeInsetsTypes { all, symmetric, only, zero }

class EdgeInsetsFormField extends StatefulWidget {
  late final EdgeInsets initialValue;
  final void Function(EdgeInsets newEdgeInsets) onChanged;

  EdgeInsetsFormField({super.key, required EdgeInsets? initialValue, required this.onChanged}) {
    this.initialValue = initialValue ?? const EdgeInsets.all(0);
  }

  @override
  State<EdgeInsetsFormField> createState() => _EdgeInsetsFormFieldState();
}

class _EdgeInsetsFormFieldState extends State<EdgeInsetsFormField> {
  late EdgeInsets value;

  _EdgeInsetsTypes edgeInsetsType = _EdgeInsetsTypes.all;

  /// Used for top, vertical and all
  late TextEditingController _topController;

  /// Used for bottom
  late TextEditingController _bottomController;

  /// Used for left, horizontal
  late TextEditingController _leftController;

  /// Used for right
  late TextEditingController _rightController;

  bool get topEnabled => [_EdgeInsetsTypes.all, _EdgeInsetsTypes.symmetric, _EdgeInsetsTypes.only].contains(edgeInsetsType);
  bool get bottomEnabled => edgeInsetsType == _EdgeInsetsTypes.only;
  bool get leftEnabled => [_EdgeInsetsTypes.symmetric, _EdgeInsetsTypes.only].contains(edgeInsetsType);
  bool get rightEnabled => edgeInsetsType == _EdgeInsetsTypes.only;

  @override
  void initState() {
    value = widget.initialValue;
    _topController = TextEditingController(text: value.top.toString());
    _leftController = TextEditingController(text: value.left.toString());
    _bottomController = TextEditingController(text: value.bottom.toString());
    _rightController = TextEditingController(text: value.right.toString());
    super.initState();
  }

  @override
  void dispose() {
    _topController.dispose();
    _bottomController.dispose();
    _leftController.dispose();
    _rightController.dispose();
    super.dispose();
  }

  void onValueUpdated() {
    print("setControllersFromCurrentEdgeInsets: ${value.toString()}");
    setState(() {
      _topController.text = value.top.toString();
      _bottomController.text = value.bottom.toString();
      _leftController.text = value.left.toString();
      _rightController.text = value.right.toString();
    });
    widget.onChanged(value);
  }

  void onTypeChanged(_EdgeInsetsTypes type) {
    edgeInsetsType = type;
    switch (edgeInsetsType) {
      case _EdgeInsetsTypes.all:
        value = EdgeInsets.all(value.top);
      case _EdgeInsetsTypes.zero:
        value = EdgeInsets.zero;
      case _EdgeInsetsTypes.symmetric:
        value = EdgeInsets.symmetric(vertical: value.top, horizontal: value.left);
      case _EdgeInsetsTypes.only:
        value = EdgeInsets.only(top: value.top, bottom: value.bottom, left: value.left, right: value.right);
    }
    onValueUpdated();
  }

  void onTopChanged(String topValue) {
    final double newTop = double.tryParse(topValue) ?? 0;
    switch (edgeInsetsType) {
      case _EdgeInsetsTypes.all:
        value = EdgeInsets.all(newTop);
      case _EdgeInsetsTypes.symmetric:
        value = EdgeInsets.symmetric(vertical: newTop, horizontal: value.left);
      case _EdgeInsetsTypes.only:
        value = EdgeInsets.only(top: newTop, bottom: value.bottom, left: value.left, right: value.right);
      default:
        break;
    }
    onValueUpdated();
  }

  void onLeftChanged(String leftValue) {
    final double newLeft = double.tryParse(leftValue) ?? 0;
    switch (edgeInsetsType) {
      case _EdgeInsetsTypes.symmetric:
        value = EdgeInsets.symmetric(vertical: value.top, horizontal: newLeft);
      case _EdgeInsetsTypes.only:
        value = EdgeInsets.only(top: value.top, bottom: value.bottom, left: newLeft, right: value.right);
      default:
        break;
    }
    onValueUpdated();
  }

  void onRightChanged(String rightValue) {
    final double newRight = double.tryParse(rightValue) ?? 0;
    switch (edgeInsetsType) {
      case _EdgeInsetsTypes.only:
        value = EdgeInsets.only(top: value.top, bottom: value.bottom, left: value.left, right: newRight);
        break;
      default:
        break;
    }
    onValueUpdated();
  }

  void onBottomChanged(String bottomValue) {
    final double newBottom = double.tryParse(bottomValue) ?? 0;
    switch (edgeInsetsType) {
      case _EdgeInsetsTypes.only:
        value = EdgeInsets.only(top: value.top, bottom: newBottom, left: value.left, right: value.right);
        break;
      default:
        break;
    }
    onValueUpdated();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SegmentedButton<_EdgeInsetsTypes>(
          segments: _EdgeInsetsTypes.values.map((type) => ButtonSegment<_EdgeInsetsTypes>(value: type, label: Text(type.name.toTitleCase()))).toList(),
          selected: {edgeInsetsType},
          onSelectionChanged: (Set<_EdgeInsetsTypes> newSelection) => onTypeChanged(newSelection.first),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _EdgeInsetsEditingTextField(controller: _topController, enabled: topEnabled, onChanged: onTopChanged),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _EdgeInsetsEditingTextField(controller: _leftController, enabled: leftEnabled, onChanged: onLeftChanged),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.red, padding: value, child: Container(width: 40, height: 40, color: Colors.grey)),
            ),
            _EdgeInsetsEditingTextField(controller: _rightController, enabled: rightEnabled, onChanged: onRightChanged),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _EdgeInsetsEditingTextField(controller: _bottomController, enabled: bottomEnabled, onChanged: onBottomChanged),
          ],
        ),
        Sizes.m.spacer(),
        ElevatedButton(
          onPressed: () {
            widget.onChanged(value);
          },
          child: Text('Update to ${value.toString()}'),
        ),
      ],
    );
  }
}

class _EdgeInsetsEditingTextField extends StatelessWidget {
  final TextEditingController controller;
  final bool enabled;
  final void Function(String) onChanged;

  const _EdgeInsetsEditingTextField({super.key, required this.controller, required this.enabled, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 40,
      child: TextField(
        decoration: const InputDecoration(
          border: UnderlineInputBorder(),
        ),
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
