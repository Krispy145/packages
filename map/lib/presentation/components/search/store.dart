import 'package:latlong2/latlong.dart';
import 'package:map/constants/map_constants.dart';
import 'package:map/data/models/lat_lng.mapper.dart';
import 'package:map/data/models/marker_model.dart';
import 'package:map/presentation/map/store.dart';
import 'package:map/utils/loggers.dart';
import 'package:mobx/mobx.dart';
import 'package:mapbox_search/mapbox_search.dart';
import 'package:forms/presentation/components/base/store.dart';
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
    onValueChanged(value);
    final searchPlaceResponse = await search.getPlace(suggestion.mapboxId);
    if (searchPlaceResponse.success != null) {
      final coordinates = searchPlaceResponse.success!.features.first.geometry.coordinates;
      value = LatLngMapper().encode(LatLng(coordinates.lat, coordinates.long));
      mapStore.animatedMapController.mapController.move(LatLng(coordinates.lat, coordinates.long), 15);
    }
  }

  Future<void> _loadMap() async {
    setLoading();
    try {
      search = SearchBoxAPI(apiKey: MapConstants.mapboxAPIKey);
      mapStore = MapStore(mapTilesUrl: mapTilesUrl);
      suggestions = await search.getSuggestions("London").then((value) => value.success?.suggestions);
      mapStore.addMarker(MarkerModel(
        id: "1",
        position: LatLngMapper().encode(mapStore.animatedMapController.mapController.camera.center),
        score: 1,
      ));
    } catch (e) {
      AppLogger.print("MapBoxSearch.init error: $e", [MapLoggers.markers]);
    }
    setLoaded();
  }
}
