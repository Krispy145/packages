import "package:payment/data/models/payment_method_model.dart";
import "package:payment/data/sources/payment_method/_source.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

/// [StripePaymentMethodDataRepository] is a class that defines the basic CRUD operations for the [PaymentMethodModel] entity.
class StripePaymentMethodDataRepository {
  final StripePaymentMethodDataSource source;

  /// [StripePaymentMethodDataRepository] constructor.
  StripePaymentMethodDataRepository({
    required this.source,
  });

  /// [getAllPaymentMethodModels] returns a list of [PaymentMethodModel]s.
  Future<Pair<RequestResponse, List<PaymentMethodModel?>>>
      getAllPaymentMethodModels() async {
    return source.getAll();
  }

  /// [getPagedPaymentMethodModels] returns a page of [PaymentMethodModel]s.
  Future<Pair<RequestResponse, Pair<ResponseModel?, List<PaymentMethodModel?>>>>
      getPagedPaymentMethodModels({
    int? limit,
    ResponseModel? lastResponse,
  }) async {
    return source.getPage(size: limit, lastResponse: lastResponse);
  }

  /// [getPaymentMethodModel] returns a single [PaymentMethodModel].
  Future<Pair<RequestResponse, PaymentMethodModel?>> getPaymentMethodModel({
    required String id,
  }) async {
    return source.get(id);
  }

  /// [addAllPaymentMethodModels] adds all [PaymentMethodModel]s to the data source.
  Future<RequestResponse> addAllPaymentMethodModels({
    required List<PaymentMethodModel> paymentMethodModels,
  }) async {
    return source.addAll(paymentMethodModels);
  }

  /// [addPaymentMethodModel] addits a single [PaymentMethodModel] to the data source.
  Future<Pair<RequestResponse, PaymentMethodModel?>> addPaymentMethodModel({
    required PaymentMethodModel paymentMethodModel,
  }) async {
    return source.add(paymentMethodModel);
  }

  /// [updatePaymentMethodModel] updates a single [PaymentMethodModel] in the data source.
  Future<RequestResponse> updatePaymentMethodModel({
    required PaymentMethodModel paymentMethodModel,
  }) async {
    return source.update(paymentMethodModel.id, paymentMethodModel);
  }

  /// [deletePaymentMethodModel] deletes a single [PaymentMethodModel] from the data source.
  Future<RequestResponse> deletePaymentMethodModel({required String id}) async {
    return source.delete(id);
  }

  /// [searchPaymentMethodModels] searches the [PaymentMethodModel] data source.
  Future<Pair<RequestResponse, List<PaymentMethodModel?>>>
      searchPaymentMethodModels({
    required PaymentMethodSearchQueryModel searchQuery,
  }) async {
    return source.searchAll(searchQuery);
  }

  /// [getPagedPaymentMethodModels] returns a page of [PaymentMethodModel]s.
  Future<Pair<RequestResponse, Pair<ResponseModel?, List<PaymentMethodModel?>>>>
      searchPagedPaymentMethodModels({
    required PaymentMethodSearchQueryModel query,
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
