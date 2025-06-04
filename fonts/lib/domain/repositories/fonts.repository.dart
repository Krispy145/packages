import "package:fonts/data/models/font_descriptor_and_url.dart";
import "package:fonts/data/sources/fonts/_source.dart";

import "/data/repositories/_repositories.dart";
import "/data/repositories/fonts.repository.dart";

class FontsRepository {
  final FontsDataRepository _fontsDataRepository = DataRepositories.instance.fonts;

  /// [FontsRepository] constructor.
  FontsRepository();

  LoadingFontData? loadFont(
    PLSFontVariantAndUrl fontVariantAndUrl,
    bool allowApiFetching,
  ) async {
    LoadingFontData? loadingFont;

    loadingFont = _fontsDataRepository.loadFontData(
      fontVariantAndUrl,
      FontDataSources.asset,
    );

    if (await loadingFont != null) {
      return loadingFont;
    }

    // Check if this font can be loaded from the device file system.
    loadingFont = _fontsDataRepository.loadFontData(
      fontVariantAndUrl,
      FontDataSources.fileStorage,
    );

    if (await loadingFont != null) return loadingFont;

    // Attempt to load this font via http, unless disallowed.
    if (allowApiFetching) {
      loadingFont = _fontsDataRepository.loadFontData(
        fontVariantAndUrl,
        FontDataSources.api,
      );
      if (await loadingFont != null) return loadingFont;
    } else {
      throw Exception(
        "GoogleFonts.config.allowRuntimeFetching is false but font ${fontVariantAndUrl.familyWithVariant.toApiFilenamePrefix()} was not "
        "found in the application assets. Ensure ${fontVariantAndUrl.familyWithVariant.toApiFilenamePrefix()}.ttf exists in a "
        "folder that is included in your pubspec's assets.",
      );
    }

    return null;
  }
}
