library data.sources.user;

import "package:authentication/helpers/exception.dart";
import "package:authentication/utils/loggers.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import "package:supabase_flutter/supabase_flutter.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data/sources/api/source.dart";
import "package:utilities/data/sources/firestore/source.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/sources/supabase/source.dart";
import "package:utilities/logger/logger.dart";

import "../../models/user_model.dart";

part "api.source.dart";
part "firestore.source.dart";
part "supabase.source.dart";

/// [UserDataSource] is an abstract class that defines the basic CRUD operations for the [UserModel] entity.
sealed class UserDataSource<T extends UserModel> with DataSource<T, BasicSearchQueryModel> {}
