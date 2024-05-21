// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PlaylistsStore on _PlaylistsStore, Store {
  late final _$playlistsAtom =
      Atom(name: '_PlaylistsStore.playlists', context: context);

  @override
  ObservableList<PlaylistModel?> get playlists {
    _$playlistsAtom.reportRead();
    return super.playlists;
  }

  @override
  set playlists(ObservableList<PlaylistModel?> value) {
    _$playlistsAtom.reportWrite(value, super.playlists, () {
      super.playlists = value;
    });
  }

  late final _$loadPlaylistModelsAsyncAction =
      AsyncAction('_PlaylistsStore.loadPlaylistModels', context: context);

  @override
  Future<void> loadPlaylistModels() {
    return _$loadPlaylistModelsAsyncAction
        .run(() => super.loadPlaylistModels());
  }

  @override
  String toString() {
    return '''
playlists: ${playlists}
    ''';
  }
}
