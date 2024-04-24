import 'package:forms/presentation/components/base/store.dart';
import 'package:forms/presentation/components/double/store.dart';
import 'package:latlong2/latlong.dart';
import 'package:map/constants/map_constants.dart';
import 'package:map/data/models/marker_model.dart';
import 'package:map/presentation/map/store.dart';
import 'package:map/utils/loggers.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:mobx/mobx.dart';
import 'package:utilities/logger/logger.dart';

part 'store.g.dart';

class SearchMapFormFieldStore = _SearchMapFormFieldStore with _$SearchMapFormFieldStore;

abstract class _SearchMapFormFieldStore extends BaseFormFieldStore<LatLng?> with Store {
  final String mapTilesUrl;
  _SearchMapFormFieldStore({
    required this.mapTilesUrl,
    required super.value,
    required super.onValueChanged,
    required super.title,
  }) {
    _loadMap();
  }

  late final SearchBoxAPI search;
  late final MapStore mapStore;

  late final DoubleFormFieldStore latitudeStore = DoubleFormFieldStore(
    value: 0,
    onValueChanged: (newLat) {
      AppLogger.print("LongitudeStore.onValueChanged: $newLat", [MapLoggers.map]);
      if (newLat == null) return;
      value = LatLng(newLat, value?.longitude ?? mapStore.markers.first.position.longitude);
      _setCenterMarker(coordinates: value);
    },
    title: "Latitude",
  );

  late final DoubleFormFieldStore longitudeStore = DoubleFormFieldStore(
    value: 0,
    onValueChanged: (newLng) {
      AppLogger.print("LongitudeStore.onValueChanged: $newLng", [MapLoggers.map]);
      if (newLng == null) return;
      value = LatLng(value?.latitude ?? mapStore.markers.first.position.latitude, newLng);
      _setCenterMarker(coordinates: value);
    },
    title: "Longitude",
  );

  @observable
  List<Suggestion>? suggestions;

  @action
  Future<void> searchMap(String query) async {
    ApiResponse<SuggestionResponse> searchPlace = await search.getSuggestions(query);
    suggestions = searchPlace.success?.suggestions;
  }

  @action
  Future<void> setCoordinates(Suggestion suggestion) async {
    final searchPlaceResponse = await search.getPlace(suggestion.mapboxId);
    if (searchPlaceResponse.success != null) {
      final coordinatesMap = searchPlaceResponse.success!.features.first.geometry.coordinates;
      final coordinates = LatLng(coordinatesMap.lat, coordinatesMap.long);
      _setCenterMarker(coordinates: coordinates);
      mapStore.animatedMapController.animateTo(dest: coordinates, zoom: 10);
    }
  }

  Future<void> _loadMap() async {
    setLoading();
    try {
      search = SearchBoxAPI(apiKey: MapConstants.mapboxAPIKey);
      mapStore = MapStore(
        mapTilesUrl: mapTilesUrl,
        onMapViewReady: _setCenterMarker,
        onDragEnd: _setCenterMarker,
      );
      suggestions = await search.getSuggestions("London").then((value) => value.success?.suggestions);
      AppLogger.print("MapBoxSearch.init success: ${mapStore.markers}", [MapLoggers.map]);
    } catch (e) {
      setError();
      AppLogger.print("MapBoxSearch.init error: $e", [MapLoggers.map]);
    }
    setLoaded();
  }

  void _setCenterMarker({LatLng? coordinates}) {
    AppLogger.print("Setting center marker", [MapLoggers.markers]);
    final newCoordinates = coordinates ?? mapStore.animatedMapController.mapController.camera.center;
    mapStore.addMarkers([
      MarkerModel(
        id: "1",
        position: newCoordinates,
        score: 1,
      )
    ]);
    latitudeStore.value = newCoordinates.latitude;
    longitudeStore.value = newCoordinates.longitude;
    mapStore.animatedMapController.animateTo(dest: newCoordinates, zoom: 10);
  }
}
