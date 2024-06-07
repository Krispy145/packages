library data.sources.user;

import "package:authentication/data/models/auth_params.dart";
import "package:authentication/helpers/exception.dart";
import "package:authentication/utils/loggers.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data/sources/firestore/paginated.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/logger/logger.dart";

import "../../models/user_model.dart";

// part "api.source.dart";
part "firestore.source.dart";
// part "supabase.source.dart";

class UserSearchQueryModel extends BasicSearchQueryModel {
  final AuthType authType;
  final bool mustInclude;
  final bool mustExclude;
  UserSearchQueryModel({
    required this.authType,
    required this.mustInclude,
    required this.mustExclude,
  }) : super(searchTerm: "auth_type");
}

/// [UserDataSource] is an abstract class that defines the basic CRUD operations for the [UserModel] entity.
sealed class UserDataSource<Resp extends ResponseModel, T extends UserModel> with DataSource<T, UserSearchQueryModel>, Paginated<Resp, T, UserSearchQueryModel> {
  Future<List<T?>> searchAllAuthTypes(UserSearchQueryModel query);
}
