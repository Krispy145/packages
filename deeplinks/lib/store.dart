// ignore_for_file: inference_failure_on_untyped_parameter

import "dart:async";
import "dart:convert";

import "package:deeplinks/models/deeplink_model.dart";
import "package:deeplinks/models/link_properties_model.dart";
import "package:deeplinks/models/qr_code_model.dart";
import "package:deeplinks/utils/loggers.dart";
import "package:flutter/foundation.dart";
import "package:flutter/services.dart";
import "package:flutter_branch_sdk/flutter_branch_sdk.dart";
import "package:mobx/mobx.dart";
import "package:rxdart/subjects.dart";
import "package:utilities/logger/logger.dart";

part "store.g.dart";

/// A store for DeepLinks ads.
class DeepLinksStore = _DeepLinksStore with _$DeepLinksStore;

/// [_DeepLinksStore] is a Store that is used to manage the state of the [DeepLinksStore].
abstract class _DeepLinksStore with Store {
  /// A controller for the data of the deep link.
  final controllerData = BehaviorSubject<String>();

  /// A controller for the init session of the deep link.
  final controllerInitSession = BehaviorSubject<String>();

  /// An optional user id for deep links.
  final String? userId;

  /// toggle checking sdk integration
  final bool checkSDKIntegration;

  /// [_DeepLinksStore] constructor.
  _DeepLinksStore({this.userId, this.checkSDKIntegration = false}) {
    _initDeeplinksSession();
  }

  void _initDeeplinksSession() {
    FlutterBranchSdk.init().then((value) {
      if (userId != null) {
        FlutterBranchSdk.setIdentity(userId!);
        AppLogger.print(
          "setIdentity: $userId",
          [DeeplinksLoggers.deeplinks],
          type: LoggerType.confirmation,
        );
      }
      if (kDebugMode && !kIsWeb && checkSDKIntegration) {
        FlutterBranchSdk.validateSDKIntegration();
        AppLogger.print(
          "validateSDKIntegration",
          [DeeplinksLoggers.deeplinks],
        );
      }
    });
  }

  /// A stream for the data of the deep link.
  @observable
  StreamSubscription<Map<dynamic, dynamic>>? streamSubscription;

