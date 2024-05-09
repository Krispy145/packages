import "package:utilities/helpers/tuples.dart";

abstract class ResponseModel {}

abstract mixin class Paginated<LastResp extends ResponseModel, T, Q> {
  Future<Pair<LastResp, List<T?>>> getPage({LastResp? lastResponse, int? size});

  Future<Pair<LastResp, List<T?>>> searchPage({LastResp? lastResponse, int? size, required Q query});
}
