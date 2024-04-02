// import 'package:utilities/data_sources/local/hive.dart';
// import 'package:utilities/logger/logger.dart';

// import '../../models/theme_model.dart';
// import '_source.dart';

// /// [LocalThemeDataSource] is a class that implements [ThemeDataSource] interface.
// class LocalThemeDataSource extends LocalDataSource<ThemeModel> implements ThemeDataSource {
//   // Simulated in-memory data store
//   final Map<String, ThemeModel> _dataStore = {};

//   /// [LocalThemeDataSource] constructor.
//   LocalThemeDataSource()
//       : super(
//           'theme',
//           convertDataTypeFromMap: ThemeModel.fromJson,
//           convertDataTypeToMap: (data) => data.toJson(),
//         );

//   @override
//   Future<List<ThemeModel?>> search(Map<String, dynamic> queries) async {
//     try {
//       final themes = _dataStore.values.toList();
//       AppLogger.print(
//         "IN MEMORY RESULT: Fetched all Theme models successfully",
//         [PackageFeatures.theme],
//       );
//       return Future.value(themes);
//     } catch (e) {
//       AppLogger.print(
//         "IN MEMORY RESULT: Error fetching all Theme models: $e",
//         [PackageFeatures.theme],
//         type: LoggerType.error,
//       );
//       return [];
//     }
//   }
// }
