// TODO(andrewkolos): The flutter framework wishes to add a new class named
// `AssetManifest` to its API (see https://github.com/flutter/flutter/pull/119277).
// However, doing so would break integration tests that utilize google_fonts due
// to name collision with the `AssetManifest` class that this package already
// defines (see https://github.com/flutter/flutter/pull/119273).
// Once the AssetManifest API is added to flutter, update this package to use it
// instead of the AssetManifest class this package defines and remove this `hide`
// and the ignore annotation.
// ignore: undefined_hidden_name
import 'package:flutter/services.dart' hide AssetManifest;
import 'package:fonts/data/models/font_descriptor_and_url.dart';
import 'package:fonts/data/models/font_family_and_variant.dart';
import 'package:fonts/utilities/asset_manifest.dart';

import '_source.dart';

/// [AssetFontsDataSource] is a class that implements [FontsDataSource] interface.
class AssetFontsDataSource implements FontsDataSource {
  AssetManifest assetManifest = AssetManifest();

  @override
  LoadingFontData? loadFont(DOFontVariantAndUrl fontVariantAndUrl) async {
    final assetPath = _findFamilyWithVariantAssetPath(
      fontVariantAndUrl.familyWithVariant,
      await assetManifest.json(),
    );
    if (assetPath == null) return null;
    return rootBundle.load(assetPath);
  }

  /// Looks for a matching [familyWithVariant] font, provided the asset manifest.
  /// Returns the path of the font asset if found, otherwise an empty string.
  String? _findFamilyWithVariantAssetPath(
    DOFontFamilyAndVariant familyWithVariant,
    Map<String, List<String>>? manifestJson,
  ) {
    if (manifestJson == null) return null;

    final apiFilenamePrefix = familyWithVariant.toApiFilenamePrefix();

    for (final assetList in manifestJson.values) {
      for (final String asset in assetList) {
        for (final matchingSuffix in ['.ttf', '.otf'].where(asset.endsWith)) {
          final assetWithoutExtension = asset.substring(0, asset.length - matchingSuffix.length);
          if (assetWithoutExtension.endsWith(apiFilenamePrefix)) {
            return asset;
          }
        }
      }
    }

    return null;
  }
}
