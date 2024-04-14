// import 'package:flutter/material.dart';
// import 'package:flutter/src/scheduler/ticker.dart';

// class FlutterMapTickerProvider extends TickerProvider {
//   @override
//   Ticker createTicker(TickerCallback onTick) {
//     return Ticker(onTick);
//   }
// }

// class FlutterMapManager extends ChangeNotifier {
//   final FlutterMapTickerProvider vsync = FlutterMapTickerProvider();
//   FlutterMapManager();
//   LatLng? previousLocation;
//   final superclusterController = SuperclusterMutableController();

//   //
//   /// INITIALISATION
//   ///

//   /// Initialise the [AnimatedMapController] for the Flutter Map
//   late final YAnimatedMapController animatedMapController = YAnimatedMapController(vsync: vsync, curve: Curves.decelerate, duration: YDurations.m.duration);

//   /// Initialise the Markers from the spot search endpoint
//   Future<void> initialiseMarkers() async {
//     YLogger.print("Initialise markers", [TheIvyCollectionDebugFeatures.markers, YDebugFeatures.project]);
//     final projects = YManagers.projectManager.currentProject.value.relationships.children;
//     if (projects != null) {
//       YLogger.print("Projects is not null", [TheIvyCollectionDebugFeatures.markers]);
//       final projectsWithCoordinates = projects.where((element) => element.numberPairs.coordinate != null);
//       YLogger.print("Projects with coordinates: ${projectsWithCoordinates.length}", [TheIvyCollectionDebugFeatures.markers]);

//       final projectMarkers = projectsWithCoordinates
//           .map((project) {
//             final coordinate = project.numberPairs.coordinate?.firstOrNull;
//             if (coordinate != null) {
//               // YLogger.print("Marker project: ${project.toMap()}", [TheIvyCollectionDebugFeatures.markers]);
//               return YLogoRingedMarker(
//                 project: project,
//                 // markerModel: MapMarkerModel(
//                 //   project: project,
//                 //   id: project.id,
//                 //   markerType: MarkerType.mapSpot,
//                 //   url: YManagers.projectManager.currentProject.value.imageLists.logoIcon?.firstOrNull?.images.first.sourceFile?.url ??
//                 //       "https://imgs.search.brave.com/PeNYe7u_wYcydyb8YUO58YK1Ci5CqqBoogUWQYBaAT0/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMudGhlbm91bnBy/b2plY3QuY29tL3Bu/Zy82ODE4NTQtMjAw/LnBuZw",
//                 //   coordinates: CoordinatesModel(coordinate.first, coordinate.second),
//                 //   type: TypeModel.fake,
//                 //   score: Random().nextDouble(),
//                 //   saved: true,
//                 // ),
//                 // onMarkerTapped: (context) => onMarkerTapped(context, project.id, LatLng(coordinate.first, coordinate.second)),
//               );
//             }
//           })
//           .whereType<YLogoRingedMarker>()
//           .toList();

//       YLogger.print("Projects markers: ${projectMarkers.length}", [TheIvyCollectionDebugFeatures.markers]);

//       if (projectMarkers.isNotEmpty) {
//         superclusterController.replaceAll(projectMarkers);
//         YLogger.print("Initialising spot markers on map: ${projectMarkers.length}", [TheIvyCollectionDebugFeatures.markers]);
//         await centerMarker(projectMarkers.first.project.id, projectMarkers.first.point);
//         previousLocation = animatedMapController.mapController.center;
//         notifyListeners();
//       } else {
//         YLogger.print("❌ Project markers is empty", [TheIvyCollectionDebugFeatures.markers]);
//       }
//     } else {
//       YLogger.print("❌ Projects is null", [TheIvyCollectionDebugFeatures.markers]);
//     }
//   }

//   void addMarker(MapMarkerModel markerModel, Project project) {
//     final marker = YLogoRingedMarker(project: project);
//     superclusterController.add(marker);
//     YLogger.print("Added spot marker on map: ${markerModel.id}", [TheIvyCollectionDebugFeatures.markers]);
//     notifyListeners();
//   }

//   ///
//   /// MAP TILES
//   ///

//   String get mapTilesUrl => YManagers.projectManager.currentProject.value.id == YManagers.projectManager.billsId
//       ? "https://api.mapbox.com/styles/v1/yellowbuild/clpuxijnf01dv01pah1rrdols/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoieWVsbG93YnVpbGQiLCJhIjoiY2xsdzNwdTF0MjE5azNkcDg2d3poaGo3MSJ9.R8Axb36MYKDK_u9c2gT-tw&optimize=true"
//       : "https://api.mapbox.com/styles/v1/yellowbuild/clpuwjyqd01dr01pab1l18r5t/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoieWVsbG93YnVpbGQiLCJhIjoiY2xsdzNwdTF0MjE5azNkcDg2d3poaGo3MSJ9.R8Axb36MYKDK_u9c2gT-tw&optimize=true";
//   final String openStreetMapUrl = "https://tile.openstreetmap.org/{z}/{x}/{y}.png";
//   // final String mapBoxUrl =
//   //     "https://api.mapbox.com/styles/v1/yellowbuild/clpuxijnf01dv01pah1rrdols/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoieWVsbG93YnVpbGQiLCJhIjoiY2xsdzNwdTF0MjE5azNkcDg2d3poaGo3MSJ9.R8Axb36MYKDK_u9c2gT-tw";
//   final String mapTilesUserPackageName = "ae.digitaloasis.map";
//   final double maxZoomLevel = 16;
//   final double minZoomLevel = 2;

