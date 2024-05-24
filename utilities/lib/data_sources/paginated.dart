import "package:utilities/data_sources/source.dart";
import "package:utilities/helpers/tuples.dart";

abstract class ResponseModel {}

mixin Paginated<LastResp extends ResponseModel, T, Q> on DataSource<T, Q> {
  Future<Pair<LastResp?, List<T?>>> getPage({
    LastResp? lastResponse,
    int? size,
    String? orderBy,
    Map<String, dynamic>? queryParameters,
  });

  Future<Pair<LastResp?, List<T?>>> searchPage({LastResp? lastResponse, int? size, required Q query});
}
