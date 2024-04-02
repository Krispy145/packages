// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:utilities/helpers/extensions/build_context.dart';
// import 'package:utilities/sizes/spacers.dart';

// class DoubleChanger extends StatefulWidget {
//   final double currentDouble;
//   final Function(BuildContext context, double newDouble) onDoubleChanged;
//   const DoubleChanger({super.key, required this.currentDouble, required this.onDoubleChanged});

//   @override
//   State<DoubleChanger> createState() => _DoubleChangerState();
// }

// class _DoubleChangerState extends State<DoubleChanger> {
//   late TextEditingController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _initController();
//   }

//   void _initController() {
//     _controller = TextEditingController(text: widget.currentDouble.toString());
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ConstrainedBox(
//       constraints: BoxConstraints(
//         maxWidth: context.screenWidth * 0.35,
//         maxHeight: context.screenHeight * 0.75,
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 IconButton.filled(
//                   onPressed: () => setState(() {
//                     _controller.text = (double.parse(_controller.text) - 1.0).toString();
//                   }),
//                   icon: const Icon(Icons.remove, color: Colors.white),
//                 ),
//                 Sizes.s.spacer(vertical: false),
//                 Expanded(
//                   child: TextField(
//                     controller: _controller,
//                     keyboardType: TextInputType.number,
//                     inputFormatters: [
//                       FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
//                     ],
//                   ),
//                 ),
//                 Sizes.s.spacer(vertical: false),
//                 IconButton.filled(
//                   onPressed: () => setState(() {
//                     _controller.text = (double.parse(_controller.text) + 1.0).toString();
//                   }),
//                   icon: const Icon(
//                     Icons.add,
//                     color: Colors.white,
//                   ),
//                 ),
//               ],
//             ),
//             Sizes.m.spacer(),
//             ElevatedButton(
//               onPressed: () {
//                 widget.onDoubleChanged(context, double.parse(_controller.text));
//               },
//               child: const Text('Change'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
