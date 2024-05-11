import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data_sources/source.dart";

/// [DODataSource] is an abstract class that defines the basic CRUD operations for the `DOModel` entity.
mixin DODataSource<T> on DataSource<T, BasicSearchQueryModel> {}
