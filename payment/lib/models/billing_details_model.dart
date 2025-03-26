import "package:dart_mappable/dart_mappable.dart";

part "billing_details_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class BillingDetailsModel with BillingDetailsModelMappable {
  final String email;
  final String name;
  final String phone;
  final Map<String, String>? address;

  const BillingDetailsModel({
    required this.name,
    this.email = '',
    this.phone = '',
    this.address,
  });

  static const fromMap = BillingDetailsModelMapper.fromMap;
  static const fromJson = BillingDetailsModelMapper.fromJson;

  /// [BillingDetailsModel] constructor from string map.
  factory BillingDetailsModel.fromStringMap(Map<String, dynamic> map) {
    return BillingDetailsModel(
      email: map["email"] as String? ?? "",
      phone: map["phone"] as String? ?? "",
      name: map["name"] as String? ?? "",
      address: map["address"] != null ? map["address"]! as Map<String, String> : null,
    );
  }

  /// [toStringMap] converts the [BillingDetailsModel] to a string map.
  Map<String, String> toStringMap() {
    final map = <String, String>{};
    map["email"] = email;
    map["phone"] = phone;
    map["name"] = name;
    if (address != null) {
      map["address"] = address!.toString();
    }
    return map;
  }
}
