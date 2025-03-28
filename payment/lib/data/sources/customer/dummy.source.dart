part of "_source.dart";

/// [DummyStripeCustomerDataSource] is a class that implements [StripeCustomerDataSource] interface.
class DummyStripeCustomerDataSource
    extends PaginatedDummyDataSource<StripeCustomerModel, BasicSearchQueryModel>
    implements
        StripeCustomerDataSource<DummyDataResponseModel<StripeCustomerModel?>> {
  @override
  bool matchesQuery(BasicSearchQueryModel query, StripeCustomerModel item) {
    // Match everything in the dummy source
    return true;
  }

  @override
  // TODO: implement fakeData
  List<StripeCustomerModel> get fakeData => throw UnimplementedError();

  @override
  bool matchesID(String id, StripeCustomerModel item) {
    // TODO: implement matchesID
    throw UnimplementedError();
  }
}
