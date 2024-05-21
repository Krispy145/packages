library data.sources.playlist;

import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data_sources/local/dummy_data.dart";
import "package:utilities/data_sources/remote/api.dart";
import 'package:utilities/data_sources/source.dart';

import '../../models/playlist_model.dart';

part 'api.source.dart';
part 'dummy.source.dart';

/// [PlaylistDataSource] is an mixin that defines the basic CRUD operations for the [PlaylistModel] entity.
sealed class PlaylistDataSource implements DataSource<PlaylistModel, BasicSearchQueryModel> {
  @override
  Future<List<PlaylistModel?>> getAll({String channelId});
}
