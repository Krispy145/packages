library data.sources.permission;

import "package:authentication/data/models/user_model.dart";
import "package:authentication/utils/loggers.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/data/sources/dummy/paginated.dart";
import "package:utilities/data/sources/firestore/paginated.dart";
import "package:utilities/data/sources/firestore/source.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/typedefs.dart";
import "package:utilities/logger/logger.dart";

part "dummy.source.dart";
part "firestore.source.dart";

/// [UserPermissionDataSource] is an mixin that defines the basic CRUD operations for the [PermissionModel] entity.
sealed class UserPermissionDataSource<Resp extends ResponseModel> with DataSource<PermissionModel, BasicSearchQueryModel> {}
