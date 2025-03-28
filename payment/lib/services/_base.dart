abstract class BasePaymentService<T> {
  Future<String> createCheckoutSession(List<T> items);
  Future<void> handleSuccessfulSubscription(String sessionId);
  Future<void> handleExpiredSubscription(String sessionId);
  Future<void> launchCheckout({required String sessionUrl});
}
