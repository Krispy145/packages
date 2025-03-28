part of "_source.dart";

/// [DummyStripePaymentDataSource] is a class that implements [StripePaymentDataSource] interface.
class DummyStripePaymentDataSource
    extends PaginatedDummyDataSource<PaymentModel, BasicSearchQueryModel>
    implements StripePaymentDataSource<DummyDataResponseModel<PaymentModel?>> {
  @override
  bool matchesQuery(BasicSearchQueryModel query, PaymentModel item) {
    // Match everything in the dummy source
    return true;
  }

  @override
  // TODO: implement fakeData
  List<PaymentModel> get fakeData => throw UnimplementedError();

  @override
  bool matchesID(String id, PaymentModel item) {
    // TODO: implement matchesID
    throw UnimplementedError();
  }
}
