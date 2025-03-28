import 'package:payment/data/repositories/customer.repository.dart';
import 'package:payment/data/repositories/payment.repository.dart';
import 'package:payment/data/repositories/payment_method.repository.dart';

import 'repositories/customer.repository.dart';
import 'repositories/payment.repository.dart';
import 'repositories/payment_method.repository.dart';

class StripePaymentRepositories {
  final StripeCustomerDataRepository stripeCustomerDataRepository;
  final StripePaymentDataRepository stripePaymentDataRepository;
  final StripePaymentMethodDataRepository stripePaymentMethodDataRepository;

  StripePaymentRepositories({
    required this.stripeCustomerDataRepository,
    required this.stripePaymentDataRepository,
    required this.stripePaymentMethodDataRepository,
  });

  /// [stripeCustomer] is the [StripeCustomerRepository] instance.
  late final StripeCustomerRepository stripeCustomer = StripeCustomerRepository(
    customerDataRepository: stripeCustomerDataRepository,
  );

  /// [stripePayment] is the [PaymentRepository] instance.
  late final PaymentRepository stripePayment = PaymentRepository(
    paymentDataRepository: stripePaymentDataRepository,
  );

  /// [stripePaymentMethod] is the [PaymentMethodRepository] instance.
  late final PaymentMethodRepository stripePaymentMethod =
      PaymentMethodRepository(
    paymentMethodDataRepository: stripePaymentMethodDataRepository,
  );
}
