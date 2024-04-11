import 'package:utilities/data_sources/local/hive.dart';
import 'package:utilities/logger/logger.dart';

import '../../models/fonts_model.dart';
import '_source.dart';

/// [LocalFontsDataSource] is a class that implements [FontsDataSource] interface.
class LocalFontsDataSource extends LocalDataSource<FontsModel> implements FontsDataSource {
  // Simulated in-memory data store
  final Map<String, FontsModel> _dataStore = {};

  /// [LocalFontsDataSource] constructor.
  LocalFontsDataSource()
      : super(
          'fonts',
          convertDataTypeFromMap: FontsModel.fromJson,
          convertDataTypeToMap: (data) => data.toJson(),
        );

  @override
  Future<List<FontsModel?>> search(Map<String, dynamic> queries) async {
    try {
      final fontss = _dataStore.values.toList();
      AppLogger.print(
        "IN MEMORY RESULT: Fetched all Fonts models successfully",
        [PackageFeatures.fonts],
      );
      return Future.value(fontss);
    } catch (e) {
      AppLogger.print(
        "IN MEMORY RESULT: Error fetching all Fonts models: $e",
        [PackageFeatures.fonts],
        type: LoggerType.error,
      );
      return [];
    }
  }
}
