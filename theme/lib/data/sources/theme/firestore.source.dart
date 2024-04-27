import "package:utilities/data_sources/remote/firestore.dart";

import "_source.dart";

/// [FirestoreThemeDataSource] is a class that implements [ThemeDataSource] interface.
class FirestoreThemeDataSource<T> extends FirestoreDataSource<T>
    implements ThemeDataSource<T> {
  /// [FirestoreThemeDataSource] constructor.
  FirestoreThemeDataSource(
    super.collectionName, {
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  });
}
