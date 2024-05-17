library data.sources.youtube;

import 'package:utilities/data_sources/source.dart';
import "package:utilities/data/models/basic_search_query_model.dart";
import '../../models/youtube_model.dart';

import 'package:utilities/data_sources/remote/api.dart';
import 'package:utilities/logger/logger.dart';
import 'package:youtube/utils/loggers.dart';
import 'package:utilities/data_sources/local/assets.dart';
import "package:utilities/data_sources/local/dummy_data.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import 'package:utilities/data_sources/remote/firestore.dart';
import "package:utilities/data_sources/local/hive/hive.dart";
import "/utils/loggers.dart";
import "package:utilities/data_sources/local/secure.dart";
import "package:utilities/logger/logger.dart";
import 'package:utilities/data_sources/remote/supabase.dart';
import "package:supabase_flutter/supabase_flutter.dart";

part 'dummy.source.dart';

/// [YoutubeDataSource] is an mixin that defines the basic CRUD operations for the [YoutubeModel] entity.
sealed class YoutubeDataSource
    implements DataSource<YoutubeModel, BasicSearchQueryModel> {}
