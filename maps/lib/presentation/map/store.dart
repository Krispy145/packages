import "package:flutter/material.dart";
import "package:flutter_map/flutter_map.dart";
import "package:flutter_map_animations/flutter_map_animations.dart";
import "package:flutter_map_supercluster/flutter_map_supercluster.dart";
import "package:latlong2/latlong.dart";
import "package:maps/constants/map_constants.dart";
import "package:maps/presentation/markers/helpers/cluster_data.dart";
import "package:maps/presentation/markers/icon_marker.dart";
import "package:maps/presentation/markers/number_marker.dart";
import "package:maps/utils/loggers.dart";
import "package:mobx/mobx.dart";
import "package:theme/app/app.dart";
import "package:utilities/helpers/ticker_provider.dart";
import "package:utilities/logger/logger.dart";
import "package:utilities/widgets/load_state/store.dart";

import "../../data/models/marker_model.dart";

part "store.g.dart";

/// [MapStore] is a class that uses [_MapStore] to manage state of the map feature.
class MapStore = _MapStore with _$MapStore;

/// [_MapStore] is a class that manages the state of the map feature.
abstract class _MapStore with LoadStateStore, Store {
  final LYTickerProvider vsync = LYTickerProvider();
  final Marker Function(MarkerModel marker)? singleMarkerBuilder;
  _MapStore({
    required this.mapTilesUrl,
    this.singleMarkerBuilder,
  }) {
    setLoading();
    animatedMapController = AnimatedMapController(
      vsync: vsync,
      curve: Curves.decelerate,
      duration: Durations.medium1,
    );
    setLoaded();
  }

  @observable
  bool isLocked = false;

  @action
  void toggleLocked() {
    isLocked = !isLocked;
  }

  final superclusterController = SuperclusterMutableController();

  @observable
  bool isMapReady = false;

  @observable
  ObservableSet<MarkerModel> _markers = ObservableSet(name: "Markers Set");

  @computed
  Set<MarkerModel> get markers => _markers.nonObservableInner;

  /// Initialize the [AnimatedMapController] for the Flutter Map
  late final AnimatedMapController animatedMapController;

  @computed
  MapOptions get mapOptions => MapOptions(
        onMapReady: onMapReady,
        onTap: onMapTapped,
        onMapEvent: onMapEvent,
        onPositionChanged: onMapPositionChanged,
        backgroundColor:
            AppTheme.currentColorModel?.background ?? const Color(0xFFE0E0E0),
        interactionOptions: isLocked
            ? const InteractionOptions(
                flags: InteractiveFlag.none,
              )
            : const InteractionOptions(
                flags: InteractiveFlag.all & ~InteractiveFlag.rotate,
              ),
      );

  @observable
  ObservableList<MarkerModel> selectedMarkerIds = ObservableList<MarkerModel>();

  ///
  /// MAP TILES
  ///

  final String mapTilesUrl;
  final String mapTilesUserPackageName = "ae.digitaloasis";
  final String openStreetMapUrl =
      "https://tile.openstreetmap.org/{z}/{x}/{y}.png";

  ///
  /// INITIALIZATION
  ///

  /// Initialize the Markers from after the map is ready
  Future<void> initializeMarkers() async {
    AppLogger.print("Initialize markers", [MapLoggers.markers, MapLoggers.map]);
    // Get markers
    if (_markers.isNotEmpty) {
      AppLogger.print(
        "Initializing markers on map: ${_markers.length}",
        [MapLoggers.markers],
      );
    } else {
      AppLogger.print("❌ Project markers is empty", [MapLoggers.markers]);
    }
    superclusterController.addAll(_markers.map(buildSingleMarker).toList());
  }

  ///
  /// MARKERS
  ///

  @action
  void addMarker(MarkerModel markerModel, {bool clearFirst = false}) {
    if (clearFirst) {
      superclusterController
          .removeAll(_markers.map(buildSingleMarker).toList());
      _markers.clear();
    }
    _markers.add(markerModel);
    superclusterController.add(buildSingleMarker(markerModel));
    AppLogger.print(
      "Added spot marker on map: ${markerModel.id}",
      [MapLoggers.markers],
    );
  }

