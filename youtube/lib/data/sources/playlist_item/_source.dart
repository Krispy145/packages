library data.sources.video;

import 'package:dio/dio.dart';
import "package:utilities/data/models/basic_search_query_model.dart";
import 'package:utilities/data_sources/api/paginated.dart';
import 'package:utilities/data_sources/dummy/source.dart';
import 'package:utilities/data_sources/paginated.dart';
import 'package:utilities/data_sources/source.dart';
import 'package:utilities/helpers/tuples.dart';
import 'package:utilities/logger/logger.dart';
import 'package:youtube/data/models/internal/paged_response_model.dart';
import 'package:youtube/data/models/playlist_item_model.dart';
import 'package:youtube/utils/loggers.dart';

part 'api.source.dart';
part 'dummy.source.dart';

/// [PlaylistItemDataSource] is an mixin that defines the basic CRUD operations for the [PlaylistItemModel] entity.
sealed class PlaylistItemDataSource<Resp extends ResponseModel> with DataSource<PlaylistItemModel, BasicSearchQueryModel>, Paginated<Resp, PlaylistItemModel, BasicSearchQueryModel> {}
