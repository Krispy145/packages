// import 'package:flutter/material.dart';
// import 'package:utilities/sizes/spacers.dart';

// /// [ColorCircle] for the ColorSchemesView.
// class ColorCircle extends StatelessWidget {
//   /// [color] of the circle.
//   final Color color;

//   /// [onTap] callback.
//   final VoidCallback? onTap;

//   /// [label] of the circle.
//   final String? label;

//   /// [ColorCircle] constructor.
//   const ColorCircle({
//     super.key,
//     required this.color,
//     this.label,
//     this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Container(
//             width: 40,
//             height: 40,
//             decoration: BoxDecoration(
//               color: color,
//               shape: BoxShape.circle,
//             ),
//           ),
//           Sizes.xs.spacer(),
//           if (label != null)
//             Text(
//               label!,
//               style: const TextStyle(fontSize: 12),
//             ),
//         ],
//       ),
//     );
//   }
// }
