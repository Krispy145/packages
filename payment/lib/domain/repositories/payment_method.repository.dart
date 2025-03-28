import "package:payment/data/models/payment_method_model.dart";
import "package:payment/data/repositories/payment_method.repository.dart";
import "package:payment/data/sources/payment_method/_source.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

/// [PaymentMethodRepository] is an abstract class that defines the basic CRUD operations for the [PaymentMethodModel] entity.
class PaymentMethodRepository {
  final StripePaymentMethodDataRepository paymentMethodDataRepository;

  /// [PaymentMethodRepository] constructor.
  PaymentMethodRepository({
    required this.paymentMethodDataRepository,
  });

  ResponseModel? _lastResponse;

  /// [getAllPaymentMethodModels] fetches all [PaymentMethodModel]s from the data source.
  Future<Pair<RequestResponse, List<PaymentMethodModel?>>>
      getAllPaymentMethodModels() {
    return paymentMethodDataRepository.getAllPaymentMethodModels();
  }

  /// [getPagedPaymentMethodModels] fetches a page of [PaymentMethodModel]s from the data source.
  Future<Pair<RequestResponse, List<PaymentMethodModel?>>>
      getPagedPaymentMethodModels({
    int? limit,
    bool refresh = false,
  }) async {
    final response =
        await paymentMethodDataRepository.getPagedPaymentMethodModels(
      limit: limit,
      lastResponse: refresh ? null : _lastResponse,
    );
    _lastResponse = response.second.first;
    final paymentMethods = response.second.second;
    return Pair(response.first, paymentMethods);
  }

  /// [getPaymentMethodModel] fetches a [PaymentMethodModel] from the data source.
  Future<Pair<RequestResponse, PaymentMethodModel?>> getPaymentMethodModel(
      String id) {
    return paymentMethodDataRepository.getPaymentMethodModel(id: id);
  }

  /// [addAllPaymentMethodModels] adds all [PaymentMethodModel]s to the data source.
  Future<RequestResponse> addAllPaymentMethodModels(
      List<PaymentMethodModel> paymentMethodModels) {
    return paymentMethodDataRepository.addAllPaymentMethodModels(
      paymentMethodModels: paymentMethodModels,
    );
  }

  /// [addPaymentMethodModel] adds a [PaymentMethodModel] to the data source.
  Future<Pair<RequestResponse, PaymentMethodModel?>> addPaymentMethodModel(
      PaymentMethodModel paymentMethodModel) {
    return paymentMethodDataRepository.addPaymentMethodModel(
      paymentMethodModel: paymentMethodModel,
    );
  }

  /// [updatePaymentMethodModel] adds a [PaymentMethodModel] to the data source.
  Future<RequestResponse> updatePaymentMethodModel(
      PaymentMethodModel paymentMethodModel) {
    return paymentMethodDataRepository.updatePaymentMethodModel(
      paymentMethodModel: paymentMethodModel,
    );
  }

  /// [deletePaymentMethodModel] deletes a [PaymentMethodModel] from the data source.
  Future<RequestResponse> deletePaymentMethodModel(String id) {
    return paymentMethodDataRepository.deletePaymentMethodModel(id: id);
  }

  /// [searchPaymentMethodModels] searches for [PaymentMethodModel]s from the data source.
  Future<Pair<RequestResponse, List<PaymentMethodModel?>>>
      searchPaymentMethodModels(
    PaymentMethodSearchQueryModel query,
  ) {
    return paymentMethodDataRepository.searchPaymentMethodModels(
      searchQuery: query,
    );
  }

  /// [searchPagedPaymentMethodModels] fetches a page of [PaymentMethodModel]s from the data source.
  Future<Pair<RequestResponse, List<PaymentMethodModel?>>>
      searchPagedPaymentMethodModels({
    int? limit,
    bool refresh = false,
    required PaymentMethodSearchQueryModel query,
  }) async {
    final response =
        await paymentMethodDataRepository.searchPagedPaymentMethodModels(
      query: query,
      limit: limit,
      lastResponse: refresh ? null : _lastResponse,
    );
    _lastResponse = response.second.first;
    final paymentMethods = response.second.second;
    return Pair(response.first, paymentMethods);
  }
}
