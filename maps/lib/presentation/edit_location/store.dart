import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:maps/data/models/marker_model.dart';
import 'package:maps/presentation/map/store.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

/// [EditLocationMapStore] is a class that uses [_EditLocationMapStore] to manage state of the map feature.
class EditLocationMapStore = _EditLocationMapStore with _$EditLocationMapStore;

/// [_EditLocationMapStore] is a class that manages the state of the map feature.
abstract class _EditLocationMapStore extends MapStore with Store {
  final List<MarkerModel>? initialMarkers;
  _EditLocationMapStore({
    required super.mapTilesUrl,
    // ignore: unused_element
    super.singleMarkerBuilder,
    // ignore: unused_element
    this.initialMarkers,
    this.mapCenter,
    this.startZoomLevel = 12,
  }) {
    _loadMap();
  }

  final double startZoomLevel;

  @observable
  LatLng? mapCenter;

  @observable
  bool isEditing = false;

  @action
  void toggleEditing() {
    isEditing = !isEditing;
  }

  @override
  Future<void> onMapReady() async {
    setLoading();
    await initializeMarkers();
    mapCenter = markers.firstOrNull?.position ?? const LatLng(51.5072, -0.1276);
    animatedMapController.animateTo(
      dest: mapCenter,
      zoom: startZoomLevel,
    );
    isMapReady = true;
    setLoaded();
  }

  @override
  @action
  void onMapPositionChanged(MapPosition position, bool changed) {
    if (position.center == null || !isMapReady || !isEditing) return;
    setCenterMarker(center: position.center);
  }

  @action
  void setCenterMarker({LatLng? center}) {
    if (center == null) return;
    final newMarker = MarkerModel(
      position: center,
      id: markers.firstOrNull?.id ?? '',
      score: markers.firstOrNull?.score ?? 0,
    );
    addMarker(newMarker, clearFirst: true);
    mapCenter = center;
  }

  @action
  Future<void> _loadMap() async {
    toggleLocked();
    // setLoading();
    // try {
    //   googlePlaces = await search.textSearchGooglePlaces(parameters: const GoogleTextSearchParameters(query: "Thrift stores Near me"));
    //   AppLogger.print("GooglePlacesSearch.init success: $markers", [MapLoggers.search]);
    // } catch (e) {
    //   setError();
    //   AppLogger.print("GooglePlacesSearch.init error: $e", [MapLoggers.search]);
    // }
    setLoaded();
  }
}
