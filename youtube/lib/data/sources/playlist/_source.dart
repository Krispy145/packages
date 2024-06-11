library data.sources.playlist;

import "package:dio/dio.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data/sources/api/paginated.dart";
import "package:utilities/data/sources/dummy/source.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";
import "package:youtube/data/models/internal/paged_response_model.dart";
import "package:youtube/utils/loggers.dart";

import "../../models/playlist_model.dart";

part "api.source.dart";
part "dummy.source.dart";

/// [PlaylistDataSource] is an mixin that defines the basic CRUD operations for the [PlaylistModel] entity.
sealed class PlaylistDataSource<Resp extends ResponseModel> with DataSource<PlaylistModel, BasicSearchQueryModel>, Paginated<Resp, PlaylistModel, BasicSearchQueryModel> {}
