import 'package:map/data/models/marker_model.dart';
import 'package:map/utils/loggers.dart';
import 'package:utilities/data_sources/local/hive.dart';
import 'package:utilities/logger/logger.dart';

import '_source.dart';

/// [LocalMarkerDataSource] is a class that implements [MarkerDataSource] interface.
class LocalMarkerDataSource extends LocalDataSource<MarkerModel> implements MarkerDataSource {
  // Simulated in-memory data store
  final Map<String, MarkerModel> _dataStore = {};

  /// [LocalMarkerDataSource] constructor.
  LocalMarkerDataSource()
      : super(
          'markers',
          convertDataTypeFromMap: MarkerModel.fromJson,
          convertDataTypeToMap: (data) => data.toJson(),
        );

  @override
  Future<List<MarkerModel?>> search(Map<String, dynamic> queries) async {
    try {
      final maps = _dataStore.values.toList();
      AppLogger.print(
        "IN MEMORY RESULT: Fetched all Marker models successfully",
        [MapLoggers.map],
      );
      return Future.value(maps);
    } catch (e) {
      AppLogger.print(
        "IN MEMORY RESULT: Error fetching all Marker models: $e",
        [MapLoggers.map],
        type: LoggerType.error,
      );
      return [];
    }
  }
}
