import "package:fonts/data/models/font_descriptor_and_url.dart";
import "package:fonts/data/sources/fonts/_source.dart";
import "package:fonts/data/sources/fonts/api.source.dart";
import "package:fonts/data/sources/fonts/asset.source.dart";
import "package:fonts/data/sources/fonts/file_storage.source.dart";

enum FontDataSources {
  api,
  asset,
  fileStorage,
}

/// [FontsDataRepository] is a class that defines the basic CRUD operations for the [LoadingFontData] entity.
class FontsDataRepository {
  LoadingFontData? loadFontData(
    PLSFontVariantAndUrl fontVariantAndUrl,
    FontDataSources type,
  ) {
    return _dataSourceByType(type).loadFont(fontVariantAndUrl);
  }

  FontsDataSource _dataSourceByType(FontDataSources type) {
    switch (type) {
      case FontDataSources.api:
        return ApiFontsDataSource();
      case FontDataSources.asset:
        return AssetFontsDataSource();
      case FontDataSources.fileStorage:
        return FileStorageFontsDataSource();
    }
  }
}
