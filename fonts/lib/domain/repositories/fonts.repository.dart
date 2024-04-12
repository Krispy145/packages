import 'package:fonts/data/models/font_descriptor_and_url.dart';
import 'package:fonts/data/sources/fonts/_source.dart';

import '/data/repositories/_repositories.dart';
import '/data/repositories/fonts.repository.dart';

class FontsRepository {
  final FontsDataRepository _fontsDataRepository = DataRepositories.instance.fonts;

  /// [FontsRepository] constructor.
  FontsRepository();

  LoadingFontData? loadFont(DOFontVariantAndUrl fontVariantAndUrl, bool allowAPIFetching) async {
    return _fontsDataRepository.loadFont(fontVariantAndUrl, allowAPIFetching);
  }
}
