library;

import "dart:async";

import "package:cloud_firestore/cloud_firestore.dart";
import "package:payment/data/models/payment_model.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data/sources/dummy/paginated.dart";
import "package:utilities/data/sources/firestore/paginated.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/typedefs.dart";
import "package:utilities/helpers/tuples.dart";

part "dummy.source.dart";
part "firestore.source.dart";

/// [StripePaymentDataSource] is a class that defines the basic CRUD operations for the [PaymentModel] entity
/// and additional methods for Stripe payment integrations.
sealed class StripePaymentDataSource<Resp extends ResponseModel>
    with
        DataSource<PaymentModel, BasicSearchQueryModel>,
        Paginated<Resp, PaymentModel, BasicSearchQueryModel> {}
