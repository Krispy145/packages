part of "_source.dart";

/// [FirestoreStripePaymentDataSource] is a class that implements [StripePaymentDataSource] interface
/// using Firebase Cloud Functions to handle Stripe operations.
class FirestoreStripePaymentDataSource
    extends PaginatedFirestoreDataSource<PaymentModel, BasicSearchQueryModel>
    implements StripePaymentDataSource<FirestoreResponseModel<PaymentModel?>> {
  final UUID userId;

  /// [FirestoreStripePaymentDataSource] constructor.
  FirestoreStripePaymentDataSource({
    required this.userId,
  }) : super(
          "stripe_customers/$userId/payments",
          // "stripe_customers/dwfgE5Lt5uNpWbFUPSINWwQY4wC2/payments",
          titleFromType: (payment) => payment.id,
          convertDataTypeFromMap: PaymentModel.fromMap,
          convertDataTypeToMap: (data) => data.toMap(),
        );

  @override
  Query<Map<String, dynamic>> buildQuery(
    BasicSearchQueryModel query,
    Query<Map<String, dynamic>> collectionReference,
  ) {
    throw UnimplementedError();
  }

  /// Creates a payment and waits for it to reach a final state
  @override
  Future<Pair<RequestResponse, PaymentModel?>> add(
    PaymentModel payment,
  ) async {
    // First add the payment document
    final response = await super.add(payment);

    // If the add was successful and we have a document ID
    if (response.first == RequestResponse.success && response.second != null) {
      final docId = response.second!.id;

      // Wait for the payment to reach a final state
      try {
        final paymentDoc = await collectionReference.doc(docId).get();

        if (!paymentDoc.exists) {
          return const Pair(RequestResponse.failure, null);
        }

        final paymentData = PaymentModel.fromMap(paymentDoc.data()!);

        // Check if we've reached a final state
        if (paymentData.status == PaymentStatus.requiresPaymentMethod ||
            paymentData.status == PaymentStatus.requiresConfirmation ||
            paymentData.status == PaymentStatus.requiresAction ||
            paymentData.status == PaymentStatus.succeeded ||
            paymentData.status == PaymentStatus.canceled ||
            paymentData.status == PaymentStatus.failed) {
          return Pair(RequestResponse.success, paymentData);
        }

        // If we haven't reached a final state, set up a one-time listener
        final completer = Completer<Pair<RequestResponse, PaymentModel?>>();

        // Declare the StreamSubscription variable first
        StreamSubscription<DocumentSnapshot>? subscription;

        // Now assign it in the listen() call
        subscription = collectionReference.doc(docId).snapshots().listen(
          (snapshot) {
            if (!snapshot.exists) {
              subscription?.cancel();
              completer.complete(const Pair(RequestResponse.failure, null));
              return;
            }

            final paymentData = PaymentModel.fromMap(snapshot.data()!);

            // Check if we've reached a final state
            if (paymentData.status == PaymentStatus.requiresPaymentMethod ||
                paymentData.status == PaymentStatus.requiresConfirmation ||
                paymentData.status == PaymentStatus.requiresAction ||
                paymentData.status == PaymentStatus.succeeded ||
                paymentData.status == PaymentStatus.canceled ||
                paymentData.status == PaymentStatus.failed) {
              subscription?.cancel();
              completer.complete(Pair(RequestResponse.success, paymentData));
            }
          },
          onError: (dynamic error) {
            subscription?.cancel();
            completer.complete(const Pair(RequestResponse.failure, null));
          },
        );

        // Set a timeout to prevent infinite waiting
        Future.delayed(const Duration(minutes: 5), () {
          if (!completer.isCompleted) {
            subscription?.cancel();
            completer.complete(const Pair(RequestResponse.failure, null));
          }
        });

        return completer.future;
      } catch (e) {
        return const Pair(RequestResponse.failure, null);
      }
    }

    // If the add failed, return the error response
    return Pair(response.first, null);
  }
}
