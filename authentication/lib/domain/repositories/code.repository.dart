import "package:utilities/data/sources/source.dart";

import "/data/models/code_model.dart";
import "/data/repositories/_repositories.dart";
import "/data/repositories/code.repository.dart";
import "/data/sources/code/_source.dart";

enum CodeDataSourceType {
  firestore,
  supabase,
  hive,
  secure;

  /// [CodeDataSource] by type
  CodeDataSource get source {
    switch (this) {
      case CodeDataSourceType.firestore:
        return FirestoreCodeDataSource();
      case CodeDataSourceType.supabase:
        return SupabaseCodeDataSource();
      case CodeDataSourceType.hive:
        return HiveCodeDataSource();
      case CodeDataSourceType.secure:
        return SecureCodeDataSource();
    }
  }
}

/// [CodeRepository] is a class that defines the basic CRUD operations for the [CodeModel] entity.
class CodeRepository {
  final CodeDataRepository _codeDataRepository = DataRepositories.instance.code;
  final CodeDataSourceType sourceType;

  /// [CodeRepository] constructor.
  CodeRepository(
    this.sourceType,
  );

  /// [verifyAndConsumeCode]
  Future<RequestResponse> verifyAndConsumeCode(CODE code) {
    return _codeDataRepository.verifyAndConsumeCode(
      code,
      source: sourceType.source,
    );
  }
}
