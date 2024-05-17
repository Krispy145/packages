/// [DataSource] is an abstract class that defines the methods that
/// should be implemented by the data sources
/// see: HiveDataSource and RemoteDataSource
abstract mixin class DataSource<T, Q> {
  /// [get] method returns the value of the given id
  Future<T?> get(String id);

  /// [getAll] method returns all the key-value pairs
  Future<List<T?>> getAll();

  /// [delete] method deletes the value of the given id
  Future<void> delete(String id);

  /// [deleteAll] method deletes all the key-value pairs
  Future<void> deleteAll();

  /// [update] method updates the value of the given id
  Future<void> update(String id, T value);

  /// [updateAll] method updates all the key-value pairs
  Future<void> updateAll(Map<String, T> values);

  /// [add] method adds the value of the given id
  Future<T?> add(T value);

  /// [addAll] method adds all the key-value pairs
  Future<void> addAll(List<T> value);

  /// [search] method searches for the given queries
  Future<T?> search(Q query);

  /// [searchAll] method searches for all the key-value pairs
  Future<List<T?>> searchAll(Q query);
}

mixin Mappable<T> {
  /// [convertFromMap] method converts the given value to a map
  T convertFromMap(Map<String, dynamic> data);

  /// [convertToMap] method converts the given map to a value
  Map<String, dynamic> convertToMap(T data);
}
