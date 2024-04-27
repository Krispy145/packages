import 'package:map/data/models/google/text_search_responses_model.dart';
import 'package:utilities/data_sources/source.dart';

/// [GooglePlacesDataSource] is an abstract class that defines the basic CRUD operations for the [GooglePlacesModel] entity.
abstract class GooglePlacesDataSource
    extends DataSource<GoogleTextSearchResponsesModel> {}
