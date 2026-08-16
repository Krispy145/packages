// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import "dart:convert" as convert;

import "package:flutter/foundation.dart";
import "package:flutter/services.dart" as services;

/// A class to obtain and memoize the app's asset manifest.
///
/// Used to check whether a font is provided as an asset.
class AssetManifest {
  AssetManifest({this.enableCache = true});

  static Future<Map<String, List<String>>?>? _jsonFuture;

  /// Whether the rootBundle should cache AssetManifest.json.
  ///
  /// Enabled by default. Should only be disabled during tests.
  final bool enableCache;

  Future<Map<String, List<String>>?>? json() =>
      _jsonFuture ??= _loadAssetManifestJson();

  Future<Map<String, List<String>>?> _loadAssetManifestJson() async {
    try {
      final manifest = await services.AssetManifest.loadFromAssetBundle(services.rootBundle);
      return {
        for (final key in manifest.listAssets()) key: [key],
      };
    } catch (_) {
      // Flutter web hot-restart can 404 the binary manifest.
      // AssetManifest.json is no longer generated; skip it on web to avoid a 404.
      if (kIsWeb) {
        return <String, List<String>>{};
      }
    }
    try {
      final jsonString = await services.rootBundle.loadString(
        "AssetManifest.json",
        cache: enableCache,
      );
      return await _manifestParser(jsonString);
    } catch (e) {
      services.rootBundle.evict("AssetManifest.json");
      // Fonts can still load from network URLs when no local assets are registered.
      return <String, List<String>>{};
    }
  }

  static Future<Map<String, List<String>>?> _manifestParser(String? jsonData) {
    if (jsonData == null) {
      return SynchronousFuture(null);
    }
    final parsedJson = convert.json.decode(jsonData) as Map<String, dynamic>;
    final parsedManifest = <String, List<String>>{
      for (final entry in parsedJson.entries)
        entry.key: (entry.value as List<dynamic>).cast<String>(),
    };
    return SynchronousFuture(parsedManifest);
  }

  @visibleForTesting
  static void reset() => _jsonFuture = null;
}
