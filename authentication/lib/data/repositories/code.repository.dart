import "package:utilities/data/sources/source.dart";

import "/data/models/code_model.dart";
import "/data/sources/code/_source.dart";

/// [CodeDataRepository] is a class that defines the basic CRUD operations for the [CodeModel] entity.
class CodeDataRepository {
  /// [verifyAndConsumeCode]
  Future<RequestResponse> verifyAndConsumeCode(
    CODE code, {
    required CodeDataSource source,
  }) {
    return source.verifyAndConsumeCode(code);
  }
}
