import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:flutter_map_supercluster/flutter_map_supercluster.dart';
import 'package:latlong2/latlong.dart';
import 'package:map/constants/map_constants.dart';
import 'package:map/presentation/markers/helpers/cluster_data.dart';
import 'package:map/presentation/markers/number_marker.dart';
import 'package:map/presentation/markers/ringed_marker.dart';
import 'package:map/utils/loggers.dart';
import 'package:mobx/mobx.dart';
import 'package:utilities/helpers/ticker_provider.dart';
import 'package:utilities/logger/logger.dart';
import 'package:utilities/widgets/load_state/base_store.dart';

import '../../data/models/marker_model.dart';

part 'store.g.dart';

/// [MapStore] is a class that uses [_MapStore] to manage state of the map feature.
class MapStore = _MapStore with _$MapStore;

/// [_MapStore] is a class that manages the state of the map feature.
abstract class _MapStore extends LoadStateStore with Store {
  final DOTickerProvider vsync = DOTickerProvider();
  final void Function()? onMapViewReady;
  final void Function()? onDragEnd;
  _MapStore({required this.mapTilesUrl, this.onMapViewReady, this.onDragEnd}) {
    setLoading();
    animatedMapController = AnimatedMapController(
      vsync: vsync,
      curve: Curves.decelerate,
      duration: Durations.medium1,
    );
    setLoaded();
  }

  final superclusterController = SuperclusterMutableController();

  @observable
  bool isMapReady = false;

  @observable
  ObservableSet<MarkerModel> markers = ObservableSet(name: "Markers Set");

  /// Initialise the [AnimatedMapController] for the Flutter Map
  late final AnimatedMapController animatedMapController;

  late MapOptions mapOptions = MapOptions(
    onMapReady: onMapReady,
    onTap: onMapTapped,
    onMapEvent: onMapEvent,
    interactionOptions: const InteractionOptions(flags: InteractiveFlag.all & ~InteractiveFlag.rotate),
  );

  @observable
  ObservableList<MarkerModel> selectedMarkerIds = ObservableList<MarkerModel>();

  ///
  /// MAP TILES
  ///

  final String mapTilesUserPackageName = "ae.digitaloasis";
  final String mapTilesUrl;
  final String openStreetMapUrl = "https://tile.openstreetmap.org/{z}/{x}/{y}.png";

  ///
  /// INITIALISATION
  ///

  /// Initialise the Markers from the spot search endpoint
  Future<void> initialiseMarkers() async {
    AppLogger.print("Initialise markers", [MapLoggers.markers, MapLoggers.map]);
    // Get markers
    if (markers.isNotEmpty) {
      AppLogger.print("Initialising spot markers on map: ${markers.length}", [MapLoggers.markers]);
    } else {
      AppLogger.print("❌ Project markers is empty", [MapLoggers.markers]);
    }
    superclusterController.addAll(markers.map(buildSingleMarker).toList());
  }

  ///
  /// MARKERS
  ///

  @action
  void addMarker(MarkerModel markerModel, {clearFirst = false}) {
    if (clearFirst) {
      superclusterController.removeAll(markers.map(buildSingleMarker).toList());
      markers.clear();
    }
    markers.add(markerModel);
    superclusterController.add(buildSingleMarker(markerModel));
    AppLogger.print("Added spot marker on map: ${markerModel.id}", [MapLoggers.markers]);
  }

  @action
  void addMarkers(List<MarkerModel> newMarkerModels, {bool clearFirst = false}) {
    AppLogger.print("Calling add markers (clear = $clearFirst)", [MapLoggers.markers]);

    final newMarkerSet = newMarkerModels.toSet();

    if (clearFirst) {
      // Find markers to remove (present in _markers but not in newMarkerSet)
      final toRemove = markers.difference(newMarkerSet).toList();
      superclusterController.removeAll(toRemove.map(buildSingleMarker).toList());
      markers.retainWhere((element) => newMarkerModels.contains(element));
    }
    // Find markers to add (present in newMarkerSet but not in _markers)
    final toAdd = newMarkerSet.difference(markers).toList();
    superclusterController.addAll(toAdd.map(buildSingleMarker).toList());

    markers.addAll(newMarkerModels);
    AppLogger.print("Markers after: count: ${markers.length} ==> ${newMarkerModels.map((e) => '${e.id} - ${e.position}').toList()} (_markers: ${markers.length})", [MapLoggers.markers]);
  }

  Marker buildSingleMarker(MarkerModel markerModel) {
    return LogoRingedMarker(markerModel: markerModel, isSelected: (markerModel) => isMarkerSelected(markerModel.id), onMarkerTapped: onMarkerTapped);
  }

  Marker buildClusterMarker(MarkerClusterData clusterData, int count) {
    final topMarker = clusterData.topMarker;
    return NumberRingedMarker(topMarkerModel: topMarker, markerCount: count, isSelected: (markerModel) => isMarkerSelected(markerModel.id));
  }

  ///
  /// MARKER SELECTION
  ///

  @observable
  String? selectedMarkerId;

  bool isMarkerSelected(String markerId) => markerId == selectedMarkerId;

  @action
  Future<void> selectMarker(String markerId, LatLng coordinates) async {
    if (markerId == selectedMarkerId) return;
    selectedMarkerId = markerId;
    await centerMarker(markerId, coordinates);
  }

  @action
  void unselectMarker() {
    selectedMarkerId = null;
  }

  ///
  /// MOVE MAP
  ///

  @action
  Future<void> centerMarker(String markerId, LatLng coordinates) async {
    AppLogger.print("Centering map on marker: $markerId, ${coordinates.toString()}", [MapLoggers.map]);
    await animatedMapController.animateTo(dest: coordinates, zoom: 14);
  }

  ///
  /// INTERACTIONS & LIFECYCLE
  ///

  Future<void> onMapReady() async {
    setLoading();
    AppLogger.print("onMapReady: Zooming to London", [MapLoggers.map]);
    await animatedMapController.animatedFitCamera(
      cameraFit: CameraFit.bounds(
        bounds: MapConstants.londonBounds,
        padding: const EdgeInsets.all(0),
      ),
    );
    await initialiseMarkers();
    onMapViewReady?.call();
    isMapReady = true;
    setLoaded();
  }

  Future<void> onMarkerTapped(String markerId, LatLng coordinates) async {
    AppLogger.print("onMarkerTapped: LatLng: $markerId", [MapLoggers.map]);
    if (markerId != selectedMarkerId) {
      selectMarker(markerId, coordinates);
      // Could go to marker details here...
    }
  }

  void onMapLongPress(TapPosition tapPosition, LatLng point) {
    AppLogger.print("onMapLongPress: LatLng: ${point.toString()}", [MapLoggers.map]);
  }

  void onMapTapped(TapPosition tapPosition, LatLng point) {
    AppLogger.print("onMapTapped: LatLng: ${point.toString()}", [MapLoggers.map]);
    unselectMarker();
  }

  void onMapPositionChanged(MapPosition position, bool changed) {}

  void onMapEvent(MapEvent event) {
    switch (event.source) {
      case MapEventSource.dragStart:
        break;
      case MapEventSource.onDrag:
        break;
      case MapEventSource.dragEnd:
        onDragEnd?.call();
      default:
    }
  }
}
