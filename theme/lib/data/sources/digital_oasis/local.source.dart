// import 'package:utilities/data_sources/local/hive.dart';
// import 'package:utilities/logger/logger.dart';

// import '../../models/digital_oasis_model.dart';
// import '_source.dart';

// /// [LocalDigitalOasisDataSource] is a class that implements [DigitalOasisDataSource] interface.
// class LocalDigitalOasisDataSource extends LocalDataSource<DigitalOasisModel> implements DigitalOasisDataSource {
//   // Simulated in-memory data store
//   final Map<String, DigitalOasisModel> _dataStore = {};

//   /// [LocalDigitalOasisDataSource] constructor.
//   LocalDigitalOasisDataSource()
//       : super(
//           'digital_oasis',
//           convertDataTypeFromMap: DigitalOasisModel.fromJson,
//           convertDataTypeToMap: (data) => data.toJson(),
//         );

//   @override
//   Future<List<DigitalOasisModel?>> search(Map<String, dynamic> queries) async {
//     try {
//       final digitalOasis = _dataStore.values.toList();
//       AppLogger.print(
//         "IN MEMORY RESULT: Fetched all DigitalOasis models successfully",
//         [ThemePackageLoggers.theme],
//       );
//       return Future.value(digitalOasis);
//     } catch (e) {
//       AppLogger.print(
//         "IN MEMORY RESULT: Error fetching all DigitalOasis models: $e",
//         [ThemePackageLoggers.theme],
//         type: LoggerType.error,
//       );
//       return [];
//     }
//   }
// }
