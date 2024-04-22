import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_animations/flutter_map_animations.dart';
import 'package:flutter_map_supercluster/flutter_map_supercluster.dart';
import 'package:latlong2/latlong.dart';
import 'package:map/presentation/markers/helpers/cluster_data.dart';
import 'package:map/presentation/markers/number_marker.dart';
import 'package:map/presentation/markers/ringed_marker.dart';
import 'package:map/utils/loggers.dart';
import 'package:mobx/mobx.dart';
import 'package:utilities/helpers/ticker_provider.dart';
import 'package:utilities/logger/logger.dart';
import 'package:utilities/widgets/load_state/base_store.dart';

import '../../data/models/marker_model.dart';
import '/domain/repositories/map.repository.dart';

part 'store.g.dart';

/// [MapStore] is a class that uses [_MapStore] to manage state of the map feature.
class MapStore = _MapStore with _$MapStore;

/// [_MapStore] is a class that manages the state of the map feature.
abstract class _MapStore extends LoadStateStore with Store {
  _MapStore({required this.mapTilesUrl}) {
    reaction((p0) => markers, (p0) => _refreshMapWithMarkers());
  }

  void _refreshMapWithMarkers() {
    // TODO: Improve logic for efficiency
    superclusterController.replaceAll(markers.map(buildSingleMarker).toList());
    AppLogger.print("Reaction: Added markers to supercluster", [MapLoggers.markers]);
  }

  /// [repository] is an instance of [MarkerRepository].
  final MarkerRepository repository = MarkerRepository();

  final superclusterController = SuperclusterMutableController();

  @observable
  ObservableSet<MarkerModel> markers = ObservableSet();

  //
  /// INITIALISATION
  ///

  final DOTickerProvider vsync = DOTickerProvider();

  /// Initialise the [AnimatedMapController] for the Flutter Map
  late final AnimatedMapController animatedMapController = AnimatedMapController(vsync: vsync, curve: Curves.decelerate, duration: Durations.medium1);

  late MapOptions mapOptions = MapOptions(
    onMapReady: onMapReady,
    onTap: onMapTapped,
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
  /// MARKERS
  ///

  @action
  void addMarkers(List<MarkerModel> newMarkerModels) {
    print("Calling add markers");
    markers.addAll(newMarkerModels);
  }

  Marker buildSingleMarker(MarkerModel markerModel) {
    return LogoRingedMarker(markerModel: markerModel, isSelected: (markerModel) => isMarkerSelected(markerModel.id), onMarkerTapped: onMarkerTapped);
  }

  Marker buildClusterMarker(MarkerClusterData clusterData, int count) {
    final topMarker = clusterData.topMarker;
    return NumberRingedMarker(topMarkerModel: topMarker, markerCount: count, isSelected: (markerModel) => isMarkerSelected(markerModel.id));
  }

  //
  /// INITIALISATION
  ///

  /// Initialise the Markers from the spot search endpoint
  Future<void> initialiseMarkers() async {
    AppLogger.print("Initialise markers", [MapLoggers.markers, MapLoggers.map]);
    // Get markers
    if (markers.isNotEmpty) {
      AppLogger.print("Initialising spot markers on map: ${markers.length}", [MapLoggers.markers]);
      final markerToCenterOn = markers.first;
      await centerMarker(markerToCenterOn.id, markerToCenterOn.position);
    } else {
      AppLogger.print("❌ Project markers is empty", [MapLoggers.markers]);
    }
    _refreshMapWithMarkers();
  }

  @action
  void addMarker(MarkerModel markerModel) {
    final marker = buildSingleMarker(markerModel);
    superclusterController.add(marker);
    AppLogger.print("Added spot marker on map: ${markerModel.id}", [MapLoggers.markers]);
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
    await animatedMapController.animateTo(
      dest: coordinates,
      zoom: 14,
    );
  }

  ///
  /// INTERACTIONS & LIFECYCLE
  ///

  Future<void> onMapReady() async {
    AppLogger.print("onMapReady: Zooming to London", [MapLoggers.map]);
    await animatedMapController.animatedFitCamera(
      cameraFit: CameraFit.bounds(
        bounds: LatLngBounds(const LatLng(51.547536, -0.259400), const LatLng(51.468703, -0.012324)),
        padding: const EdgeInsets.all(0),
      ),
    );
    await initialiseMarkers();
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
      default:
    }
  }
}
