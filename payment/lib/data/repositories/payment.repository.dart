import "package:payment/data/models/payment_model.dart";
import "package:payment/data/sources/payment/_source.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";

/// [StripePaymentDataRepository] is a class that defines the basic CRUD operations for the [PaymentModel] entity.
class StripePaymentDataRepository {
  final StripePaymentDataSource source;

  /// [StripePaymentDataRepository] constructor.
  StripePaymentDataRepository({
    required this.source,
  });

  /// [getAllPaymentModels] returns a list of [PaymentModel]s.
  Future<Pair<RequestResponse, List<PaymentModel?>>>
      getAllPaymentModels() async {
    return source.getAll();
  }

  /// [getPagedPaymentModels] returns a page of [PaymentModel]s.
  Future<Pair<RequestResponse, Pair<ResponseModel?, List<PaymentModel?>>>>
      getPagedPaymentModels({
    int? limit,
    ResponseModel? lastResponse,
  }) async {
    return source.getPage(size: limit, lastResponse: lastResponse);
  }

  /// [getPaymentModel] returns a single [PaymentModel].
  Future<Pair<RequestResponse, PaymentModel?>> getPaymentModel({
    required String id,
  }) async {
    return source.get(id);
  }

  /// [addAllPaymentModels] adds all [PaymentModel]s to the data source.
  Future<RequestResponse> addAllPaymentModels({
    required List<PaymentModel> paymentModels,
  }) async {
    return source.addAll(paymentModels);
  }

  /// [addPaymentModel] addits a single [PaymentModel] to the data source.
  Future<Pair<RequestResponse, PaymentModel?>> addPaymentModel({
    required PaymentModel paymentModel,
  }) async {
    return source.add(paymentModel);
  }

  /// [updatePaymentModel] updates a single [PaymentModel] in the data source.
  Future<RequestResponse> updatePaymentModel({
    required PaymentModel paymentModel,
  }) async {
    return source.update(paymentModel.id, paymentModel);
  }

  /// [deletePaymentModel] deletes a single [PaymentModel] from the data source.
  Future<RequestResponse> deletePaymentModel({required String id}) async {
    return source.delete(id);
  }

  /// [searchPaymentModels] searches the [PaymentModel] data source.
  Future<Pair<RequestResponse, List<PaymentModel?>>> searchPaymentModels({
    required BasicSearchQueryModel searchQuery,
  }) async {
    return source.searchAll(searchQuery);
  }

  /// [getPagedPaymentModels] returns a page of [PaymentModel]s.
  Future<Pair<RequestResponse, Pair<ResponseModel?, List<PaymentModel?>>>>
      searchPagedPaymentModels({
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
