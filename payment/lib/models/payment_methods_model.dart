import 'package:dart_mappable/dart_mappable.dart';
import 'package:payment/models/billing_details_model.dart';
import 'package:payment/models/card_model.dart';
import 'package:utilities/data/typedefs.dart';

part 'payment_methods_model.mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PaymentMethodsModel with PaymentMethodsModelMappable {
  final UUID id;
  final String allowRedisplay;
  final String customer;
  final bool liveMode;
  final BillingDetailsModel billingDetails;
  final CardModel card;
  final int created;
  final String object;
  final String type;
  final Map<String, String>? metadata;

  const PaymentMethodsModel(
      {
      // required this.id,
      required this.id,
      required this.allowRedisplay,
      required this.customer,
      this.liveMode = false,
      required this.billingDetails,
      required this.card,
      required this.created,
      required this.object,
      required this.type,
      required this.metadata});

  static const fromMap = PaymentMethodsModelMapper.fromMap;
  static const fromJson = PaymentMethodsModelMapper.fromJson;
}
