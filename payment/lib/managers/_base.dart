abstract class BasePaymentManager {
  Future<void> makePayment(Future<String> Function(int, String) paymentIntent);
}
