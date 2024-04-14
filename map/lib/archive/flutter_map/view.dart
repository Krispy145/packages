// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:flutter/material.dart';
// import 'package:flutter_map/plugin_api.dart';
// import 'package:flutter_map_supercluster/flutter_map_supercluster.dart';
// import 'package:provider/provider.dart';
// import 'package:the_ivy_collection/managers/managers.dart';
// import 'package:the_ivy_collection/views/flutter_map/components/cluster_data.dart';
// import 'package:the_ivy_collection/views/flutter_map/components/marker.dart';
// import 'package:the_ivy_collection/managers/project.dart';
// import 'package:the_ivy_collection/managers/flutter_map.dart';

// class FlutterMapView extends StatelessWidget {
//   FlutterMapView({super.key});

//   final FlutterMapManager flutterManager = YManagers.flutterMapManager;
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ProjectManager>(
//       builder: (context, projectManager, w) {
//         return Scaffold(
//           extendBodyBehindAppBar: true,
//           resizeToAvoidBottomInset: false,
//           body: FlutterMap(
//             key: ValueKey("map${YManagers.projectManager.currentProject.value.id}"),
//             mapController: flutterManager.animatedMapController.mapController,
//             options: MapOptions(
//               onTap: (tapPosition, coordinates) => flutterManager.onMapTapped(context, tapPosition, coordinates),
//               onPositionChanged: flutterManager.onMapPositionChanged,
//               onMapReady: flutterManager.onMapReady,
//               onLongPress: flutterManager.onMapLongPress,
//               onMapEvent: flutterManager.onMapEvent,
//             ),
//             nonRotatedChildren: [
//               RichAttributionWidget(
//                 showFlutterMapAttribution: false,
//                 attributions: [
//                   TextSourceAttribution("© Mapbox", prependCopyright: false, onTap: () => launchUrl(Uri.parse('https://www.mapbox.com/about/maps/'))),
//                   TextSourceAttribution("© OpenStreetMap", prependCopyright: false, onTap: () => launchUrl(Uri.parse('http://www.openstreetmap.org/copyright'))),
//                   TextSourceAttribution("Improve this map", prependCopyright: false, onTap: () => launchUrl(Uri.parse('https://www.mapbox.com/map-feedback/'))),
//                 ],
//               )
//             ],
//             children: [
//               TileLayer(
//                 urlTemplate: flutterManager.mapTilesUrl, // context.project.text.mapTilesUrl?.firstOrNull?.value ?? flutterManager.mapBoxUrl,
//                 userAgentPackageName: flutterManager.mapTilesUserPackageName,
//                 maxNativeZoom: flutterManager.maxZoomLevel.toInt(),
//                 maxZoom: flutterManager.maxZoomLevel,
//                 minNativeZoom: flutterManager.minZoomLevel.toInt(),
//                 minZoom: flutterManager.minZoomLevel,
//               ),
//               SuperclusterLayer.mutable(
//                 controller: flutterManager.superclusterController,
//                 indexBuilder: IndexBuilders.rootIsolate,
//                 clusterWidgetSize: const Size.square(YRingedMarkerWrapper.selectedSize),
//                 calculateAggregatedClusterData: true,
//                 loadingOverlayBuilder: (context) => const SizedBox.shrink(),
//                 clusterDataExtractor: (marker) => ProjectMarkerClusterData(marker as YLogoRingedMarker),
//                 builder: (context, position, markerCount, extraClusterData) {
//                   final clusterData = extraClusterData as ProjectMarkerClusterData;
//                   final project = clusterData.highestScoreProject;
//                   if (markerCount == 1) {
//                     return YLogoRingedMarker(project: project).builder(context);
//                   } else {
//                     return YNumberRingedMarker(highestProject: project, markerCount: markerCount).builder(context);
//                   }
//                 },
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   void launchUrl(Uri url) {
//     // TODO: Launch URL
//   }
// }
