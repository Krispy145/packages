import 'package:dart_mappable/dart_mappable.dart';

part 'stripe_customers_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class StripeCustomersModel with StripeCustomersModelMappable {
  // final UUID id;
  final String customerId;
  final String setupSecret;

  const StripeCustomersModel({
    // required this.id,
    required this.customerId,
    required this.setupSecret,
  });

  static const fromMap = StripeCustomersModelMapper.fromMap;
  static const fromJson = StripeCustomersModelMapper.fromJson;
}
