import "package:flutter/material.dart";

abstract class AppIdentifier {
  String? androidPackageName;
  String? iosUrlScheme;
  String? deeplink;
  String? appStoreLink;
  bool? openStore;
  Map<String, String>? queryParams;

  AppIdentifier.checker({
    this.androidPackageName,
    this.iosUrlScheme,
  })  : openStore = false,
        appStoreLink = null;

  AppIdentifier.launcher({
    this.androidPackageName,
    this.iosUrlScheme,
    this.deeplink,
    this.appStoreLink,
    this.openStore,
    this.queryParams,
  });

  String getQuery(Map<String, String> params) {
    const startQuery = "?";
    final query = params.entries.map((entry) => "${entry.key}=${entry.value}").join("&");
    return "$startQuery$query";
  }

  String buildUrl() {
    if (queryParams != null && queryParams!.isNotEmpty) {
      return "$iosUrlScheme${getQuery(queryParams!)}";
    } else {
      return iosUrlScheme ?? "";
    }
  }

  String buildDeepLink() {
    if (queryParams != null && queryParams!.isNotEmpty) {
      return "$deeplink${getQuery(queryParams!)}";
    } else {
      return deeplink ?? "";
    }
  }

  String _buildAndroidUrl() {
    if (queryParams != null && queryParams!.isNotEmpty) {
      return "intent://${getQuery(queryParams!)}#Intent;scheme=$iosUrlScheme;package=$androidPackageName;end";
    } else {
      return "intent://#Intent;scheme=$iosUrlScheme;package=$androidPackageName;end";
    }
  }

  IconButton buildAppIconButton();

  TextButton buildAppTextButton();

  ElevatedButton buildAppElevatedButton();
}
