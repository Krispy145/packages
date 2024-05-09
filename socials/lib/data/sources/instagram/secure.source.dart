import "package:socials/data/models/instagram/user_model.dart";
import "package:socials/utils/loggers.dart";
import "package:utilities/data_sources/local/secure.dart";
import "package:utilities/logger/logger.dart";

/// [SecureInstagramDataSource] is a class used to manage the secure storage of [InstagramUserModel] data.
class SecureInstagramDataSource extends SecureDataSource<InstagramUserModel, Map<String, dynamic>> {
  /// [SecureInstagramDataSource] constructor.
  SecureInstagramDataSource()
      : super(
          convertDataTypeFromMap: InstagramUserModel.fromMap,
          convertDataTypeToMap: (data) => data.toMap(),
        );

  @override
  Future<InstagramUserModel?> search(Map<String, dynamic> query) async {
    AppLogger.print(
      "IN MEMORY RESULT: Search not implemented for InstagramUserModel",
      [SocialsLoggers.instagram],
    );
    return null;
  }

  @override
  Future<List<InstagramUserModel?>> searchAll(Map<String, dynamic> query) async {
    AppLogger.print(
      "IN MEMORY RESULT: Search all not implemented for InstagramUserModel",
      [SocialsLoggers.instagram],
    );
    return [];
  }
}
