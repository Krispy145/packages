import 'package:payment/data/models/session_setup_model.dart';

abstract class BasePaymentService<T> {
  Future<SessionSetupModel> createCheckoutSession(List<T> items);
  Future<void> updateSubscriptionItem({
    required String subscriptionId,
    required String subscriptionItemId,
    required String productType,
    String? newPriceId,
    int? newQuantity,
  });
  Future<void> handleSuccessfulSubscription(String sessionId);
  Future<void> handleExpiredSubscription(String sessionId);
  Future<void> launchCheckout({required String sessionUrl});
}
