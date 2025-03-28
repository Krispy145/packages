part of "_source.dart";

/// [FirestoreStripeCustomerDataSource] is a class that implements [StripeCustomerDataSource] interface
/// using Firebase Cloud Functions to handle Stripe operations.
class FirestoreStripeCustomerDataSource extends PaginatedFirestoreDataSource<
        StripeCustomerModel, BasicSearchQueryModel>
    implements
        StripeCustomerDataSource<FirestoreResponseModel<StripeCustomerModel?>> {
  /// [FirestoreStripeCustomerDataSource] constructor.
  FirestoreStripeCustomerDataSource()
      : super(
          "stripe_customers",
          titleFromType: (customer) => customer.customerId,
          convertDataTypeFromMap: StripeCustomerModel.fromMap,
          convertDataTypeToMap: (data) => data.toMap(),
        );

  @override
  Query<Map<String, dynamic>> buildQuery(
    BasicSearchQueryModel query,
    Query<Map<String, dynamic>> collectionReference,
  ) {
    throw UnimplementedError();
  }
}
