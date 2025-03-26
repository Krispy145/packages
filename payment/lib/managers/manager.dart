import 'package:flutter/foundation.dart';
import 'package:payment/managers/_base.dart';
import 'package:payment/services/stripe_service.dart';

class StripeManager implements BasePaymentManager {
  final StripeService stripeService = StripeService.instance;

  @override
  Future<void> makePayment(Future<String> Function(int, String) paymentIntent) async {
    String? clientSecret = await stripeService.makePayment(paymentIntent);

    if (kIsWeb || clientSecret == null) {
      // TODO: implement makePayment
      throw UnimplementedError();
    } else {
      await stripeService.displayPaymentSheet(clientSecret);
    }
  }
}
