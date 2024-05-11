import 'package:maps/data/models/google/responses_model.dart';
import 'package:utilities/data_sources/source.dart';

/// [GooglePlacesDataSource] is an abstract class that defines the basic CRUD operations for the [GooglePlacesModel] entity.
mixin GooglePlacesDataSource on DataSource<GoogleResponsesModel, Map<String, dynamic>> {}
