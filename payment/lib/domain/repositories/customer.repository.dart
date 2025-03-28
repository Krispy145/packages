import "package:payment/data/models/stripe_customer_model.dart";
import "package:payment/data/repositories/customer.repository.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

/// [StripeCustomerRepository] is an abstract class that defines the basic CRUD operations for the [StripeCustomerModel] entity.
class StripeCustomerRepository {
  final StripeCustomerDataRepository customerDataRepository;

  /// [StripeCustomerRepository] constructor.
  StripeCustomerRepository({
    required this.customerDataRepository,
  });

  ResponseModel? _lastResponse;

  /// [getAllStripeCustomerModels] fetches all [StripeCustomerModel]s from the data source.
  Future<Pair<RequestResponse, List<StripeCustomerModel?>>>
      getAllStripeCustomerModels() {
    return customerDataRepository.getAllStripeCustomerModels();
  }

  /// [getPagedStripeCustomerModels] fetches a page of [StripeCustomerModel]s from the data source.
  Future<Pair<RequestResponse, List<StripeCustomerModel?>>>
      getPagedStripeCustomerModels({
    int? limit,
    bool refresh = false,
  }) async {
    final response = await customerDataRepository.getPagedStripeCustomerModels(
      limit: limit,
      lastResponse: refresh ? null : _lastResponse,
    );
    _lastResponse = response.second.first;
    final customers = response.second.second;
    return Pair(response.first, customers);
  }

  /// [getStripeCustomerModel] fetches a [StripeCustomerModel] from the data source.
  Future<Pair<RequestResponse, StripeCustomerModel?>> getStripeCustomerModel(
      String id) {
    return customerDataRepository.getStripeCustomerModel(id: id);
  }

  /// [addAllStripeCustomerModels] adds all [StripeCustomerModel]s to the data source.
  Future<RequestResponse> addAllStripeCustomerModels(
      List<StripeCustomerModel> customerModels) {
    return customerDataRepository.addAllStripeCustomerModels(
      customerModels: customerModels,
    );
  }

  /// [addStripeCustomerModel] adds a [StripeCustomerModel] to the data source.
  Future<Pair<RequestResponse, StripeCustomerModel?>> addStripeCustomerModel(
      StripeCustomerModel customerModel) {
    return customerDataRepository.addStripeCustomerModel(
      customerModel: customerModel,
    );
  }

  /// [updateStripeCustomerModel] adds a [StripeCustomerModel] to the data source.
  Future<RequestResponse> updateStripeCustomerModel(
      StripeCustomerModel customerModel) {
    return customerDataRepository.updateStripeCustomerModel(
      customerModel: customerModel,
    );
  }

  /// [deleteStripeCustomerModel] deletes a [StripeCustomerModel] from the data source.
  Future<RequestResponse> deleteStripeCustomerModel(String id) {
    return customerDataRepository.deleteStripeCustomerModel(id: id);
  }

  /// [searchStripeCustomerModels] searches for [StripeCustomerModel]s from the data source.
  Future<Pair<RequestResponse, List<StripeCustomerModel?>>>
      searchStripeCustomerModels(
    BasicSearchQueryModel query,
  ) {
    return customerDataRepository.searchStripeCustomerModels(
      searchQuery: query,
    );
  }

  /// [searchPagedStripeCustomerModels] fetches a page of [StripeCustomerModel]s from the data source.
  Future<Pair<RequestResponse, List<StripeCustomerModel?>>>
      searchPagedStripeCustomerModels({
    int? limit,
    bool refresh = false,
    required BasicSearchQueryModel query,
  }) async {
    final response =
        await customerDataRepository.searchPagedStripeCustomerModels(
      query: query,
      limit: limit,
      lastResponse: refresh ? null : _lastResponse,
    );
    _lastResponse = response.second.first;
    final customers = response.second.second;
    return Pair(response.first, customers);
  }
}
