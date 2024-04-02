// import 'package:flutter/material.dart';
// import 'package:theme/app/app_theme.dart';
// import 'package:theme/domain/models/text/text_style_sizes.dart';
// import 'package:theme/extensions/string.dart';
// import 'package:utilities/helpers/extensions/build_context.dart';
// import 'package:utilities/sizes/spacers.dart';

// class TextStyleChangerView extends StatefulWidget {
//   final String? currentTextStyleString;
//   final void Function(BuildContext context, String newTextStyle) onTextStyleChanged;
//   const TextStyleChangerView({super.key, required this.currentTextStyleString, required this.onTextStyleChanged});

//   @override
//   State<TextStyleChangerView> createState() => _TextStyleChangerViewState();
// }

// class _TextStyleChangerViewState extends State<TextStyleChangerView> {
//   late String newTextStyleString;

//   @override
//   void initState() {
//     super.initState();
//     _setNewTextStyle(widget.currentTextStyleString ?? "Set Text Style");
//   }

//   void _setNewTextStyle(String value) {
//     setState(() {
//       newTextStyleString = value;
//     });
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
//             Text(
//               "New Text Style",
//               style: newTextStyleString.toTextStyleModel()?.asTextStyle,
//             ),
//             Sizes.m.spacer(),
//             Expanded(
//                 child: SingleChildScrollView(
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   mainAxisSize: MainAxisSize.min,
//                   children: AppTheme.textStyleTypes()!.toJson().entries.map((entry) {
//                     final styleTitle = entry.key;
//                     final value = TextStyleSizes.fromJson(entry.value);
//                     return Column(
//                         children: value.toJson().entries.map((entry) {
//                       final title = entry.key;
//                       return InkWell(
//                         onTap: () => _setNewTextStyle("$styleTitle-$title"),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "$styleTitle-$title",
//                               maxLines: 2,
//                               style: "$styleTitle-$title".toTextStyleModel()?.asTextStyle.copyWith(color: Colors.black),
//                             ),
//                             Sizes.m.spacer(vertical: false),
//                           ],
//                         ),
//                       );
//                     }).toList());
//                   }).toList()
//                     ..add(Column(
//                       children: [
//                         Sizes.m.spacer(),
//                         ElevatedButton(
//                           onPressed: () {
//                             widget.onTextStyleChanged(context, newTextStyleString);
//                             Navigator.of(context).pop();
//                           },
//                           child: const Text('Change'),
//                         ),
//                       ],
//                     ))),
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }
