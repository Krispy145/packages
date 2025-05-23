import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:collection/src/iterable_extensions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:payment/data/models/price_item_model.dart';
import 'package:payment/data/models/session_data_model.dart';
import 'package:payment/data/models/session_setup_model.dart';
import 'package:payment/utils/loggers.dart';
import 'package:rxdart/rxdart.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:utilities/helpers/tuples.dart';
import 'package:utilities/logger/logger.dart';

import '_base.dart';

class StripeFirebaseService extends BasePaymentService<PriceItemModel> {
  final FirebaseFunctions functions = FirebaseFunctions.instance;

  @override
  Future<SessionSetupModel> createCheckoutSession(
    List<PriceItemModel> items, {
    String? successUrl,
    String? cancelUrl,
  }) async {
    try {
      final sessionData = SessionDataModel(
        successUrl: successUrl ?? 'https://your-domain.com/success?session_id={CHECKOUT_SESSION_ID}',
        cancelUrl: cancelUrl ?? 'https://your-domain.com/cancel',
        items: items,
      );

      final result = await functions.httpsCallable('createCheckoutSession').call({'sessionData': sessionData.toMap()});

      final sessionSetupData = SessionSetupModel.fromMap(result.data);
      return sessionSetupData;
    } catch (e) {
      AppLogger.print(e.toString(), [PaymentLoggers.stripe], type: LoggerType.error);
      rethrow;
    }
  }

  @override
  Future<void> updateSubscriptionItem({
    required String subscriptionId,
    required String subscriptionItemId,
    required String productType,
    String? newPriceId,
    int? newQuantity,
  }) async {
    try {
      assert(newPriceId != null || newQuantity != null, 'Either newPriceId or newQuantity must be provided');
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) throw Exception('User not authenticated');

      final result = await functions.httpsCallable('updateSubscriptionItem').call({
        'subscriptionId': subscriptionId,
        'subscriptionItemId': subscriptionItemId,
        'newPriceId': newPriceId,
        'newQuantity': newQuantity,
        'productType': productType,
      });

      final message = result.data['message'];
      AppLogger.print(message, [PaymentLoggers.stripe]);
    } catch (e) {
      AppLogger.print(e.toString(), [PaymentLoggers.stripe], type: LoggerType.error);
      rethrow;
    }
  }

  @override
  Future<void> launchCheckout({required String sessionUrl}) async {
    try {
      final uri = Uri.parse(sessionUrl);
      if (!await canLaunchUrl(uri)) {
        throw Exception("Could not launch Stripe checkout");
      }
      await launchUrl(uri);
    } catch (e) {
      AppLogger.print('Error launching URL: $e', [PaymentLoggers.stripe], type: LoggerType.error);
      rethrow;
    }
  }

  Stream<Pair<String?, bool>> listenForPaymentStatus({
    bool? isSubscription,
    bool? isPayment,
    bool? isBoth,
  }) {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) throw Exception('User not authenticated');

    final paymentRef = FirebaseFirestore.instance.collection('stripe_customers/${user.uid}/payments');
    final subscriptionRef = FirebaseFirestore.instance.collection('stripe_customers/${user.uid}/subscriptions');

    Stream<Pair<String?, bool>> subscriptionStream = Stream.value(const Pair(null, false));
    Stream<Pair<String?, bool>> paymentStream = Stream.value(const Pair(null, false));

    if (isSubscription == true || isBoth == true) {
      subscriptionStream = subscriptionRef.snapshots().map((snapshot) {
        final doc = snapshot.docs.firstWhereOrNull((d) => (d.data()['status'] == 'active'));
        return Pair(doc?.id, doc != null);
      });
    }

    if (isPayment == true || isBoth == true) {
      paymentStream = paymentRef.snapshots().map((snapshot) {
        final doc = snapshot.docs.firstWhereOrNull((d) => (d.data()['status'] == 'succeeded' && !(d.data()['seen'] ?? false)));

        if (doc != null) {
          doc.reference.update({'seen': true});
        }

        return Pair(null, doc != null);
      });
    }

    if (isBoth == true) {
      return Rx.combineLatest2(subscriptionStream, paymentStream, (Pair<String?, bool> sub, Pair<String?, bool> pay) {
        return Pair(sub.first ?? pay.first, sub.second || pay.second);
      });
    } else if (isSubscription == true) {
      return subscriptionStream;
    } else if (isPayment == true) {
      return paymentStream;
    }

    return Stream.value(const Pair(null, false));
  }

  // Optional: Listen for live subscription updates
  Stream<DocumentSnapshot<Map<String, dynamic>>> streamCurrentSubscription(String subscriptionId) {
    final user = FirebaseAuth.instance.currentUser!;
    return FirebaseFirestore.instance.doc('stripe_customers/${user.uid}/subscriptions/$subscriptionId').snapshots();
  }

  @override
  Future<void> handleSuccessfulSubscription(String sessionId) async {
    // TODO: Implement handleSuccessfulSubscription
  }

  @override
  Future<void> handleExpiredSubscription(String sessionId) async {
    // TODO: Implement handleExpiredSubscription
  }

  Future<String?> getSubscriptionItemIdByProductType({
    required String subscriptionId,
    required String productType,
  }) async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) throw Exception('User not authenticated');

      final docRef = FirebaseFirestore.instance.doc('stripe_customers/${user.uid}/subscriptions/$subscriptionId');

      final snapshot = await docRef.get();
      if (!snapshot.exists) return null;

      final data = snapshot.data();
      if (data == null || !data.containsKey('items')) return null;

      final List<dynamic> items = data['items'];
      final match = items.firstWhereOrNull(
        (item) => item['productType'] == productType,
      );

      return match?['subscriptionItemId'];
    } catch (e) {
      AppLogger.print(e.toString(), [PaymentLoggers.stripe], type: LoggerType.error);
      rethrow;
    }
  }
}
