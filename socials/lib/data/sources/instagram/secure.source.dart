import "package:socials/data/models/instagram/user_model.dart";
import "package:socials/utils/loggers.dart";
import "package:utilities/data/sources/secure/source.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
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
  bool matchesID(String key, InstagramUserModel item) => item.id == key;

  @override
  bool matchesQuery(Map<String, dynamic> query, InstagramUserModel item) {
    AppLogger.print(
      "IN MEMORY RESULT: Matches query not implemented for InstagramUserModel",
      [SocialsLoggers.instagram],
    );
    return false;
  }

  @override
  Future<Pair<RequestResponse, InstagramUserModel?>> search(Map<String, dynamic> query) async {
    AppLogger.print(
      "IN MEMORY RESULT: Search not implemented for InstagramUserModel",
      [SocialsLoggers.instagram],
    );
    return const Pair(RequestResponse.failure, null);
  }

  @override
  Future<Pair<RequestResponse, List<InstagramUserModel?>>> searchAll(Map<String, dynamic> query) async {
    AppLogger.print(
      "IN MEMORY RESULT: Search all not implemented for InstagramUserModel",
      [SocialsLoggers.instagram],
    );
    return const Pair(RequestResponse.failure, []);
  }

  @override
  void closeStreams() {
    // TODO: implement closeStreams
  }
}
