import 'package:dart_mappable/dart_mappable.dart';

part 'payments_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PaymentsModel with PaymentsModelMappable {
  final int amount;
  final int amountCapturable;
  final Map<String, String>? amountDetails;
  final int amountReceived;
  final String? application;
  final int applicationFeeAmount;
  final String? automaticPaymentMethods;
  final int? canceledAt;
  final String? cancellationReason;
  final String captureMethod;
  final Map<String, String>? charges;
  final String clientSecret;
  final String confirmationMethod;
  final int created;
  final String currency;
  final String customer;
  final String? description;
  final String id;
  final String? invoice;
  final String? lastPaymentError;
  final String latestCharge;
  final bool liveMode;
  final Map<String, String>? metadata;
  final String? nextAction;
  final String object;
  final String? onBehalfOf;
  final String? paymentMethod;
  final String? paymentMethodConfigurationDetails;
  final Map<String, String> paymentMethodOptions;
  final List<String> paymentMethodTypes;
  final String? processing;
  final String? receiptEmail;
  final String? review;
  final String? setupFutureUsage;
  final String? shipping;
  final String? source;
  final String? statementDescriptor;
  final String? statementDescriptorSuffix;
  final String status;
  final String? transferData;
  final String? transferGroup;

  const PaymentsModel(
      {
      // required this.id,
      required this.amount,
      required this.amountCapturable,
      this.amountDetails,
      required this.amountReceived,
      this.application,
      required this.applicationFeeAmount,
      this.automaticPaymentMethods,
      this.canceledAt,
      this.cancellationReason,
      required this.captureMethod,
      this.charges,
      required this.clientSecret,
      required this.confirmationMethod,
      required this.created,
      required this.currency,
      required this.customer,
      this.description,
      required this.id,
      this.invoice,
      this.lastPaymentError,
      required this.latestCharge,
      required this.liveMode,
      this.metadata,
      this.nextAction,
      required this.object,
      this.onBehalfOf,
      this.paymentMethod,
      this.paymentMethodConfigurationDetails,
      required this.paymentMethodOptions,
      required this.paymentMethodTypes,
      this.processing,
      this.receiptEmail,
      this.review,
      this.setupFutureUsage,
      this.shipping,
      this.source,
      this.statementDescriptor,
      this.statementDescriptorSuffix,
      required this.status,
      this.transferData,
      this.transferGroup});

  static const fromMap = PaymentsModelMapper.fromMap;
  static const fromJson = PaymentsModelMapper.fromJson;
}
