import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:maps/data/models/google/place_model.dart';
import 'package:maps/data/models/google/text_search_query_parameters_model.dart';
import 'package:maps/data/models/marker_model.dart';
import 'package:maps/domain/repositories/google_places.repository.dart';
import 'package:maps/presentation/map/store.dart';
import 'package:maps/utils/loggers.dart';
import 'package:mobx/mobx.dart';
import 'package:utilities/logger/logger.dart';

part 'google_store.g.dart';

/// [GoogleSearchMapStore] is a class that uses [_GoogleSearchMapStore] to manage state of the map feature.
class GoogleSearchMapStore = _GoogleSearchMapStore with _$GoogleSearchMapStore;

/// [_GoogleSearchMapStore] is a class that manages the state of the map feature.
abstract class _GoogleSearchMapStore extends MapStore with Store {
  final String mapAPIKey;
  final List<MarkerModel>? initialMarkers;
  _GoogleSearchMapStore({
    required this.mapAPIKey,
    required super.mapTilesUrl,
    // ignore: unused_element
    super.singleMarkerBuilder,
    // ignore: unused_element
    this.initialMarkers,
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
  Future<void> setCoordinates(GooglePlace? googlePlace) async {
    if (googlePlace == null) return;
    final googlePlaceFullDetails = await search.getGooglePlaceDetails(placeId: googlePlace.placeId ?? '');
    currentGooglePlace = googlePlaceFullDetails;

    final coordinates = googlePlace.geometry?.location;
    if (coordinates == null) return;
    final marker = MarkerModel(
      position: coordinates,
      id: googlePlace.placeId ?? '',
      score: googlePlace.rating ?? 0,
    );
    setCenterMarker(marker: marker);
    animatedMapController.animateTo(dest: mapCenter, zoom: 15);
  }

  @override
  Future<void> onMapReady() async {
    setLoading();
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
    if (position.center == null || !isMapReady) return;
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
    setLoading();
    try {
      googlePlaces = await search.textSearchGooglePlaces(parameters: const GoogleTextSearchParameters(query: "Thrift stores Near me"));
      AppLogger.print("GooglePlacesSearch.init success: $markers", [MapLoggers.search]);
    } catch (e) {
      setError();
      AppLogger.print("GooglePlacesSearch.init error: $e", [MapLoggers.search]);
    }
    setLoaded();
  }
}
