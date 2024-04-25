import 'package:fonts/data/models/font_descriptor_and_url.dart';
import 'package:fonts/data/sources/fonts/_source.dart';
import 'package:fonts/data/sources/fonts/api.source.dart';
import 'package:fonts/data/sources/fonts/asset.source.dart';
import 'package:fonts/data/sources/fonts/file_storage.source.dart';

enum FontDataSources {
  api,
  asset,
  fileStorage,
}

/// [FontsDataRepository] is a class that defines the basic CRUD operations for the [LoadingFontData] entity.
class FontsDataRepository {
  LoadingFontData? loadFontData(DOFontVariantAndUrl fontVariantAndUrl, FontDataSources type) {
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

// /// [PlaylistDataRepository] is a class that defines the basic CRUD operations for the [PlaylistModel] entity.
// class PlaylistDataRepository {
//   /// [PlaylistDataRepository] constructor.
//   PlaylistDataRepository(this.apiKey);

//   /// [getPlaylists] returns a [PagedResponse] list of [PlaylistModel]s.
//   Future<PagedResponse<Playlist?>> getPlaylists(
//     String channelId, {
//     DataSourceTypes type = DataSourceTypes.api,
//     String? nextPageToken,
//   }) async {
//     return _dataSourceByType(type).getPlaylists(
//       channelId,
//       PagedRequest(nextPageToken: nextPageToken),
//     );
//   }

//   /// [_dataSourceByType] returns the appropriate [PlaylistDataSource] based on the [DataSourceTypes] enum.
//   /// Defaults to [ApiPlaylistDataSource].
//   /// This can be in local, an api, or firestore.
//   FontsDataSource _dataSourceByType(DataSourceTypes type) {
//     switch (type) {
//       case DataSourceTypes.api:
//       case DataSourceTypes.local:
//       case DataSourceTypes.firestore:
//         return ApiPlaylistDataSource(apiKey);
//       // return HivePlaylistDataSource();
//       // return FirestorePlaylistDataSource();
//       default:
//         return ApiPlaylistDataSource(apiKey);
//     }
//   }
// }
