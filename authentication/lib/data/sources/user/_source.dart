library data.sources.user;

import "package:authentication/data/models/auth_params.dart";
import "package:authentication/helpers/exception.dart";
import "package:authentication/utils/loggers.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data/sources/firestore/paginated.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/extensions/string.dart";
import "package:utilities/logger/logger.dart";

import "../../models/user_model.dart";

// part "supabase.source.dart";
part "_source.mapper.dart";
// part "api.source.dart";
part "firestore.source.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class UserSearchQueryModel extends BasicSearchQueryModel with UserSearchQueryModelMappable {
  final AuthType authType;
  final bool mustInclude;
  final bool mustExclude;
  final bool? isAuthorized;
  const UserSearchQueryModel({
    super.searchTerm = "",
    this.authType = AuthType.anonymous,
    this.mustInclude = true,
    this.mustExclude = false,
    this.isAuthorized,
  });

  static const fromMap = UserSearchQueryModelMapper.fromMap;
  static const fromJson = UserSearchQueryModelMapper.fromJson;
}

/// [UserDataSource] is an abstract class that defines the basic CRUD operations for the [UserModel] entity.
sealed class UserDataSource<Resp extends ResponseModel, T extends UserModel> with DataSource<T, UserSearchQueryModel>, Paginated<Resp, T, UserSearchQueryModel> {
  Future<List<T?>> searchAllAuthTypes(UserSearchQueryModel query);

  Future<List<T?>> getUsersByIds(List<String> ids);
}
