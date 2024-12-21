import "package:utilities/helpers/tuples.dart";

enum RequestResponse { success, failure, denied, underReview, cancelled }

/// [DataSource] is an abstract class that defines the methods that
/// should be implemented by the data sources
/// see: HiveDataSource and RemoteDataSource
abstract mixin class DataSource<T, Q> {
  /// [get] method returns the value of the given id
  Future<Pair<RequestResponse, T?>> get(String id);

  /// [getAll] method returns all the key-value pairs
  Future<Pair<RequestResponse, List<T?>>> getAll();

  /// [delete] method deletes the value of the given id
  Future<RequestResponse> delete(String id);

  /// [deleteAll] method deletes all the key-value pairs
  Future<RequestResponse> deleteAll();

  /// [update] method updates the value of the given id
  Future<RequestResponse> update(String id, T value);

  /// [updateAll] method updates all the key-value pairs
  Future<RequestResponse> updateAll(Map<String, T> values);

  /// [add] method adds the value of the given id
  Future<Pair<RequestResponse, T?>> add(T value);

  /// [addAll] method adds all the key-value pairs
  Future<RequestResponse> addAll(List<T> value);

  /// [search] method searches for the given queries
  Future<Pair<RequestResponse, T?>> search(Q query);

  /// [searchAll] method searches for all the key-value pairs
  Future<Pair<RequestResponse, List<T?>>> searchAll(Q query);

  /// [closeStreams] method closes all the streams (if any)
  void closeStreams() {}
}

mixin Mappable<T> {
  /// [convertFromMap] method converts the given value to a map
  T convertFromMap(Map<String, dynamic> data);

  /// [convertToMap] method converts the given map to a value
  Map<String, dynamic> convertToMap(T data);
}

// mixin Jsonable<T> {
//   /// [convertFromJson] method converts the given value to a map
//   T convertFromJson(String data);

//   /// [convertToJson] method converts the given map to a value
//   String convertToJson(T data);
// }
