import "package:maps/data/models/google/place_model.dart";
import "package:maps/data/models/google/text_search_query_parameters_model.dart";

import "/data/repositories/_repositories.dart";
import "/data/repositories/google_places.repository.dart";

/// [GooglePlacesRepository] is an abstract class that defines the basic CRUD operations for the [GooglePlacesModel] entity.
class GooglePlacesRepository {
  final String apiKey;

  /// [GooglePlacesRepository] constructor.
  GooglePlacesRepository({required this.apiKey});

  late final GooglePlacesDataRepository _googlePlacesDataRepository = DataRepositories.instance.googlePlaces(googleApiKey: apiKey);

  //* GooglePlacesModel Data Source Type
  final _source = DataSourceTypes.api;

  /// [textSearchGooglePlaces] returns a list of [GooglePlace]s based on the [GoogleTextSearchParameters].
  Future<List<GooglePlace?>> textSearchGooglePlaces({required GoogleTextSearchParameters parameters}) async {
    return _googlePlacesDataRepository.textSearchGooglePlaces(source: _source, parameters: parameters);
  }

  /// [getGooglePlaceDetails] returns a [GooglePlace] based on the [placeId].
  Future<GooglePlace?> getGooglePlaceDetails({required String placeId}) async {
    return _googlePlacesDataRepository.getGooglePlaceDetails(source: _source, placeId: placeId);
  }
}
