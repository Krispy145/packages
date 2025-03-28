library data.models.payment;

import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data/typedefs.dart";

part "stripe_customer_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class StripeCustomerModel with StripeCustomerModelMappable {
  final UUID id;
  final UUID customerId;
  final String setupSecret;
  const StripeCustomerModel({
    required this.id,
    required this.customerId,
    required this.setupSecret,
  });

  static const fromMap = StripeCustomerModelMapper.fromMap;
  static const fromJson = StripeCustomerModelMapper.fromJson;
}
