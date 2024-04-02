// import 'package:flutter/material.dart';
// import 'package:theme/app/app_theme.dart';
// import 'package:theme/changer/components/colors/color_circle.dart';
// import 'package:theme/extensions/string.dart';
// import 'package:utilities/helpers/extensions/build_context.dart';
// import 'package:utilities/sizes/spacers.dart';

// class ColorChangerView extends StatefulWidget {
//   final void Function(BuildContext context, String newColor) onColorChanged;
//   final String? currentColorString;
//   const ColorChangerView({super.key, required this.currentColorString, required this.onColorChanged});

//   @override
//   State<ColorChangerView> createState() => _ColorChangerViewState();
// }

// class _ColorChangerViewState extends State<ColorChangerView> {
//   String? colorString;

//   @override
//   void initState() {
//     colorString = widget.currentColorString;
//     super.initState();
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
//             ColorCircle(
//               color: colorString?.toColor() ?? Colors.transparent,
//               label: colorString ?? "Not Set",
//             ),
//             Sizes.m.spacer(),
//             Expanded(
//                 child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 mainAxisSize: MainAxisSize.min,
//                 children: AppTheme.currentColorModel!.toJson().entries.map((entry) {
//                   final title = entry.key;
//                   return InkWell(
//                     onTap: () {
//                       widget.onColorChanged(context, title);
//                       setState(() => colorString = title);
//                     },
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         ColorCircle(color: title.toColor() ?? Colors.transparent),
//                         Sizes.s.spacer(vertical: false),
//                         Text(
//                           title,
//                           style: const TextStyle(color: Colors.black),
//                         ),
//                         Sizes.m.spacer(vertical: false),
//                       ],
//                     ),
//                   );
//                 }).toList(),
//               ),
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }
