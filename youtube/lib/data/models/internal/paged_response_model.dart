import "package:utilities/data/sources/paginated.dart";

/// [PagedResponse] is a generic class that is used to return a items of items with a next page token.
class PagedResponse<T> extends ResponseModel {
  /// [items] is a list of items of type [T].
  final List<T?> items;

  /// [nextPageToken] is the next page token.
  final String? nextPageToken;

  /// [PagedResponse] constructor.
  PagedResponse({this.items = const [], this.nextPageToken});

  /// [PagedResponse] from JSON.
  static PagedResponse<T> fromJson<T>(Map<String, dynamic> json, T Function(Map<String, dynamic>) fromJson) {
    final items = (json["items"] as List).map((e) => fromJson(e as Map<String, dynamic>)).toList();
    return PagedResponse<T>(items: items, nextPageToken: json["nextPageToken"] as String?);
  }

  /// [PagedResponse] to JSON.
  // @override
  // Map<String, dynamic> toJson() {
  //   return <String, dynamic>{
  //     'items': this.items,
  //     'nextPageToken': this.nextPageToken,
  //   };
  // }
}
