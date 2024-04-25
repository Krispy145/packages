// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:flutter_map_supercluster/flutter_map_supercluster.dart';
import 'package:latlong2/latlong.dart';
import 'package:map/constants/map_constants.dart';
import 'package:map/presentation/markers/helpers/cluster_data.dart';
import 'package:map/presentation/markers/location_marker.dart';
import 'package:map/presentation/markers/number_marker.dart';
import 'package:map/utils/loggers.dart';
import 'package:mobx/mobx.dart';
import 'package:theme/app/app.dart';
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
  final Marker Function(MarkerModel marker)? singleMarkerBuilder;

  _MapStore({required this.mapTilesUrl, this.singleMarkerBuilder}) {
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
  ObservableSet<MarkerModel> _markers = ObservableSet(name: "Markers Set");

  @computed
  Set<MarkerModel> get markers => _markers.nonObservableInner;

  /// Initialise the [AnimatedMapController] for the Flutter Map
  late final AnimatedMapController animatedMapController;

  late MapOptions mapOptions = MapOptions(
    onMapReady: onMapReady,
    onTap: onMapTapped,
    onMapEvent: onMapEvent,
    onPositionChanged: onMapPositionChanged,
    backgroundColor: AppTheme.currentColorModel?.background ?? const Color(0xFFE0E0E0),
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
    if (_markers.isNotEmpty) {
      AppLogger.print("Initialising spot markers on map: ${_markers.length}", [MapLoggers.markers]);
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
      superclusterController.removeAll(_markers.map(buildSingleMarker).toList());
      _markers.clear();
    }
    _markers.add(markerModel);
    superclusterController.add(buildSingleMarker(markerModel));
    AppLogger.print("Added spot marker on map: ${markerModel.id}", [MapLoggers.markers]);
  }

  @action
  void addMarkers(List<MarkerModel> newMarkerModels, {bool clearFirst = false}) {
    AppLogger.print("Calling add markers (clear = $clearFirst)", [MapLoggers.markers]);

    final newMarkerSet = newMarkerModels.toSet();

    if (clearFirst) {
      // Find markers to remove (present in _markers but not in newMarkerSet)
      final toRemove = _markers.difference(newMarkerSet).toList();
      superclusterController.removeAll(toRemove.map(buildSingleMarker).toList());
      _markers.retainWhere((element) => newMarkerModels.contains(element));
    }
    // Find markers to add (present in newMarkerSet but not in _markers)
    final toAdd = newMarkerSet.difference(_markers).toList();
    superclusterController.addAll(toAdd.map(buildSingleMarker).toList());

    _markers.addAll(newMarkerModels);
    AppLogger.print("Markers after: count: ${_markers.length} ==> ${newMarkerModels.map((e) => '${e.id} - ${e.position}').toList()} (_markers: ${_markers.length})", [MapLoggers.markers]);
  }

  Marker buildSingleMarker(MarkerModel markerModel) {
    if (singleMarkerBuilder != null) return singleMarkerBuilder!(markerModel);
    return IconMarker(icon: Icons.location_pin, iconSize: 56, markerModel: markerModel, isSelected: (markerModel) => isMarkerSelected(markerModel.id), onMarkerTapped: onMarkerTapped);
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
        break;
      default:
    }
  }
}
