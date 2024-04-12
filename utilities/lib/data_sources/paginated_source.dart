/// [PaginatedResponseModel] is a class that defines the methods that
/// should be implemented by the paginated models.
/// fromJson and toJson methods should be overridden in subclasses to provide
/// the specific implementation for deserializing and serializing JSON into
/// the paginated model.
class PaginatedResponseModel<T> {
  /// Creates a [PaginatedResponseModel] from a JSON map.
  ///
  /// This method should be overridden in subclasses to provide
  /// the specific implementation for deserializing JSON into
  /// the paginated model.
  static PaginatedResponseModel<T> fromJson<T>(Map<String, dynamic> json) {
    throw UnimplementedError('Subclasses must override fromJson method.');
  }

  /// Converts this [PaginatedResponseModel] to a JSON map.
  ///
  /// This method should be overridden in subclasses to provide
  /// the specific implementation for serializing the paginated model
  /// into a JSON map.
  Map<String, dynamic> toJson() {
    throw UnimplementedError('Subclasses must override toJson method.');
  }
}

/// [PaginatedRequestModel] is an abstract class that defines the methods that
abstract class PaginatedRequestModel {}

/// [PaginationDataSource] is an abstract class that defines the methods that
/// should be implemented by the paginated data sources
abstract class PaginationDataSource<T> {
  /// Converts the given value to a paginated response map
  Map<String, dynamic> responseToMap(PaginatedResponseModel<T> data);

  /// Converts the given map to a paginated response value
  PaginatedResponseModel<T?> responseFromMap(Map<String, dynamic> data);

  /// Converts the given value to a paginated request map
  Map<String, dynamic> requestToMap(PaginatedRequestModel data);

  /// Converts the given map to a paginated request value
  PaginatedRequestModel requestFromMap(Map<String, dynamic> data);

  /// Returns the paginated value of the given id
  Future<PaginatedResponseModel<T?>?> getPage(
    String? pathExtension,
    PaginatedRequestModel? lastValue,
  );

  /// Returns the paginated value of the given queries
  Future<PaginatedResponseModel<T?>?> searchPage(
    Map<String, String> queries,
    PaginatedRequestModel? lastValue,
  );
}
