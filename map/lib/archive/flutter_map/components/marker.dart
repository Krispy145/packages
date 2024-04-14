// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:the_ivy_collection/managers/managers.dart';
// import 'package:y_package/blocks/containers/border_size.dart';
// import 'package:y_package/blocks/containers/import.dart';
// import 'package:y_package/blocks/containers/shape.dart';
// import 'package:y_package/blocks/images/image.dart';
// import 'package:y_package/blocks/images/image_provider.dart';
// import 'package:y_package/data/fake_data.dart';
// import 'package:y_package/extensions/build_context_extension.dart';
// import 'package:y_package/extensions/color_extension.dart';
// import 'package:y_package/layout/edge_insets.dart';
// import 'package:y_package/layout/spacers.dart';
// import 'package:y_package/models/file.dart';
// import 'package:y_package/models/palettes.dart';
// import 'package:y_package/models/project.dart';
// import 'package:y_package/styles/color_palette_wrapper.dart';
// import 'package:y_package/styles/text/import.dart';

// class YLogoRingedMarker extends Marker {
//   // MapMarkerModel markerModel;
//   Project project;


//   YLogoRingedMarker({
//     // required this.markerModel,
//     required this.project,
//   }) : super(
//           width: YRingedMarkerWrapper.selectedSize,
//           height: YRingedMarkerWrapper.selectedSize,
//           point: project.numberPairs.coordinate?.firstOrNull?.latLng ?? FakeData.fakeLondon, 
//           builder: (context) {
//             const String fallbackUrl =
//                 "https://imgs.search.brave.com/PeNYe7u_wYcydyb8YUO58YK1Ci5CqqBoogUWQYBaAT0/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudGhlbm91bnBy/b2plY3QuY29tL3Bu/Zy82ODE4NTQtMjAw/LnBuZw";
//             final YImageProvider logoProvider = YManagers.projectManager.currentProject.value.imageLists.logoIcon?.firstOrNull?.images.first ?? YImageProvider.fromURL(YSourceFile(url: fallbackUrl));
//             return YRingedMarkerWrapper(
//               selected: YManagers.flutterMapManager.isMarkerSelected(project.id),
//               onTapped: () => YManagers.flutterMapManager.onMarkerTapped(
//                 context,
//                 project.id,
//                 project.numberPairs.coordinate?.firstOrNull?.latLng ?? FakeData.fakeLondon,
//               ),
//               childBuilder: (context) => YImage(fit: BoxFit.cover, imageProvider: logoProvider),
//               project: project,
//             );
//           },
//         );

//   @override
//   int get hashCode => super.hashCode ^ project.id.hashCode;

//   @override
//   bool operator ==(covariant YLogoRingedMarker other) {
//     if (identical(this, other)) return true;
//     return other.project.id == project.id;
//   }
// }

// class YNumberRingedMarker extends Marker {
//   int markerCount;
//   // MapMarkerModel highestMarkerModel;
//   Project highestProject;
//   YNumberRingedMarker({
//     // required this.highestMarkerModel,
//     required this.highestProject,
//     required this.markerCount,
//   }) : super(
//           width: YRingedMarkerWrapper.selectedSize,
//           height: YRingedMarkerWrapper.selectedSize,
//           point: highestProject.numberPairs.coordinate?.firstOrNull?.latLng ?? FakeData.fakeLondon, 
//           builder: (context) {
//             return YRingedMarkerWrapper(
//               selected: false,
//               onTapped: null,
//               childBuilder: (context) => YText(markerCount.toString(), YTextStyles.projectTitle(weight: YFontWeight.bold, fontSize: YFontSize.m, fill: context.palette.body)),
//               project: highestProject,
//             );
//           },
//         );

//   @override
//   int get hashCode => super.hashCode ^ highestProject.id.hashCode ^ markerCount.hashCode;

//   @override
//   bool operator ==(covariant YNumberRingedMarker other) {
//     if (identical(this, other)) return true;
//     return other.highestProject.id == highestProject.id;
//   }
// }

// class YRingedMarkerWrapper extends StatelessWidget {
//   static const double selectedSize = 56;
//   static const double unselectedSize = 42;

//   final Project project;

//   final bool selected;
//   final Function()? onTapped;
//   final Widget Function(BuildContext) childBuilder;

//   const YRingedMarkerWrapper({
//     Key? key,
//     required this.selected,
//     required this.onTapped,
//     required this.childBuilder,
//     required this.project,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ProjectWrapper(
//       project: project,
//       childBuilder: (context) {
//         return ColorPaletteWrapper(
//           palette: PalettesEnum.brightRegular,
//           childBuilder: (context) {
//             return ValueListenableBuilder<String?>(
//                 valueListenable: YManagers.flutterMapManager.selectedMarkerIdNotifier,
//                 builder: (context, id, widget) {
//                   return GestureDetector(
//                     onTap: onTapped,
//                     child: Center(
//                       child: YContainer(
//                         alignment: Alignment.center,
//                         shape: YShape.circle(size: id == project.id ? selectedSize : unselectedSize),
//                         fill: Colors.transparent.toYFill(),
//                         border: YBorder(
//                           fill: ((context.palette.backgroundPrimary.color?.value ?? Colors.white).withOpacity(0.5)).toYFill(),
//                           size: YBorderSize.xs,
//                         ),
//                         padding: YEdgeInsets.all(context, YSizes.xxxs),
//                         child: YContainer(
//                           fill: context.palette.backgroundPrimary,
//                           shape: const YShape.circle(),
//                           child: Center(
//                             child: Padding(padding: const EdgeInsets.all(8.0), child: childBuilder(context)),
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 });
//           },
//         );
//       },
//     );
//   }
// }
