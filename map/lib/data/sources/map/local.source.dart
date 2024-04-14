import 'package:map/utils/loggers.dart';
import 'package:utilities/data_sources/local/hive.dart';
import 'package:utilities/logger/logger.dart';

import '../../models/map_model.dart';
import '_source.dart';

/// [LocalMapDataSource] is a class that implements [MapDataSource] interface.
class LocalMapDataSource extends LocalDataSource<MapModel> implements MapDataSource {
  // Simulated in-memory data store
  final Map<String, MapModel> _dataStore = {};

  /// [LocalMapDataSource] constructor.
  LocalMapDataSource()
      : super(
          'map',
          convertDataTypeFromMap: MapModel.fromJson,
          convertDataTypeToMap: (data) => data.toJson(),
        );

  @override
  Future<List<MapModel?>> search(Map<String, dynamic> queries) async {
    try {
      final maps = _dataStore.values.toList();
      AppLogger.print(
        "IN MEMORY RESULT: Fetched all Map models successfully",
        [MapLoggers.map],
      );
      return Future.value(maps);
    } catch (e) {
      AppLogger.print(
        "IN MEMORY RESULT: Error fetching all Map models: $e",
        [MapLoggers.map],
        type: LoggerType.error,
      );
      return [];
    }
  }
}
