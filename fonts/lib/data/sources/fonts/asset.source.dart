import "package:flutter/services.dart" hide AssetManifest;
import "package:fonts/data/models/font_descriptor_and_url.dart";
import "package:fonts/data/models/font_family_and_variant.dart";
import "package:fonts/utilities/asset_manifest.dart";

import "_source.dart";

/// [AssetFontsDataSource] is a class that implements [FontsDataSource] interface.
class AssetFontsDataSource implements FontsDataSource {
  AssetManifest assetManifest = AssetManifest();

  @override
  LoadingFontData? loadFont(PLSFontVariantAndUrl fontVariantAndUrl) async {
    final assetManifestJson = await assetManifest.json();
    final assetPath = _findFamilyWithVariantAssetPath(
      fontVariantAndUrl.familyWithVariant,
      assetManifestJson,
    );
    if (assetPath == null) return null;
    return rootBundle.load(assetPath);
  }

  /// Looks for a matching [familyWithVariant] font, provided the asset manifest.
  /// Returns the path of the font asset if found, otherwise an empty string.
  String? _findFamilyWithVariantAssetPath(
    PLSFontFamilyAndVariant familyWithVariant,
    Map<String, List<String>>? manifestJson,
  ) {
    if (manifestJson == null) return null;

    final apiFilenamePrefix = familyWithVariant.toApiFilenamePrefix();

    for (final assetList in manifestJson.values) {
      for (final asset in assetList) {
        for (final matchingSuffix in [".ttf", ".otf", ".woff2"].where(asset.endsWith)) {
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