//   ///
//   /// MARKER SELECTION
//   ///

//   final ValueNotifier<String?> selectedMarkerIdNotifier = ValueNotifier(null);
//   String? get selectedMarkerId => selectedMarkerIdNotifier.value;

//   // double unselectedSize = 64;
//   // double selectedSize = 80;

//   bool isMarkerSelected(String markerId) => markerId == selectedMarkerId;

//   Future<void> selectMarker(String markerId, LatLng coordinates) async {
//     if (markerId == selectedMarkerId) return;
//     selectedMarkerIdNotifier.value = markerId;
//     await centerMarker(markerId, coordinates);
//     notifyListeners();
//   }

//   void unselectMarker(BuildContext context) {
//     if (selectedMarkerId != null) {
//       selectedMarkerIdNotifier.value = null;
//       // YLogger.print("Unselecting marker ${MainShellRoute.mapDetailsState.currentState}", [TheIvyCollectionDebugFeatures.spotSearch]);
//       if (context.canPop()) {
//         context.pop();
//       }
//       notifyListeners();
//     }
//   }

//   ///
//   /// MOVE MAP
//   ///

//   Future<void> centerMarker(String markerId, LatLng coordinates) async {
//     YLogger.print("Centering map on marker: $markerId, ${coordinates.toString()}", [TheIvyCollectionDebugFeatures.map]);
//     await animatedMapController.animateTo(
//       dest: coordinates,
//       zoom: 14,
//     );
//   }

//   ///
//   /// INTERACTIONS & LIFECYCLE
//   ///

//   Future<void> onMapReady() async {
//     YLogger.print("onMapReady: Zooming to London", [TheIvyCollectionDebugFeatures.map]);
//     await animatedMapController.animatedFitBounds(
//       LatLngBounds(const LatLng(51.547536, -0.259400), const LatLng(51.468703, -0.012324)),
//       options: const FitBoundsOptions(),
//     );
//     await initialiseMarkers();
//   }

//   Future<void> onMarkerTapped(BuildContext context, String markerId, LatLng coordinates) async {
//     YLogger.print("onMarkerTapped: LatLng: $markerId", [TheIvyCollectionDebugFeatures.map]);
//     LocationDetailsRoute(projectId: markerId).push(context);
//     await selectMarker(markerId, coordinates);
//   }

//   void onMapLongPress(TapPosition tapPosition, LatLng point) {
//     YLogger.print("onMapLongPress: LatLng: ${point.toString()}", [TheIvyCollectionDebugFeatures.map]);
//   }

//   void onMapTapped(BuildContext context, TapPosition tapPosition, LatLng point) {
//     YLogger.print("onMapTapped: LatLng: ${point.toString()}", [TheIvyCollectionDebugFeatures.map]);
//     unselectMarker(context);
//   }

//   void onMapPositionChanged(MapPosition position, bool changed) {}

//   // Future<void> updateMarkers() async {
//   //   if (previousLocation != null) {
//   //     CustomPoint<double> previousScreenPoint = animatedMapController.mapController.latLngToScreenPoint(previousLocation!);
//   //     CustomPoint<double> currentScreenPoint = animatedMapController.mapController.latLngToScreenPoint(animatedMapController.mapController.center);
//   //     YLogger.print("Distance for marker change: ${currentScreenPoint.x - previousScreenPoint.x}", [TheIvyCollectionDebugFeatures.map]);
//   //     if (currentScreenPoint.x - previousScreenPoint.x > 150 || currentScreenPoint.x - previousScreenPoint.x < -150) {
//   //       previousLocation = animatedMapController.mapController.center;
//   //       List<MapMarkerModel?> results = await YManagers.api.getSpotDiscoverResults(animatedMapController.mapController.bounds);
//   //       if (results.isNotEmpty) {
//   //         results.whereType<MapMarkerModel>().forEach((markerModel) {
//   //           final marker = buildMarker(markerModel);
//   //           superclusterController.add(marker);
//   //         });
//   //         // superclusterController.replaceAll(markers);
//   //         YLogger.print("Updating spot markers on map: ${results.length}", [TheIvyCollectionDebugFeatures.spotSearch]);
//   //         notifyListeners();
//   //       }
//   //     }
//   //   }
//   // }

//   void onMapEvent(MapEvent event) {
//     // YLogger.print("MapEvent: ${event.source.name}", [TheIvyCollectionDebugFeatures.map]);
//     switch (event.source) {
//       case MapEventSource.dragStart:
//         // Doesn't get recognised (at least on web)
//         // unselectMarker();
//         break;
//       case MapEventSource.onDrag:
//         // unselectMarker();
//         // updateMarkers();
//         break;
//       default:
//     }
//   }
// }
