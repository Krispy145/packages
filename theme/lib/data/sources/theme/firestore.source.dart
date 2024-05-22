import "package:cloud_firestore/cloud_firestore.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data_sources/firestore/source.dart";

import "_source.dart";

/// [FirestoreThemeDataSource] is a class that implements [ThemeDataSource] interface.
class FirestoreThemeDataSource<T> extends FirestoreDataSource<T, BasicSearchQueryModel> implements ThemeDataSource<T> {
  /// [FirestoreThemeDataSource] constructor.
  FirestoreThemeDataSource(
    super.collectionName, {
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  });

  @override
  Query<Map<String, dynamic>> buildQuery(BasicSearchQueryModel query, Query<Map<String, dynamic>> collectionReference) {
    return collectionReference.where("name", isGreaterThanOrEqualTo: query.searchTerm);
  }
}
