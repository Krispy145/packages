import 'package:fonts/data/models/font_descriptor_and_url.dart';
import 'package:fonts/data/sources/fonts/_source.dart';
import 'package:fonts/data/sources/fonts/api.source.dart';
import 'package:fonts/data/sources/fonts/asset.source.dart';
import 'package:fonts/data/sources/fonts/file_storage.source.dart';

/// [FontsDataRepository] is a class that defines the basic CRUD operations for the [FontsModel] entity.
class FontsDataRepository {
  final assetDataSource = AssetFontsDataSource();
  final apiDataSource = ApiFontsDataSource();
  final fileStorageDataSource = FileStorageFontsDataSource();

  // TODO: response from here needs to be added to the font loader
  // addFontLoaderFromByteData(familyWithVariantString, loadingFont, fontLoader);

  // TODO: Catch the exception and return a default font
  // } catch (e) {
  //     _loadedFonts.remove(familyWithVariantString);
  //     print('Error: dynamic_fonts was unable to load font $fontName because the '
  //         'following exception occurred:\n$e');
  //     if (fileIODataSource.isTest) {
  //       // print('\nThere is likely something wrong with your test. Please see '
  //       //     'https://github.com/material-foundation/flutter-packages/blob/main/packages/google_fonts/example/test '
  //       //     'for examples of how to test with google_fonts.');
  //     } else if (fileIODataSource.isMacOS || fileIODataSource.isAndroid) {
  //       print(
  //         '\nSee https://docs.flutter.dev/development/data-and-backend/networking#platform-notes.',
  //       );
  //     }
  //     // print('If troubleshooting doesn\'t solve the problem, please file an issue '
  //     //     'at https://github.com/material-foundation/flutter-packages/issues/new/choose.\n');
  //     rethrow;
  //   }

  LoadingFontData? loadFont(DOFontVariantAndUrl fontVariantAndUrl, bool allowApiFetching) async {
    LoadingFontData? loadingFont;

    loadingFont = assetDataSource.loadFont(fontVariantAndUrl);
    if (await loadingFont != null) {
      return loadingFont;
    }

    // Check if this font can be loaded from the device file system.
    loadingFont = fileStorageDataSource.loadFont(fontVariantAndUrl);

    if (await loadingFont != null) return loadingFont;

    // Attempt to load this font via http, unless disallowed.
    if (allowApiFetching) {
      loadingFont = apiDataSource.loadFont(fontVariantAndUrl);
      if (await loadingFont != null) return loadingFont;
    } else {
      throw Exception(
        'GoogleFonts.config.allowRuntimeFetching is false but font ${fontVariantAndUrl.familyWithVariant.toApiFilenamePrefix()} was not '
        'found in the application assets. Ensure ${fontVariantAndUrl.familyWithVariant.toApiFilenamePrefix()}.ttf exists in a '
        "folder that is included in your pubspec's assets.",
      );
    }

    return null;
  }
}
