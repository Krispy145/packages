/// [PagedRequest] is a generic class that is used to request a page of items.
class PagedRequest {
  /// [nextPageToken] is the next page token.
  final String? nextPageToken;

  /// [pageSize] is the number of items to return in a page.
  final int pageSize;

  /// [PagedRequest] constructor.
  PagedRequest({this.nextPageToken, this.pageSize = 20});

  /// [PagedRequest] from JSON.
  factory PagedRequest.fromJson(Map<String, dynamic> json) {
    return PagedRequest(
      nextPageToken: json["nextPageToken"] as String?,
      pageSize: json["pageSize"] as int,
    );
  }

  /// [PagedRequest] to JSON.
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (nextPageToken != null) {
      map["nextPageToken"] = nextPageToken;
    }
    map["pageSize"] = pageSize;
    return map;
  }
}
