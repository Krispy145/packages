import "package:dart_mappable/dart_mappable.dart";

part "payment_method_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PaymentMethodModel with PaymentMethodModelMappable {
  final String id;
  final String type;
  final String? customerId;
  final PaymentMethodCard card;
  final PaymentMethodBillingDetails billingDetails;
  final DateTime? created;
  final bool? livemode;
  final String? allowRedisplay;
  final Map<String, dynamic>? metadata;
  final String? object;

  const PaymentMethodModel({
    required this.id,
    this.type = "card",
    this.customerId,
    required this.card,
    required this.billingDetails,
    this.created,
    this.livemode,
    this.allowRedisplay,
    this.metadata,
    this.object,
  });

  static const fromMap = PaymentMethodModelMapper.fromMap;
  static const fromJson = PaymentMethodModelMapper.fromJson;
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PaymentMethodCard with PaymentMethodCardMappable {
  final String? brand;
  final String? country;
  final int expMonth;
  final int expYear;
  final String? funding;
  final String number;
  final String object;
  final String last4;
  final CardNetworks? networks;
  final String? displayBrand;
  final CardChecks? checks;
  final String? regulatedStatus;
  final dynamic wallet;
  final ThreeDSecureUsage? threeDSecureUsage;
  final String? fingerprint;
  final dynamic generatedFrom;

  const PaymentMethodCard({
    this.brand,
    this.country,
    required this.expMonth,
    required this.expYear,
    this.funding,
    required this.number,
    this.object = "card",
    required this.last4,
    this.networks,
    this.displayBrand,
    this.checks,
    this.regulatedStatus,
    this.wallet,
    this.threeDSecureUsage,
    this.fingerprint,
    this.generatedFrom,
  });

  String get displayExpiry => "$expMonth/${expYear.toString().substring(2)}";

  static const fromMap = PaymentMethodCardMapper.fromMap;
  static const fromJson = PaymentMethodCardMapper.fromJson;
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class CardNetworks with CardNetworksMappable {
  final List<String>? available;
  final String? preferred;

  const CardNetworks({
    this.available,
    this.preferred,
  });

  static const fromMap = CardNetworksMapper.fromMap;
  static const fromJson = CardNetworksMapper.fromJson;
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class CardChecks with CardChecksMappable {
  final String? addressLine1Check;
  final String? cvcCheck;
  final String? addressPostalCodeCheck;

  const CardChecks({
    this.addressLine1Check,
    this.cvcCheck,
    this.addressPostalCodeCheck,
  });

  static const fromMap = CardChecksMapper.fromMap;
  static const fromJson = CardChecksMapper.fromJson;
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ThreeDSecureUsage with ThreeDSecureUsageMappable {
  final bool? supported;

  const ThreeDSecureUsage({
    this.supported,
  });

  static const fromMap = ThreeDSecureUsageMapper.fromMap;
  static const fromJson = ThreeDSecureUsageMapper.fromJson;
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PaymentMethodBillingDetails with PaymentMethodBillingDetailsMappable {
  final String name;
  final PaymentMethodAddress? address;
  final String? email;
  final String? phone;

  const PaymentMethodBillingDetails({
    required this.name,
    this.address,
    this.email,
    this.phone,
  });

  static const fromMap = PaymentMethodBillingDetailsMapper.fromMap;
  static const fromJson = PaymentMethodBillingDetailsMapper.fromJson;
}

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PaymentMethodAddress with PaymentMethodAddressMappable {
  final String? city;
  final String? country;
  final String? line1;
  final String? line2;
  final String? postalCode;
  final String? state;

  const PaymentMethodAddress({
    this.city,
    this.country,
    this.line1,
    this.line2,
    this.postalCode,
    this.state,
  });

  static const fromMap = PaymentMethodAddressMapper.fromMap;
  static const fromJson = PaymentMethodAddressMapper.fromJson;
}
