// import 'package:utilities/data_sources/local/hive.dart';
// import 'package:utilities/logger/logger.dart';

// import '../../models/digital_oasis_model.dart';
// import '_source.dart';

// /// [LocalDODataSource] is a class that implements [DODataSource] interface.
// class LocalDODataSource extends LocalDataSource<DOModel> implements DODataSource {
//   // Simulated in-memory data store
//   final Map<String, DOModel> _dataStore = {};

//   /// [LocalDODataSource] constructor.
//   LocalDODataSource()
//       : super(
//           'digital_oasis',
//           convertDataTypeFromMap: DOModel.fromJson,
//           convertDataTypeToMap: (data) => data.toJson(),
//         );

//   @override
//   Future<List<DOModel?>> search(Map<String, dynamic> queries) async {
//     try {
//       final DO = _dataStore.values.toList();
//       AppLogger.print(
//         "IN MEMORY RESULT: Fetched all DO models successfully",
//         [ThemeLoggers.theme],
//       );
//       return Future.value(DO);
//     } catch (e) {
//       AppLogger.print(
//         "IN MEMORY RESULT: Error fetching all DO models: $e",
//         [ThemeLoggers.theme],
//         type: LoggerType.error,
//       );
//       return [];
//     }
//   }
// }