  @action
  void listenForReceivedDeepLink(void Function(DeepLinkModel) onDeepLinkReceived) {
    streamSubscription = FlutterBranchSdk.listSession().listen(
      (data) {
        AppLogger.print(
          "listenDynamicLinks - DeepLink Data: $data",
          [DeeplinksLoggers.deeplinks],
        );
        controllerData.sink.add(data.toString());
        if (data.containsKey("+clicked_branch_link") && data["+clicked_branch_link"] == true) {
          final dataMap = <String, dynamic>{};
          if (data.containsKey(r"$canonical_identifier")) {
            dataMap["canonical_identifier"] = data[r"$canonical_identifier"];
            data.remove(r"$canonical_identifier");
          }
          if (data.containsKey("title")) {
            dataMap["title"] = data["title"];
            data.remove("title");
          }
          if (data.containsKey(r"$og_title")) {
            dataMap["title"] = data[r"$og_title"];
            data.remove("title");
          }
          if (data.containsKey("content_description")) {
            dataMap["content_description"] = data["content_description"];
            data.remove("content_description");
          }
          if (data.containsKey(r"$og_description")) {
            dataMap["content_description"] = data[r"$og_description"];
            data.remove("content_description");
          }
          if (data.containsKey("image_url")) {
            dataMap["image_url"] = data["image_url"];
            data.remove("image_url");
          }
          if (data.containsKey("canonical_url")) {
            dataMap["canonical_url"] = data["canonical_url"];
            data.remove("canonical_url");
          }
          if (data.containsKey("fallback_url")) {
            dataMap["fallback_url"] = data["fallback_url"];
            data.remove("fallback_url");
          }
          if (data.containsKey("destination")) {
            dataMap["destination"] = json.decode(data["destination"] as String);
            data.remove("destination");
          }
          if (data.containsKey("metadata")) {
            dataMap["metadata"] = data["metadata"];
            data.remove("metadata");
          }
          if (data.containsKey("keywords")) {
            dataMap["keywords"] = data["keywords"];
            data.remove("keywords");
          }
          if (data.containsKey("public_index")) {
            dataMap["public_index"] = data["public_index"];
            data.remove("public_index");
          }
          if (data.containsKey("local_index")) {
            dataMap["local_index"] = data["local_index"];
            data.remove("local_index");
          }
          if (data.containsKey("expiration_date")) {
            dataMap["expiration_date"] = data["expiration_date"];
            data.remove("expiration_date");
          }
          final _metadataMap = <String, dynamic>{};
          for (final element in data.entries) {
            _metadataMap[element.key.toString()] = element.value;
          }
          dataMap["metadata"] = _metadataMap;
          final receivedDeepLink = DeepLinkModel.fromMap(dataMap);
          onDeepLinkReceived(receivedDeepLink);
          AppLogger.print(
            "DeepLink Data: $data",
            [DeeplinksLoggers.deeplinks],
          );
        }
      },
      onError: (error, stackTrace) {
        final platformException = error as PlatformException;
        AppLogger.print(
          "InitSession error: ${platformException.code} - ${platformException.message}",
          [DeeplinksLoggers.deeplinks],
          type: LoggerType.error,
        );
        controllerInitSession.add(
          "InitSession error: ${platformException.code} - ${platformException.message}",
        );
      },
    );
  }

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
      "startNewDeepLink - DeepLink URL: $url",
      [DeeplinksLoggers.deeplinks],
    );
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
  Future<String> createDeepLink({
    required DeepLinkModel deepLink,
    LinkPropertiesModel? linkProperties,
  }) async {
    try {
      AppLogger.print("Creating deep link...", [DeeplinksLoggers.deeplinks]);
      final branchLinkProperties = linkProperties?.branchLinkProperties ?? BranchLinkProperties();
      final response = await FlutterBranchSdk.getShortUrl(
        buo: deepLink.branchUniversalObject,
        linkProperties: branchLinkProperties,
      );
      if (response.success) {
        AppLogger.print(
          "Link generated: ${response.result}",
          [DeeplinksLoggers.deeplinks],
          type: LoggerType.confirmation,
        );
        return response.result.toString();
      } else {
        AppLogger.print(
          "Error : ${response.errorCode} - ${response.errorMessage}",
          [DeeplinksLoggers.deeplinks],
          type: LoggerType.error,
        );
        return response.errorMessage;
      }
    } catch (e) {
      AppLogger.print(
        "Error : $e",
        [DeeplinksLoggers.deeplinks],
        type: LoggerType.error,
      );
      return e.toString();
    }
  }

  /// Share a deep link.
  @action
  Future<dynamic> shareDeepLink({
    required String message,
    required DeepLinkModel deepLink,
    LinkPropertiesModel? linkProperties,
  }) async {
    final branchLinkProperties = linkProperties?.branchLinkProperties ??
        BranchLinkProperties(
          channel: "share",
          campaign: "share",
          feature: "share",
        );
    final response = await FlutterBranchSdk.showShareSheet(
      buo: deepLink.branchUniversalObject,
      linkProperties: branchLinkProperties,
      messageText: message,
    );
    if (response.success) {
      AppLogger.print(
        "Share link generated: ${response.result}",
        [DeeplinksLoggers.deeplinks],
        type: LoggerType.confirmation,
      );
      return response.result;
    } else {
      AppLogger.print(
        "Error : ${response.errorCode} - ${response.errorMessage}",
        [DeeplinksLoggers.deeplinks],
        type: LoggerType.error,
      );
    }
  }

  /// Create a QR code.
  @action
  Future<dynamic> createQRCode({
    required DeepLinkModel deepLink,
    LinkPropertiesModel? linkProperties,
    QRCodeModel? qrCode,
  }) async {
    final branchLinkProperties = linkProperties?.branchLinkProperties ?? BranchLinkProperties();
    final code = qrCode ?? QRCodeModel();
    if (code.type == QRCodeType.raw) {
      final response = await FlutterBranchSdk.getQRCodeAsData(
        buo: deepLink.branchUniversalObject,
        linkProperties: branchLinkProperties,
        qrCode: code.branchQrCode,
      );
      if (response.success) {
        AppLogger.print(
          "QR code generated: ${response.result}",
          [DeeplinksLoggers.deeplinks],
          type: LoggerType.confirmation,
        );
        return response.result;
      } else {
        AppLogger.print(
          "Error : ${response.errorCode} - ${response.errorMessage}",
          [DeeplinksLoggers.deeplinks],
          type: LoggerType.error,
        );
      }
    } else {
      final response = await FlutterBranchSdk.getQRCodeAsImage(
        buo: deepLink.branchUniversalObject,
        linkProperties: branchLinkProperties,
        qrCode: code.branchQrCode,
      );
      if (response.success) {
        AppLogger.print(
          "QR code generated: ${response.result}",
          [DeeplinksLoggers.deeplinks],
          type: LoggerType.confirmation,
        );
        return response.result;
      } else {
        AppLogger.print(
          "Error : ${response.errorCode} - ${response.errorMessage}",
          [DeeplinksLoggers.deeplinks],
          type: LoggerType.error,
        );
      }
    }
  }
}
