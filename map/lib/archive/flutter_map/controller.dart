// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:flutter_map/plugin_api.dart';
// import 'package:flutter_map_animations/flutter_map_animations.dart';
// import 'package:latlong2/latlong.dart';

// //TODO: Beggining stages of the YMapController with the override of animateTo to take in an offset
// class YAnimatedMapController extends AnimatedMapController {
//   YAnimatedMapController({required super.vsync, super.duration, super.curve});

//   @override
//   Future<void> animateTo({LatLng? dest, double? zoom, double? rotation, Curve? curve, String? customId, Offset offset = Offset.zero}) {
//     LatLng? newCenter = dest;
//     if (offset != Offset.zero && dest != null) {
//       final newPoint = const Epsg3857().latLngToPoint(dest, 14);
//       newCenter = const Epsg3857().pointToLatLng(
//         super.mapController.rotatePoint(
//               newPoint,
//               newPoint - CustomPoint(offset.dx, offset.dy),
//             ),
//         14,
//       );
//     }
//     return super.animateTo(dest: newCenter, zoom: zoom, rotation: rotation, curve: curve, customId: customId);
//   }
// }
