import "package:cloud_firestore/cloud_firestore.dart";
import "package:utilities/data/models/search_query_model.dart";
import "package:utilities/data_sources/remote/firestore.dart";

import "_source.dart";

/// [FirestoreThemeDataSource] is a class that implements [ThemeDataSource] interface.
class FirestoreThemeDataSource<T> extends FirestoreDataSource<T, SearchQueryModel> implements ThemeDataSource<T> {
  /// [FirestoreThemeDataSource] constructor.
  FirestoreThemeDataSource(
    super.collectionName, {
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  });

  @override
  Query<Map<String, dynamic>> buildQuery(SearchQueryModel query, Query<Map<String, dynamic>> collectionReference) {
    return collectionReference.where("name", isGreaterThanOrEqualTo: query.searchTerm);
  }
}
