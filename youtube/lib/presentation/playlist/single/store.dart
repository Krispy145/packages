// ignore_for_file: unused_element

import "package:mobx/mobx.dart";
import "package:utilities/widgets/load_state/store.dart";
import "package:youtube/domain/repositories/playlist.repository.dart";

import "/data/models/playlist_model.dart";

part "store.g.dart";

/// [PlaylistStore] is a class that uses [_PlaylistStore] to manage state of the Playlist feature.
class PlaylistStore = _PlaylistStore with _$PlaylistStore;

/// [_PlaylistStore] is a class that manages the state of the Playlist feature.
abstract class _PlaylistStore extends LoadStateStore with Store {
  final String? id;

  /// [repository] is an instance of [PlaylistRepository].
  final PlaylistRepository repository = PlaylistRepository();

  /// [_PlaylistStore] constructor.
  _PlaylistStore({
    this.id,
    PlaylistModel? initialPlaylistModel,
  }) {
    _loadPlaylist(initialPlaylistModel);
  }

  /// [currentPlaylist] is an observable list of [PlaylistModel]s.
  @observable
  PlaylistModel? currentPlaylist;

  void _loadPlaylist(PlaylistModel? initialPlaylistModel) {
    if (initialPlaylistModel == null && id != null) {
      setLoading();
      repository.getPlaylistModel(id!).then((value) {
        currentPlaylist = value;
      });
    } else {
      currentPlaylist = initialPlaylistModel;
    }
    if (currentPlaylist != null) {
      setLoaded();
    } else {
      setEmpty();
    }
  }
}
