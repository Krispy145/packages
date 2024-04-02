// import 'package:utilities/data_sources/remote/api.dart';
// import 'package:utilities/logger/logger.dart';

// import '../../models/theme_model.dart';
// import '_source.dart';

// /// [ApiThemeDataSource] is a class that implements [ThemeDataSource] interface.
// class ApiThemeDataSource extends ApiDataSource<ThemeModel> implements ThemeDataSource {
//   /// [ApiThemeDataSource] constructor.
//   ApiThemeDataSource(super.baseUrl)
//       : super(
//           sourceSuffix: "theme",
//           convertDataTypeFromMap: ThemeModel.fromJson,
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
//         [PackageFeatures.theme],
//         type: LoggerType.error,
//       );
//       return null;
//     }
//   }
// }
