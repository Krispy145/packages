import "package:payment/data/models/payment_model.dart";
import "package:payment/data/repositories/payment.repository.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

/// [PaymentRepository] is an abstract class that defines the basic CRUD operations for the [PaymentModel] entity.
class PaymentRepository {
  final StripePaymentDataRepository paymentDataRepository;

  /// [PaymentRepository] constructor.
  PaymentRepository({
    required this.paymentDataRepository,
  });

  ResponseModel? _lastResponse;

  /// [getAllPaymentModels] fetches all [PaymentModel]s from the data source.
  Future<Pair<RequestResponse, List<PaymentModel?>>> getAllPaymentModels() {
    return paymentDataRepository.getAllPaymentModels();
  }

  /// [getPagedPaymentModels] fetches a page of [PaymentModel]s from the data source.
  Future<Pair<RequestResponse, List<PaymentModel?>>> getPagedPaymentModels({
    int? limit,
    bool refresh = false,
  }) async {
    final response = await paymentDataRepository.getPagedPaymentModels(
      limit: limit,
      lastResponse: refresh ? null : _lastResponse,
    );
    _lastResponse = response.second.first;
    final payments = response.second.second;
    return Pair(response.first, payments);
  }

  /// [getPaymentModel] fetches a [PaymentModel] from the data source.
  Future<Pair<RequestResponse, PaymentModel?>> getPaymentModel(String id) {
    return paymentDataRepository.getPaymentModel(id: id);
  }

  /// [addAllPaymentModels] adds all [PaymentModel]s to the data source.
  Future<RequestResponse> addAllPaymentModels(
      List<PaymentModel> paymentModels) {
    return paymentDataRepository.addAllPaymentModels(
      paymentModels: paymentModels,
    );
  }

  /// [addPaymentModel] adds a [PaymentModel] to the data source.
  Future<Pair<RequestResponse, PaymentModel?>> addPaymentModel(
      PaymentModel paymentModel) {
    return paymentDataRepository.addPaymentModel(
      paymentModel: paymentModel,
    );
  }

  /// [updatePaymentModel] adds a [PaymentModel] to the data source.
  Future<RequestResponse> updatePaymentModel(PaymentModel paymentModel) {
    return paymentDataRepository.updatePaymentModel(
      paymentModel: paymentModel,
    );
  }

  /// [deletePaymentModel] deletes a [PaymentModel] from the data source.
  Future<RequestResponse> deletePaymentModel(String id) {
    return paymentDataRepository.deletePaymentModel(id: id);
  }

  /// [searchPaymentModels] searches for [PaymentModel]s from the data source.
  Future<Pair<RequestResponse, List<PaymentModel?>>> searchPaymentModels(
    BasicSearchQueryModel query,
  ) {
    return paymentDataRepository.searchPaymentModels(
      searchQuery: query,
    );
  }

  /// [searchPagedPaymentModels] fetches a page of [PaymentModel]s from the data source.
  Future<Pair<RequestResponse, List<PaymentModel?>>> searchPagedPaymentModels({
    int? limit,
    bool refresh = false,
    required BasicSearchQueryModel query,
  }) async {
    final response = await paymentDataRepository.searchPagedPaymentModels(
      query: query,
      limit: limit,
      lastResponse: refresh ? null : _lastResponse,
    );
    _lastResponse = response.second.first;
    final payments = response.second.second;
    return Pair(response.first, payments);
  }
}
