import "package:dart_mappable/dart_mappable.dart";

part "payment_model.mapper.dart";

@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum PaymentStatus {
  requiresPaymentMethod,
  requiresConfirmation,
  requiresAction,
  processing,
  succeeded,
  canceled,
  failed
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PaymentModel with PaymentModelMappable {
  final String id;
  final int amount;
  final String currency;
  final String paymentMethod;
  final String billingType;
  final PaymentStatus? status;
  final String? customerId;
  final DateTime? created;
  final String? errorMessage;
  final String? clientSecret;
  final bool livemode;
  final String? captureMethod;
  final String? confirmationMethod;
  final List<String>? paymentMethodTypes;
  final Map<String, dynamic>? paymentMethodOptions;
  final Map<String, dynamic>? processing;
  final Map<String, dynamic>? metadata;
  final String? description;
  final int? amountReceived;
  final int? amountCapturable;
  final String? statementDescriptor;
  final String? statementDescriptorSuffix;
  final String? receiptEmail;
  final String? cancellationReason;
  final DateTime? canceledAt;
  final Map<String, dynamic>? amountDetails;
  final Map<String, dynamic>? shipping;
  final Map<String, dynamic>? transferData;
  final Map<String, dynamic>? onBehalfOf;
  final Map<String, dynamic>? setupFutureUsage;
  final Map<String, dynamic>? transferGroup;
  final Map<String, dynamic>? review;
  final Map<String, dynamic>? nextAction;
  final Map<String, dynamic>? lastPaymentError;
  final Map<String, dynamic>? charges;

  const PaymentModel({
    required this.id,
    required this.amount,
    required this.currency,
    required this.paymentMethod,
    required this.billingType,
    this.status,
    this.customerId,
    this.created,
    this.errorMessage,
    this.clientSecret,
    this.livemode = false,
    this.captureMethod,
    this.confirmationMethod,
    this.paymentMethodTypes,
    this.paymentMethodOptions,
    this.processing,
    this.metadata,
    this.description,
    this.amountReceived,
    this.amountCapturable,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    this.receiptEmail,
    this.cancellationReason,
    this.canceledAt,
    this.amountDetails,
    this.shipping,
    this.transferData,
    this.onBehalfOf,
    this.setupFutureUsage,
    this.transferGroup,
    this.review,
    this.nextAction,
    this.lastPaymentError,
    this.charges,
  });

  /// Returns true if the payment is in a terminal state (succeeded, canceled, or failed)
  bool get isCompleted =>
      status == PaymentStatus.succeeded ||
      status == PaymentStatus.canceled ||
      status == PaymentStatus.failed;

  /// Returns true if the payment was successful
  bool get isSuccessful => status == PaymentStatus.succeeded;

  /// Returns true if there was an error with the payment
  bool get hasError => status == PaymentStatus.failed && errorMessage != null;

  /// Returns the formatted amount with the correct currency
  String formattedAmount(String currencySymbol) {
    // Format as decimal amount (amount is in cents)
    final decimal = amount / 100.0;
    return '$currencySymbol${decimal.toStringAsFixed(2)}';
  }

  static const fromMap = PaymentModelMapper.fromMap;
  static const fromJson = PaymentModelMapper.fromJson;
}
