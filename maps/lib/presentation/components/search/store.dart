import 'package:forms/presentation/components/base/store.dart';
import 'package:maps/data/models/google/place_model.dart';
import 'package:maps/data/models/google/text_search_query_parameters_model.dart';
import 'package:maps/domain/repositories/google_places.repository.dart';
import 'package:mobx/mobx.dart';
import 'package:utilities/widgets/load_state/store.dart';

part 'store.g.dart';

/// [GooglePlaceSearchFormFieldStore] is a class that uses [_GooglePlaceSearchFormFieldStore] to manage state of the map feature.
class GooglePlaceSearchFormFieldStore = _GooglePlaceSearchFormFieldStore with _$GooglePlaceSearchFormFieldStore;

/// [_GooglePlaceSearchFormFieldStore] is a class that manages the state of the map feature.
abstract class _GooglePlaceSearchFormFieldStore extends BaseFormFieldStore<GooglePlace?> with LoadStateStore, Store {
  final String googleAPIKey;

  _GooglePlaceSearchFormFieldStore({
    required this.googleAPIKey,
    required super.title,
    required super.initialValue,
    required super.onValueChanged,
  }) {
    setLoaded();
  }

  late final GooglePlacesRepository search = GooglePlacesRepository(apiKey: googleAPIKey);

  @action
  Future<List<GooglePlace>> searchQuery(String query) async {
    List<GooglePlace?> searchPlace = await search.textSearchGooglePlaces(parameters: GoogleTextSearchParameters(query: query));
    return searchPlace.whereType<GooglePlace>().toList();
  }

  @action
  Future<void> onSelectedPlace(GooglePlace? googlePlace) async {
    if (googlePlace == null) return;
    final googlePlaceFullDetails = await search.getGooglePlaceDetails(placeId: googlePlace.placeId ?? '');
    onValueChanged(googlePlaceFullDetails);
  }
}
