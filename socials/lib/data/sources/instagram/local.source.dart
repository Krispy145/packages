import "package:socials/data/models/instagram/user_model.dart";
import "package:socials/utils/loggers.dart";
import "package:utilities/data_sources/local/hive/hive.dart";
import "package:utilities/logger/logger.dart";

import "_source.dart";

/// [LocalInstagramDataSource] is a class that implements [InstagramDataSource] interface.
class LocalInstagramDataSource extends HiveDataSource<InstagramUserModel> {
  /// [LocalInstagramDataSource] constructor.
  LocalInstagramDataSource()
      : super(
          "instagram",
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
    // try {
    //   final results = await searchAll(queries);
    //   return results.firstOrNull;
    // } catch (e) {
    //   AppLogger.print(
    //     "IN MEMORY RESULT: Error fetching all Instagram models: $e",
    //     [SocialsLoggers.instagram],
    //     type: LoggerType.error,
    //   );
    //   return null;
    // }
  }

  @override
  Future<List<InstagramUserModel?>> searchAll(Map<String, dynamic> queries) async {
    AppLogger.print(
      "IN MEMORY RESULT: Search all not implemented for InstagramUserModel",
      [SocialsLoggers.instagram],
    );
    return [];
    // try {
    //   final shops = _dataStore.values.toList();
    //   AppLogger.print(
    //     "IN MEMORY RESULT: Fetched all Instagram models successfully",
    //     [SocialsLoggers.instagram],
    //   );
    //   return Future.value(shops);
    // } catch (e) {
    //   AppLogger.print(
    //     "IN MEMORY RESULT: Error fetching all Instagram models: $e",
    //     [SocialsLoggers.instagram],
    //     type: LoggerType.error,
    //   );
    //   return [];
    // }
  }
}
