// import 'package:utilities/data/sources/remote/api.dart';
// import 'package:utilities/logger/logger.dart';

// import '../../models/digital_oasis_model.dart';
// import '_source.dart';

// /// [ApiDODataSource] is a class that implements [DODataSource] interface.
// class ApiDODataSource extends ApiDataSource<DOModel> implements DODataSource {
//   /// [ApiDODataSource] constructor.
//   ApiDODataSource(super.baseUrl)
//       : super(
//           sourceSuffix: "digital_oasis",
//           convertDataTypeFromMap: DOModel.fromJson,
//           convertDataTypeToMap: (data) => data.toJson(),
//         );

//   /// [_handleError] is an optional helper method that handles errors when calling the API.
//   // ignore: unused_element
//   Future<T?> _handleError<T>(Future<T?> Function() apiCall) async {
//     try {
//       return await apiCall();
//     } catch (e) {
//       AppLogger.print(
//         "API RESULT: Failed request: $e",
//         [ThemeLoggers.theme],
//         type: LoggerType.error,
//       );
//       return null;
//     }
//   }
// }
