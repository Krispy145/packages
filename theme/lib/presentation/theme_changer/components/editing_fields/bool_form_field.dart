// import 'package:flutter/material.dart';

// class BoolFormField extends StatefulWidget {
//   const BoolFormField({super.key, required this.onChanged, required this.initialValue});

//   final bool? initialValue;
//   final void Function(bool?) onChanged;

//   @override
//   State<BoolFormField> createState() => _BoolFormFieldState();
// }

// class _BoolFormFieldState extends State<BoolFormField> {
//   @override
//   void initState() {
//     value = widget.initialValue;
//     super.initState();
//   }

//   late bool? value;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         if (value != null)
//           Switch(
//             value: value!,
//             onChanged: (newValue) {
//               setState(() {
//                 value = newValue;
//               });
//               widget.onChanged(newValue);
//             },
//           ),
//         FilledButton(
//           child: Text(value == null ? "Set Value" : "Clear Value"),
//           onPressed: () => setState(() {
//             value == null ? value = true : value = null;
//             widget.onChanged(value);
//           }),
//         ),
//       ],
//     );
//   }
// }
