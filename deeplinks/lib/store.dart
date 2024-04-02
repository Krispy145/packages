// ignore_for_file: inference_failure_on_untyped_parameter

import 'dart:async';

import 'package:deeplinks/models/deeplink_model.dart';
import 'package:deeplinks/models/link_properties_model.dart';
import 'package:deeplinks/models/qr_code_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_branch_sdk/flutter_branch_sdk.dart';
import 'package:mobx/mobx.dart';
import 'package:rxdart/subjects.dart';
import 'package:utilities/logger/logger.dart';

part 'store.g.dart';

/// A store for DeepLinks ads.
class DeepLinksStore = DeepLinksStoreBase with _$DeepLinksStore;

/// [DeepLinksStoreBase] is a MobX Store that is used to manage the state of the [DeepLinksStore].
abstract class DeepLinksStoreBase with Store {
  /// A controller for the data of the deep link.
  final controllerData = BehaviorSubject<String>();

  /// A controller for the init session of the deep link.
  final controllerInitSession = BehaviorSubject<String>();

  /// An optional user id for deep links.
  final String? userId;

  /// An optional function to be called when a deep link is received.
  final void Function(DeepLinkModel)? onDeepLinkReceived;

  /// [DeepLinksStoreBase] constructor.
  DeepLinksStoreBase({this.userId, this.onDeepLinkReceived}) {
    FlutterBranchSdk.init().then((value) {
      if (userId != null) {
        FlutterBranchSdk.setIdentity(userId!);
        AppLogger.print('setIdentity: $userId', [PackageFeatures.deeplinks],
            type: LoggerType.confirmation);
      }
      streamSubscription = FlutterBranchSdk.listSession().listen(
        (data) {
          if (kDebugMode && !kIsWeb) {
            FlutterBranchSdk.validateSDKIntegration();
            AppLogger.print(
                'validateSDKIntegration', [PackageFeatures.deeplinks]);
          }
          AppLogger.print('listenDynamicLinks - DeepLink Data: $data',
              [PackageFeatures.deeplinks]);
          controllerData.sink.add(data.toString());
          if (data.containsKey('+clicked_branch_link') &&
              data['+clicked_branch_link'] == true) {
            onDeepLinkReceived
                ?.call(DeepLinkModel.fromJson(data as Map<String, dynamic>));
            AppLogger.print(
                'DeepLink Data: $data', [PackageFeatures.deeplinks]);
          }
        },
        onError: (error, stackTrace) {
          final platformException = error as PlatformException;
          AppLogger.print(
            'InitSession error: ${platformException.code} - ${platformException.message}',
            [PackageFeatures.deeplinks],
            type: LoggerType.error,
          );
          controllerInitSession.add(
              'InitSession error: ${platformException.code} - ${platformException.message}');
        },
      );
    });
  }

  /// A stream for the data of the deep link.
  @observable
  StreamSubscription<Map<dynamic, dynamic>>? streamSubscription;

  /// Check if the user is identified for deep links.
  @action
  Future<bool> isUserIdentified() async {
    return FlutterBranchSdk.isUserIdentified();
  }

  /// Dispose the controllers and the streamSubscription.
  @action
  Future<void> dispose() async {
    await controllerData.close();
    await controllerInitSession.close();
    await streamSubscription?.cancel();
  }

  /// Logout the user from deep links.
  @action
  void logout() {
    FlutterBranchSdk.logout();
  }

  /// Start a new deep link session.
  @action
  void startNewDeepLink({required String url}) {
    AppLogger.print(
        'startNewDeepLink - DeepLink URL: $url', [PackageFeatures.deeplinks]);
    FlutterBranchSdk.handleDeepLink(url);
  }

  /// Get the latest referring params from the deep link.
  @action
  Future<Map<dynamic, dynamic>> getLatestReferringParams() async {
    return FlutterBranchSdk.getLatestReferringParams();
  }

  /// Get the first referring params from the deep link.
  @action
  Future<Map<dynamic, dynamic>> getFirstReferringParams() async {
    return FlutterBranchSdk.getFirstReferringParams();
  }

  /// Create a deep link.
  @action
  Future<String> createDeepLink(
      {required DeepLinkModel deepLink,
      LinkPropertiesModel? linkProperties}) async {
    try {
      AppLogger.print('Creating deep link...', [PackageFeatures.deeplinks]);
      final branchLinkProperties =
          linkProperties?.branchLinkProperties ?? BranchLinkProperties();
      final response = await FlutterBranchSdk.getShortUrl(
          buo: deepLink.branchUniversalObject,
          linkProperties: branchLinkProperties);
      if (response.success) {
        AppLogger.print(
            'Link generated: ${response.result}', [PackageFeatures.deeplinks],
            type: LoggerType.confirmation);
        return response.result.toString();
      } else {
        AppLogger.print(
            'Error : ${response.errorCode} - ${response.errorMessage}',
            [PackageFeatures.deeplinks],
            type: LoggerType.error);
        return response.errorMessage;
      }
    } catch (e) {
      AppLogger.print('Error : $e', [PackageFeatures.deeplinks],
          type: LoggerType.error);
      return e.toString();
    }
  }

  /// Share a deep link.
  @action
  Future<dynamic> shareDeepLink(
      {required String message,
      required DeepLinkModel deepLink,
      LinkPropertiesModel? linkProperties}) async {
    final branchLinkProperties = linkProperties?.branchLinkProperties ??
        BranchLinkProperties(
            channel: "share", campaign: "share", feature: "share");
    final response = await FlutterBranchSdk.showShareSheet(
        buo: deepLink.branchUniversalObject,
        linkProperties: branchLinkProperties,
        messageText: message);
    if (response.success) {
      AppLogger.print('Share link generated: ${response.result}',
          [PackageFeatures.deeplinks],
          type: LoggerType.confirmation);
      return response.result;
    } else {
      AppLogger.print(
          'Error : ${response.errorCode} - ${response.errorMessage}',
          [PackageFeatures.deeplinks],
          type: LoggerType.error);
    }
  }

  /// Create a QR code.
  @action
  Future<dynamic> createQRCode(
      {required DeepLinkModel deepLink,
      LinkPropertiesModel? linkProperties,
      QRCodeModel? qrCode}) async {
    final branchLinkProperties =
        linkProperties?.branchLinkProperties ?? BranchLinkProperties();
    final code = qrCode ?? QRCodeModel();
    if (code.type == QRCodeType.raw) {
      final response = await FlutterBranchSdk.getQRCodeAsData(
          buo: deepLink.branchUniversalObject,
          linkProperties: branchLinkProperties,
          qrCode: code.branchQrCode);
      if (response.success) {
        AppLogger.print('QR code generated: ${response.result}',
            [PackageFeatures.deeplinks],
            type: LoggerType.confirmation);
        return response.result;
      } else {
        AppLogger.print(
            'Error : ${response.errorCode} - ${response.errorMessage}',
            [PackageFeatures.deeplinks],
            type: LoggerType.error);
      }
    } else {
      final response = await FlutterBranchSdk.getQRCodeAsImage(
          buo: deepLink.branchUniversalObject,
          linkProperties: branchLinkProperties,
          qrCode: code.branchQrCode);
      if (response.success) {
        AppLogger.print('QR code generated: ${response.result}',
            [PackageFeatures.deeplinks],
            type: LoggerType.confirmation);
        return response.result;
      } else {
        AppLogger.print(
            'Error : ${response.errorCode} - ${response.errorMessage}',
            [PackageFeatures.deeplinks],
            type: LoggerType.error);
      }
    }
  }
}
