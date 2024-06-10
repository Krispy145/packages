library data.sources.code;

import "package:authentication/helpers/code.dart";
import "package:authentication/utils/loggers.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import "package:supabase_flutter/supabase_flutter.dart";
import "package:utilities/data/sources/firestore/source.dart";
import "package:utilities/data/sources/hive/source.dart";
import "package:utilities/data/sources/secure/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/sources/supabase/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";

import "../../models/code_model.dart";

part "firestore.source.dart";
part "hive.source.dart";
part "secure.source.dart";
part "supabase.source.dart";

typedef CODE = String;

/// [CodeDataSource] is an mixin that defines the basic CRUD operations for the [CodeModel] entity.
sealed class CodeDataSource with DataSource<CodeModel, void> {
  /// [verifyAndConsumeCode]
  Future<RequestResponse> verifyAndConsumeCode(CODE code);
}
