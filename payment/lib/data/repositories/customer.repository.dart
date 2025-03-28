import "package:payment/data/models/stripe_customer_model.dart";
import "package:payment/data/sources/customer/_source.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

/// [StripeCustomerDataRepository] is a class that defines the basic CRUD operations for the [StripeCustomerModel] entity.
class StripeCustomerDataRepository {
  final StripeCustomerDataSource source;

  /// [StripeCustomerDataRepository] constructor.
  StripeCustomerDataRepository({
    required this.source,
  });

  /// [getAllStripeCustomerModels] returns a list of [StripeCustomerModel]s.
  Future<Pair<RequestResponse, List<StripeCustomerModel?>>>
      getAllStripeCustomerModels() async {
    return source.getAll();
  }

  /// [getPagedStripeCustomerModels] returns a page of [StripeCustomerModel]s.
  Future<
          Pair<RequestResponse,
              Pair<ResponseModel?, List<StripeCustomerModel?>>>>
      getPagedStripeCustomerModels({
    int? limit,
    ResponseModel? lastResponse,
  }) async {
    return source.getPage(size: limit, lastResponse: lastResponse);
  }

  /// [getStripeCustomerModel] returns a single [StripeCustomerModel].
  Future<Pair<RequestResponse, StripeCustomerModel?>> getStripeCustomerModel({
    required String id,
  }) async {
    return source.get(id);
  }

  /// [addAllStripeCustomerModels] adds all [StripeCustomerModel]s to the data source.
  Future<RequestResponse> addAllStripeCustomerModels({
    required List<StripeCustomerModel> customerModels,
  }) async {
    return source.addAll(customerModels);
  }

  /// [addStripeCustomerModel] addits a single [StripeCustomerModel] to the data source.
  Future<Pair<RequestResponse, StripeCustomerModel?>> addStripeCustomerModel({
    required StripeCustomerModel customerModel,
  }) async {
    return source.add(customerModel);
  }

  /// [updateStripeCustomerModel] updates a single [StripeCustomerModel] in the data source.
  Future<RequestResponse> updateStripeCustomerModel({
    required StripeCustomerModel customerModel,
  }) async {
    return source.update(customerModel.id, customerModel);
  }

  /// [deleteStripeCustomerModel] deletes a single [StripeCustomerModel] from the data source.
  Future<RequestResponse> deleteStripeCustomerModel(
      {required String id}) async {
    return source.delete(id);
  }

  /// [searchStripeCustomerModels] searches the [StripeCustomerModel] data source.
  Future<Pair<RequestResponse, List<StripeCustomerModel?>>>
      searchStripeCustomerModels({
    required BasicSearchQueryModel searchQuery,
  }) async {
    return source.searchAll(searchQuery);
  }

  /// [getPagedStripeCustomerModels] returns a page of [StripeCustomerModel]s.
  Future<
          Pair<RequestResponse,
              Pair<ResponseModel?, List<StripeCustomerModel?>>>>
      searchPagedStripeCustomerModels({
    required BasicSearchQueryModel query,
    int? limit,
    String? orderBy,
    ResponseModel? lastResponse,
  }) async {
    return source.searchPage(
      size: limit,
      lastResponse: lastResponse,
      query: query,
    );
  }
}
