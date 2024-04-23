import 'package:forms/presentation/components/base/store.dart';
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
      final coordinates = searchPlaceResponse.success!.features.first.geometry.coordinates;
      mapStore.addMarkers([
        MarkerModel(
          id: "1",
          position: LatLng(coordinates.lat, coordinates.long),
          score: 1,
        )
      ]);
      mapStore.animatedMapController.animateTo(dest: LatLng(coordinates.lat, coordinates.long), zoom: 10);
    }
  }

  Future<void> _loadMap() async {
    setLoading();
    try {
      search = SearchBoxAPI(apiKey: MapConstants.mapboxAPIKey);
      mapStore = MapStore(
          mapTilesUrl: mapTilesUrl,
          onMapViewReady: () {
            mapStore.addMarkers([
              MarkerModel(
                id: "1",
                position: mapStore.animatedMapController.mapController.camera.center,
                score: 1,
              )
            ]);
          },
          onDragEnd: () {
            AppLogger.print("MapBoxSearch.init onDragEnd", [MapLoggers.markers]);
            mapStore.addMarkers([
              MarkerModel(
                id: "1",
                position: mapStore.animatedMapController.mapController.camera.center,
                score: 1,
              )
            ]);
          });
      suggestions = await search.getSuggestions("London").then((value) => value.success?.suggestions);
      AppLogger.print("MapBoxSearch.init success: ${mapStore.markers}", [MapLoggers.markers]);
    } catch (e) {
      AppLogger.print("MapBoxSearch.init error: $e", [MapLoggers.markers]);
    }
    setLoaded();
  }
}
