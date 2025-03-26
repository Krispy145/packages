abstract class BasePaymentService {
  // Future<String?> createPaymentIntent({required int amount, String currency = 'zar'});
  Future<String?> makePayment(Future<String> Function(int, String) paymentIntent);
}
