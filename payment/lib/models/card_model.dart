import "package:dart_mappable/dart_mappable.dart";

part "card_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class CardModel with CardModelMappable {
  final String brand;
  final Map<String, String>? checks;
  final String country;
  final String displayBrand;
  final int expMonth;
  final int expYear;
  final String fingerPrint;
  final String funding;
  final String? generatedFrom;
  final String last4;
  final Map<String, String>? networks;
  final String regulatedStatus;
  final Map<String, String>? threeDSecureUsage;
  final String? wallet;

  const CardModel(
      {required this.brand,
      this.checks,
      required this.country,
      required this.displayBrand,
      required this.expMonth,
      required this.expYear,
      required this.fingerPrint,
      required this.funding,
      this.generatedFrom = '',
      required this.last4,
      this.networks,
      required this.regulatedStatus,
      this.threeDSecureUsage,
      this.wallet = ''});

  static const fromMap = CardModelMapper.fromMap;
  static const fromJson = CardModelMapper.fromJson;

  // /// [CardModel] constructor from string map.
  // factory CardModel.fromStringMap(Map<String, dynamic> map) {
  //   return CardModel(
  //     brand: map["brand"] as String? ?? "",
  //     checks: map["checks"] != null ? map["checks"]! as Map<String, String> : null,
  //     country: map["country"] as String? ?? "",
  //     displayBrand: map["display_brand"] as String? ?? "",
  //     expMonth: map["exp_month"] as int,
  //     expYear: map["exp_year"] as int,
  //   );
  // }

  // /// [toStringMap] converts the [CardModel] to a string map.
  // Map<String, String> toStringMap() {
  //   final map = <String, String>{};
  //   map["brand"] = brand;
  //   if (checks != null) {
  //     map["checks"] = checks!.toString();
  //   }
  //   map["country"] = country;
  //   map["display_brand"] = displayBrand;
  //   map["exp_month"] = expMonth;

  //   return map;
  // }
}
