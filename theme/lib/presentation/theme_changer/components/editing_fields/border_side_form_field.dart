// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:utilities/helpers/extensions/string.dart';
// import 'package:utilities/sizes/spacers.dart';

// enum _BorderSideTypes { all, symmetric, only, zero }

// class BorderSideFormField extends StatefulWidget {
//   late final BorderSide initialValue;
//   final void Function(BorderSide newBorderSide) onChanged;

//   BorderSideFormField({super.key, required BorderSide? initialValue, required this.onChanged}) {
//     this.initialValue = initialValue ?? BorderSide.none;
//   }

//   @override
//   State<BorderSideFormField> createState() => _BorderSideFormFieldState();
// }

// class _BorderSideFormFieldState extends State<BorderSideFormField> {
//   late BorderSide value;

//   _BorderSideTypes borderSideType = _BorderSideTypes.all;

//   /// Used for top, vertical and all
//   late TextEditingController _topController;

//   /// Used for bottom
//   late TextEditingController _bottomController;

//   /// Used for left, horizontal
//   late TextEditingController _leftController;

//   /// Used for right
//   late TextEditingController _rightController;

//   bool get topEnabled => [_BorderSideTypes.all, _BorderSideTypes.symmetric, _BorderSideTypes.only].contains(borderSideType);
//   bool get bottomEnabled => borderSideType == _BorderSideTypes.only;
//   bool get leftEnabled => [_BorderSideTypes.symmetric, _BorderSideTypes.only].contains(borderSideType);
//   bool get rightEnabled => borderSideType == _BorderSideTypes.only;

//   @override
//   void initState() {
//     value = widget.initialValue;
//     _topController = TextEditingController(text: value.top.toString());
//     _leftController = TextEditingController(text: value.left.toString());
//     _bottomController = TextEditingController(text: value.bottom.toString());
//     _rightController = TextEditingController(text: value.right.toString());
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _topController.dispose();
//     _bottomController.dispose();
//     _leftController.dispose();
//     _rightController.dispose();
//     super.dispose();
//   }

//   void onValueUpdated() {
//     print("setControllersFromCurrentBorderSide: $value");
//     setState(() {
//       _topController.text = value.top.toString();
//       _bottomController.text = value.bottom.toString();
//       _leftController.text = value.left.toString();
//       _rightController.text = value.right.toString();
//     });
//     widget.onChanged(value);
//   }

//   // void onTypeChanged(_BorderSideTypes type) {
//   //   borderSideType = type;
//   //   switch (borderSideType) {
//   //     case _BorderSideTypes.all:
//   //       value = BorderSide.all(value.top);
//   //     case _BorderSideTypes.zero:
//   //       value = BorderSide.zero;
//   //     case _BorderSideTypes.symmetric:
//   //       value = BorderSide.symmetric(vertical: value.top, horizontal: value.left);
//   //     case _BorderSideTypes.only:
//   //       value = BorderSide.only(top: value.top, bottom: value.bottom, left: value.left, right: value.right);
//   //   }
//   //   onValueUpdated();
//   // }

//   // void onTopChanged(String topValue) {
//   //   final newTop = double.tryParse(topValue) ?? 0;
//   //   switch (borderSideType) {
//   //     case _BorderSideTypes.all:
//   //       value = BorderSide.all(newTop);
//   //     case _BorderSideTypes.symmetric:
//   //       value = BorderSide.symmetric(vertical: newTop, horizontal: value.left);
//   //     case _BorderSideTypes.only:
//   //       value = BorderSide.only(top: newTop, bottom: value.bottom, left: value.left, right: value.right);
//   //     default:
//   //       break;
//   //   }
//   //   onValueUpdated();
//   // }

//   // void onLeftChanged(String leftValue) {
//   //   final newLeft = double.tryParse(leftValue) ?? 0;
//   //   switch (BorderSideType) {
//   //     case _BorderSideTypes.symmetric:
//   //       value = BorderSide.symmetric(vertical: value.top, horizontal: newLeft);
//   //     case _BorderSideTypes.only:
//   //       value = BorderSide.only(top: value.top, bottom: value.bottom, left: newLeft, right: value.right);
//   //     default:
//   //       break;
//   //   }
//   //   onValueUpdated();
//   // }

//   // void onRightChanged(String rightValue) {
//   //   final newRight = double.tryParse(rightValue) ?? 0;
//   //   switch (BorderSideType) {
//   //     case _BorderSideTypes.only:
//   //       value = BorderSide.only(top: value.top, bottom: value.bottom, left: value.left, right: newRight);
//   //       break;
//   //     default:
//   //       break;
//   //   }
//   //   onValueUpdated();
//   // }

//   // void onBottomChanged(String bottomValue) {
//   //   final newBottom = double.tryParse(bottomValue) ?? 0;
//   //   switch (BorderSideType) {
//   //     case _BorderSideTypes.only:
//   //       value = BorderSide.only(top: value.top, bottom: newBottom, left: value.left, right: value.right);
//   //       break;
//   //     default:
//   //       break;
//   //   }
//   //   onValueUpdated();
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         SegmentedButton<_BorderSideTypes>(
//           segments: _BorderSideTypes.values.map((type) => ButtonSegment<_BorderSideTypes>(value: type, label: Text(type.name.toTitleCase()))).toList(),
//           selected: {borderSideType},
//           onSelectionChanged: (newSelection) => onTypeChanged(newSelection.first),
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _BorderSideEditingTextField(controller: _topController, enabled: topEnabled, onChanged: onTopChanged),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _BorderSideEditingTextField(controller: _leftController, enabled: leftEnabled, onChanged: onLeftChanged),
//             Padding(
//               padding: const BorderSide.all(8.0),
//               child: Container(color: Colors.red, padding: value, child: Container(width: 40, height: 40, color: Colors.grey)),
//             ),
//             _BorderSideEditingTextField(controller: _rightController, enabled: rightEnabled, onChanged: onRightChanged),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _BorderSideEditingTextField(controller: _bottomController, enabled: bottomEnabled, onChanged: onBottomChanged),
//           ],
//         ),
//         Sizes.m.spacer(),
//         ElevatedButton(
//           onPressed: () {
//             widget.onChanged(value);
//           },
//           child: Text('Update to $value'),
//         ),
//       ],
//     );
//   }
// }
