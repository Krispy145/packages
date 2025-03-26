import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/services/_base.dart';
import 'package:payment/utils/const.dart';
import 'package:payment/utils/loggers.dart';
import 'package:utilities/logger/logger.dart';
// import 'package:web/web.dart' as web;

class StripeService implements BasePaymentService {
  StripeService._();

  static final StripeService instance = StripeService._();

  @override
  Future<String?> makePayment(Future<String> Function(int, String) paymentIntent) async {
    try {
      return await paymentIntent(10, "usd");
      //Web
      // String getReturnUrl() => web.window.location.href;
      // try {
      //   await WebStripe.instance.confirmPaymentElement(
      //     ConfirmPaymentElementOptions(
      //       confirmParams: ConfirmPaymentParams(return_url: getReturnUrl()),
      //     ),
      //   );
      // } catch (e) {
      //   print(e);
      // }
    } catch (e) {
      AppLogger.print(e.toString(), [PaymentLoggers.stripe], type: LoggerType.error);
    }
    return null;
  }

  Future<void> displayPaymentSheet(String paymentIntentClientSecret) async {
    try {
      //Mobile
      await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: "Lets Yak",
      ));
      await Stripe.instance.presentPaymentSheet();
      await Stripe.instance.confirmPaymentSheetPayment();
    } catch (e) {
      AppLogger.print(e.toString(), [PaymentLoggers.stripe], type: LoggerType.error);
    }
  }

  Future<String?> _createPaymentIntent(int amount, String currency) async {
    try {
      final Dio dio = Dio();
      Map<String, dynamic> data = {"amount": calculateAmount(amount), "currency": currency};

      var response = await dio.post("https://api.stripe.com/v1/payment_intents",
          data: data, options: Options(contentType: Headers.formUrlEncodedContentType, headers: {"Authorization": "Bearer $stripeSecretKey", "Content-Type": "application/x-www-form-urlencoded"}));

      print(response.data);
      return response.data['client_secret'];

      return null;
    } catch (e) {
      AppLogger.print(e.toString(), [PaymentLoggers.stripe], type: LoggerType.error);
    }
    return null;
  }

  String calculateAmount(int amount) {
    final calculatedAmount = amount * 100;
    return calculatedAmount.toString();
  }
}
