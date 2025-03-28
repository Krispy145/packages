part of "_source.dart";

/// [FirestoreStripePaymentMethodDataSource] is a class that implements [StripePaymentMethodDataSource] interface
/// using Firebase Cloud Functions to handle Stripe operations.
class FirestoreStripePaymentMethodDataSource
    extends PaginatedFirestoreDataSource<PaymentMethodModel,
        PaymentMethodSearchQueryModel>
    implements
        StripePaymentMethodDataSource<
            FirestoreResponseModel<PaymentMethodModel?>> {
  final UUID userId;

  /// [FirestoreStripePaymentMethodDataSource] constructor.
  FirestoreStripePaymentMethodDataSource({
    required this.userId,
  }) : super(
          "stripe_customers/$userId/payment_methods",
          // "stripe_customers/dwfgE5Lt5uNpWbFUPSINWwQY4wC2/payment_methods",
          titleFromType: (payment) => payment.id,
          convertDataTypeFromMap: PaymentMethodModel.fromMap,
          convertDataTypeToMap: (data) => data.toMap(),
        );

  @override
  Query<Map<String, dynamic>> buildQuery(
    PaymentMethodSearchQueryModel query,
    Query<Map<String, dynamic>> collectionReference,
  ) {
    return collectionReference
        .where("card.last4", isEqualTo: query.last4)
        .where("card.exp_month", isEqualTo: query.expiryDate.split("-")[1])
        .where("card.exp_year", isEqualTo: query.expiryDate.split("-")[0])
        .where("billing_details.name", isEqualTo: query.cardHolderName);
  }
}
