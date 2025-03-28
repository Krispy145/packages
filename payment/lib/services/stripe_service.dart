import "package:cloud_firestore/cloud_firestore.dart";
import "package:cloud_functions/cloud_functions.dart";
import 'package:collection/src/iterable_extensions.dart';
import "package:firebase_auth/firebase_auth.dart";
import "package:payment/data/models/price_item_model.dart";
import "package:payment/data/models/session_data_model.dart";
import "package:payment/utils/loggers.dart";
import "package:url_launcher/url_launcher.dart";
import "package:utilities/logger/logger.dart";

import "_base.dart";

class StripeService extends BasePaymentService<PriceItemModel> {
  final FirebaseFunctions functions = FirebaseFunctions.instance;

  @override
  Future<String> createCheckoutSession(List<PriceItemModel> items, {String? successUrl, String? cancelUrl}) async {
    try {
      final sessionData = SessionDataModel(
        successUrl: successUrl ?? 'https://your-domain.com/success?session_id={CHECKOUT_SESSION_ID}',
        cancelUrl: cancelUrl ?? 'https://your-domain.com/cancel',
        items: items,
      );

      // Wrap sessionData in an object with 'sessionData' key
      final result = await functions.httpsCallable('createCheckoutSession').call({'sessionData': sessionData.toMap()});

      final sessionUrl = result.data['url'];
      return sessionUrl;
    } catch (e) {
      AppLogger.print(e.toString(), [PaymentLoggers.stripe]);
      rethrow;
    }
  }

  @override
  Future<void> launchCheckout({required String sessionUrl}) async {
    if (await canLaunchUrl(Uri.parse(sessionUrl))) {
      await launchUrl(Uri.parse(sessionUrl));
    } else {
      throw Exception("Could not launch $sessionUrl");
    }
  }

  // Method to check subscription status
  Stream<bool> listenForPaymentStatus() {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) throw Exception('User not authenticated');

    final collectionRef = FirebaseFirestore.instance.collection('stripe_customers/${user.uid}/payments');

    return collectionRef.snapshots().map((snapshot) {
      final latestDoc = snapshot.docs.firstWhereOrNull((doc) {
        final hasBeenSeen = doc.data()['seen'] as bool;
        return hasBeenSeen == false;
      });

      if (latestDoc == null) return false;

      final data = latestDoc.data();
      final status = data['status'] as String?;
      final result = status == 'succeeded';
      if (result) {
        latestDoc.reference.update({'seen': true});
      }
      return result;
    });
  }

  @override
  Future<void> handleSuccessfulSubscription(String sessionId) async {
    // TODO: Implement handleSuccessfulSubscription
  }

  @override
  Future<void> handleExpiredSubscription(String sessionId) async {
    // TODO: Implement handleExpiredSubscription
  }
}
