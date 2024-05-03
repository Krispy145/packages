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
  }) {
    _loadMap();
  }

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
    if (initialMarkers != null) {
      addMarkers(initialMarkers!);
    }
    if (markers.isNotEmpty) {
      animatedMapController.animateTo(
        dest: markers.firstOrNull?.position,
        zoom: 15,
      );
    }
    mapCenter = markers.firstOrNull?.position;
    isMapReady = true;
    setLoaded();
  }

  @override
  @action
  void onMapPositionChanged(MapPosition position, bool changed) {
    if (position.center == null || !isMapReady || !isEditing) return;
    final newMarker = MarkerModel(
      position: position.center!,
      id: markers.firstOrNull?.id ?? '',
      score: markers.firstOrNull?.score ?? 0,
    );
    setCenterMarker(marker: newMarker);
  }

  @action
  void setCenterMarker({MarkerModel? marker}) {
    if (marker == null) return;
    addMarker(
      marker,
      clearFirst: true,
    );
    mapCenter = marker.position;
  }

  @action
  Future<void> _loadMap() async {
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
