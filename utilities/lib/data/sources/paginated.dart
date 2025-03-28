import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

abstract class ResponseModel {
  const ResponseModel();
}

mixin Paginated<LastResp extends ResponseModel, T, Q> on DataSource<T, Q> {
  Future<Pair<RequestResponse, Pair<LastResp?, List<T?>>>> getPage({
    LastResp? lastResponse,
    int? size,
    String? orderBy,
    bool descending = false,
    Map<String, dynamic>? queryParameters,
  });

  Future<Pair<RequestResponse, Pair<LastResp?, List<T?>>>> searchPage({
    LastResp? lastResponse,
    int? size,
    required Q query,
  });
}
