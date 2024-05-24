import 'package:youtube/data/repositories/playlist.repository.dart';
import 'package:youtube/data/repositories/playlist_item.repository.dart';

import 'video.repository.dart';

///END OF IMPORTS

/// [DataRepositories] is a class that defines the different data repositories.
class DataRepositories {
  DataRepositories._();

  /// [instance] is the singleton instance of [DataRepositories].
  static final DataRepositories instance = DataRepositories._();

  /// [playlist] is the [PlaylistDataRepository] instance.
  final PlaylistDataRepository playlist = PlaylistDataRepository();

  /// [playlistItem] is the [PlaylistItemDataRepository] instance.
  final PlaylistItemDataRepository playlistItem = PlaylistItemDataRepository();

  /// [video] is the [VideoDataRepository] instance.
  final VideoDataRepository video = VideoDataRepository();

  ///END OF REPOSITORIES
}