  @action
  void addMarkers(
    List<MarkerModel> newMarkerModels, {
    bool clearFirst = false,
  }) {
    AppLogger.print(
      "Calling add markers (clear = $clearFirst)",
      [MapLoggers.markers],
    );

    final newMarkerSet = newMarkerModels.toSet();

    if (clearFirst) {
      // Find markers to remove (present in _markers but not in newMarkerSet)
      final toRemove = _markers.difference(newMarkerSet).toList();
      superclusterController
          .removeAll(toRemove.map(buildSingleMarker).toList());
      _markers.retainWhere((element) => newMarkerModels.contains(element));
    }
    // Find markers to add (present in newMarkerSet but not in _markers)
    final toAdd = newMarkerSet.difference(_markers).toList();
    superclusterController.addAll(toAdd.map(buildSingleMarker).toList());

    _markers.addAll(newMarkerModels);
    AppLogger.print(
      "Markers after: count: ${_markers.length} ==> ${newMarkerModels.map((e) => '${e.id} - ${e.position}').toList()} (_markers: ${_markers.length})",
      [MapLoggers.markers],
    );
  }

  Marker buildSingleMarker(MarkerModel markerModel) {
    if (singleMarkerBuilder != null) return singleMarkerBuilder!(markerModel);
    return IconMarker(
      icon: Icons.location_pin,
      iconSize: 56,
      markerModel: markerModel,
      isSelected: (markerModel) => isMarkerSelected(markerModel.id),
      onMarkerTapped: onMarkerTapped,
    );
  }

  Marker buildClusterMarker(MarkerClusterData clusterData, int count) {
    final topMarker = clusterData.topMarker;
    return NumberRingedMarker(
      topMarkerModel: topMarker,
      markerCount: count,
      isSelected: (markerModel) => isMarkerSelected(markerModel.id),
      onTopMarkerTapped: onTopMarkerTapped,
    );
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
    if (selectedMarkerId != null) {
      selectedMarkerId = null;
    }
  }

  ///
  /// MOVE MAP
  ///

  @action
  Future<void> centerMarker(String markerId, LatLng coordinates) async {
    AppLogger.print(
      "Centering map on marker: $markerId, $coordinates",
      [MapLoggers.map],
    );
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
      ),
    );
    await initializeMarkers();
    isMapReady = true;
    setLoaded();
  }

  Future<void> onMarkerTapped(MarkerModel markerModel) async {
    AppLogger.print(
      "onMarkerTapped: LatLng: ${markerModel.id}",
      [MapLoggers.map],
    );
    if (markerModel.id != selectedMarkerId) {
      selectMarker(markerModel.id, markerModel.position);
      // Could go to marker details here...
    }
  }

  /// [onTopMarkerTapped] is a helper function for zooming a cluster marker,
  /// need to get the cluster markers to build a bounds to fit camera to
  Future<void> onTopMarkerTapped(MarkerModel markerModel) async {
    AppLogger.print(
      "onTopMarkerTapped: LatLng: ${markerModel.id}",
      [MapLoggers.map],
    );
    if (markerModel.id != selectedMarkerId) {
      animatedMapController.animateTo(
        dest: markerModel.position,
        zoom: animatedMapController.mapController.camera.zoom + 1.5,
      );
    }
  }

  void onMapLongPress(TapPosition tapPosition, LatLng point) {
    AppLogger.print(
      "onMapLongPress: LatLng: $point",
      [MapLoggers.map],
    );
  }

  void onMapTapped(TapPosition tapPosition, LatLng point) {
    AppLogger.print(
      "onMapTapped: LatLng: $point",
      [MapLoggers.map],
    );
    unselectMarker();
  }

  void onMapPositionChanged(MapPosition position, bool changed) {
    if (changed) {
      unselectMarker();
    }
  }

  void onDragStart() {
    unselectMarker();
  }

  void onDragEnd() {}

  void onDrag() {}

  void onMapEvent(MapEvent event) {
    switch (event.source) {
      case MapEventSource.dragStart:
        onDragStart();
        break;
      case MapEventSource.onDrag:
        onDrag();
        break;
      case MapEventSource.dragEnd:
        onDragEnd();
        break;
      default:
    }
  }
}
