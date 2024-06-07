// import 'package:utilities/data/sources/local/hive.dart';
// import 'package:utilities/logger/logger.dart';

// import '../../models/theme_model.dart';
// import '_source.dart';

// /// [HiveThemeDataSource] is a class that implements [ThemeDataSource] interface.
// class HiveThemeDataSource extends HiveDataSource<ThemeModel> implements ThemeDataSource {
//   // Simulated in-memory data store
//   final Map<String, ThemeModel> _dataStore = {};

//   /// [HiveThemeDataSource] constructor.
//   HiveThemeDataSource()
//       : super(
//           'theme',
//           convertDataTypeFromMap: ThemeModel.fromJson,
//           convertDataTypeToMap: (data) => data.toJson(),
//         );

//   @override
//   Future<List<ThemeModel?>> search(Q query) async {
//     try {
//       final themes = _dataStore.values.toList();
//       AppLogger.print(
//         "IN MEMORY RESULT: Fetched all Theme models successfully",
//         [ThemeLoggers.theme],
//       );
//       return Future.value(themes);
//     } catch (e) {
//       AppLogger.print(
//         "IN MEMORY RESULT: Error fetching all Theme models: $e",
//         [ThemeLoggers.theme],
//         type: LoggerType.error,
//       );
//       return [];
//     }
//   }
// }
