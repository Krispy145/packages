// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:utilities/helpers/extensions/build_context.dart';
// import 'package:utilities/sizes/spacers.dart';

// class StringChanger extends StatefulWidget {
//   final String currentString;
//   final void Function(BuildContext context, String newString) onStringChanged;
//   const StringChanger({super.key, required this.currentString, required this.onStringChanged});

//   @override
//   State<StringChanger> createState() => _StringChangerState();
// }

// class _StringChangerState extends State<StringChanger> {
//   late TextEditingController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _initController();
//   }

//   void _initController() {
//     _controller = TextEditingController(text: widget.currentString.toString());
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
//             TextField(
//               controller: _controller,
//               keyboardType: TextInputType.number,
//               inputFormatters: [
//                 FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}')),
//               ],
//             ),
//             Sizes.m.spacer(),
//             ElevatedButton(
//               onPressed: () {
//                 widget.onStringChanged(context, _controller.text);
//               },
//               child: const Text('Change'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
