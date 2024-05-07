import "package:socials/data/models/instagram/user_model.dart";
import "package:socials/utils/loggers.dart";
import "package:utilities/data_sources/local/secure.dart";
import "package:utilities/logger/logger.dart";

import "_source.dart";

/// [LocalInstagramDataSource] is a class that implements [InstagramDataSource] interface.
class LocalInstagramDataSource extends SecureDataSource<InstagramUserModel> {
  /// [LocalInstagramDataSource] constructor.
  LocalInstagramDataSource()
      : super(
          // "instagram",
          convertDataTypeFromMap: InstagramUserModel.fromMap,
          convertDataTypeToMap: (data) => data.toMap(),
        );

  @override
  Future<InstagramUserModel?> search(Map<String, dynamic> queries) async {
    AppLogger.print(
      "IN MEMORY RESULT: Search not implemented for InstagramUserModel",
      [SocialsLoggers.instagram],
    );
    return null;
  }

  @override
  Future<List<InstagramUserModel?>> searchAll(Map<String, dynamic> queries) async {
    AppLogger.print(
      "IN MEMORY RESULT: Search all not implemented for InstagramUserModel",
      [SocialsLoggers.instagram],
    );
    return [];
  }
}
