library;

import "package:cloud_firestore/cloud_firestore.dart";
import "package:dart_mappable/dart_mappable.dart";
import "package:payment/data/models/payment_method_model.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data/sources/dummy/paginated.dart";
import "package:utilities/data/sources/firestore/paginated.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/typedefs.dart";

part "_source.mapper.dart";
part "dummy.source.dart";
part "firestore.source.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PaymentMethodSearchQueryModel extends BasicSearchQueryModel
    with PaymentMethodSearchQueryModelMappable {
  final String cardHolderName;
  final String last4;
  final String expiryDate;
  const PaymentMethodSearchQueryModel({
    super.searchTerm = "",
    required this.cardHolderName,
    required this.last4,
    required this.expiryDate,
  });

  static const fromMap = PaymentMethodSearchQueryModelMapper.fromMap;
  static const fromJson = PaymentMethodSearchQueryModelMapper.fromJson;
}

/// [StripePaymentMethodDataSource] is a class that defines the basic CRUD operations for the [PaymentMethodModel] entity
/// and additional methods for Stripe payment integrations.
sealed class StripePaymentMethodDataSource<Resp extends ResponseModel>
    with
        DataSource<PaymentMethodModel, PaymentMethodSearchQueryModel>,
        Paginated<Resp, PaymentMethodModel, PaymentMethodSearchQueryModel> {}
