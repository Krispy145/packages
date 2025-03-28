part of "_source.dart";

/// [DummyStripePaymentMethodDataSource] is a class that implements [StripePaymentMethodDataSource] interface.
class DummyStripePaymentMethodDataSource extends PaginatedDummyDataSource<
        PaymentMethodModel, PaymentMethodSearchQueryModel>
    implements
        StripePaymentMethodDataSource<
            DummyDataResponseModel<PaymentMethodModel?>> {
  @override
  bool matchesQuery(
      PaymentMethodSearchQueryModel query, PaymentMethodModel item) {
    // Match everything in the dummy source
    return true;
  }

  @override
  // TODO: implement fakeData
  List<PaymentMethodModel> get fakeData => throw UnimplementedError();

  @override
  bool matchesID(String id, PaymentMethodModel item) {
    // TODO: implement matchesID
    throw UnimplementedError();
  }
}
