import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data_sources/source.dart";

/// [ThemeDataSource] is an abstract class that defines the basic CRUD operations for the ThemeModel entity.
abstract class ThemeDataSource<T> extends DataSource<T, BasicSearchQueryModel> {}
