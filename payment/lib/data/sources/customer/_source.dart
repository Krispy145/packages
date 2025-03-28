library data.sources.payment;

import "package:cloud_firestore/cloud_firestore.dart";
import "package:payment/data/models/stripe_customer_model.dart";

import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data/sources/dummy/paginated.dart";
import "package:utilities/data/sources/firestore/paginated.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";

part "dummy.source.dart";
part "firestore.source.dart";

/// [StripeCustomerDataSource] is a class that defines the basic CRUD operations for the [StripeCustomerModel] entity
/// and additional methods for Stripe payment integrations.
sealed class StripeCustomerDataSource<Resp extends ResponseModel>
    with
        DataSource<StripeCustomerModel, BasicSearchQueryModel>,
        Paginated<Resp, StripeCustomerModel, BasicSearchQueryModel> {}
