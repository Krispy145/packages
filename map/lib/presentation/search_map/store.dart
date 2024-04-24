import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:map/data/models/marker_model.dart';
import 'package:map/presentation/map/store.dart';
import 'package:map/utils/loggers.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:mobx/mobx.dart';
import 'package:utilities/logger/logger.dart';

part 'store.g.dart';

/// [SearchMapStore] is a class that uses [_SearchMapStore] to manage state of the map feature.
class SearchMapStore = _SearchMapStore with _$SearchMapStore;

/// [_SearchMapStore] is a class that manages the state of the map feature.
abstract class _SearchMapStore extends MapStore with Store {
  final String mapAPIKey;
  _SearchMapStore({
    required this.mapAPIKey,
    required super.mapTilesUrl,
    super.singleMarkerBuilder,
  }) {
    _loadMap();
  }

  late final SearchBoxAPI search;

  @observable
  List<Suggestion>? suggestions;

  @observable
  Suggestion? currentSuggestion;
  @observable
  Feature? currentFeature;

  @observable
  LatLng? mapCenter;

  @action
  Future<List<Suggestion>> searchMap(String query) async {
    ApiResponse<SuggestionResponse> searchPlace = await search.getSuggestions(query);
    suggestions = searchPlace.success?.suggestions;
    return suggestions ?? [];
  }

  @action
  Future<void> setCoordinates(Suggestion suggestion) async {
    final searchPlaceResponse = await search.getPlace(suggestion.mapboxId);
    currentSuggestion = suggestion;
    if (searchPlaceResponse.success != null) {
      currentFeature = searchPlaceResponse.success!.features.firstOrNull;
      final coordinatesMap = currentFeature?.geometry.coordinates;
      if (coordinatesMap != null) {
        final coordinates = LatLng(coordinatesMap.lat, coordinatesMap.long);
        setCenterMarker(coordinates: coordinates);
        animatedMapController.animateTo(dest: mapCenter);
      }
    }
  }

  @override
  @action
  Future<void> onMapReady() async {
    super.onMapReady();
    setCenterMarker();
  }

  @override
  @action
  void onMapPositionChanged(MapPosition position, bool changed) {
    setCenterMarker();
  }

  @action
  void setCenterMarker({LatLng? coordinates}) {
    AppLogger.print("Setting center marker", [MapLoggers.search]);
    final newCoordinates = coordinates ?? animatedMapController.mapController.camera.center;
    addMarker(
      MarkerModel(
        id: "1",
        position: newCoordinates,
        score: 1,
      ),
      clearFirst: true,
    );
    mapCenter = newCoordinates;
  }

  @action
  Future<void> _loadMap() async {
    setLoading();
    try {
      search = SearchBoxAPI(apiKey: mapAPIKey);
      suggestions = await search.getSuggestions("Dubai").then((value) => value.success?.suggestions);
      currentSuggestion = suggestions?.first;
      AppLogger.print("MapBoxSearch.init success: $markers", [MapLoggers.search]);
    } catch (e) {
      setError();
      AppLogger.print("MapBoxSearch.init error: $e", [MapLoggers.search]);
    }
    setLoaded();
  }
}
