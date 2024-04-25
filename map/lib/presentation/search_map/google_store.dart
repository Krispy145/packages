import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:map/data/models/google/place_model.dart';
import 'package:map/data/models/google/text_search_query_parameters_model.dart';
import 'package:map/data/models/marker_model.dart';
import 'package:map/domain/repositories/google_places.repository.dart';
import 'package:map/presentation/map/store.dart';
import 'package:map/utils/loggers.dart';
import 'package:mobx/mobx.dart';
import 'package:utilities/logger/logger.dart';

part 'google_store.g.dart';

/// [GoogleSearchMapStore] is a class that uses [_GoogleSearchMapStore] to manage state of the map feature.
class GoogleSearchMapStore = _GoogleSearchMapStore with _$GoogleSearchMapStore;

/// [_GoogleSearchMapStore] is a class that manages the state of the map feature.
abstract class _GoogleSearchMapStore extends MapStore with Store {
  final String mapAPIKey;
  _GoogleSearchMapStore({
    required this.mapAPIKey,
    required super.mapTilesUrl,
    super.singleMarkerBuilder,
  }) {
    _loadMap();
  }

  late final GooglePlacesRepository search = GooglePlacesRepository(apiKey: mapAPIKey);

  @observable
  List<GooglePlace?> googlePlaces = [];

  @observable
  GooglePlace? currentGooglePlace;

  @observable
  LatLng? mapCenter;

  @action
  Future<List<GooglePlace>> searchMap(String query) async {
    List<GooglePlace?> searchPlace = await search.textSearchGooglePlaces(parameters: GoogleTextSearchParameters(query: query));
    return searchPlace.whereType<GooglePlace>().toList();
  }

  @action
  Future<void> setCoordinates(GooglePlace googlePlace) async {
    currentGooglePlace = googlePlace;

    final coordinates = googlePlace.geometry?.location;
    setCenterMarker(coordinates: coordinates);
    animatedMapController.animateTo(dest: mapCenter, zoom: 15);
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
      googlePlaces = await search.textSearchGooglePlaces(parameters: const GoogleTextSearchParameters(query: "Thrift stores Near me"));
      currentGooglePlace = googlePlaces.firstOrNull;
      AppLogger.print("GooglePlacesSearch.init success: $markers", [MapLoggers.search]);
    } catch (e) {
      setError();
      AppLogger.print("GooglePlacesSearch.init error: $e", [MapLoggers.search]);
    }
    setLoaded();
  }
}
