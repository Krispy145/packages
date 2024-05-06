// import "package:socials/utils/loggers.dart";
// import "package:utilities/data_sources/local/assets.dart";
// import "package:utilities/logger/logger.dart";

// import "../../models/instagram/user_model.dart";
// import "_source.dart";

// /// [AssetsInstagramDataSource] is a class that implements [InstagramDataSource] interface.
// class AssetsInstagramDataSource extends AssetsDataSource<InstagramUserModel> implements InstagramDataSource {
//   /// [AssetsInstagramDataSource] constructor.
//   AssetsInstagramDataSource()
//       : super(
//           //TODO: Replace the following key with the actual assets key.
//           rootBundleKey: "assets/instagram/list.json",
//           convertDataTypeFromMap: InstagramUserModel.fromMap,
//           convertDataTypeToMap: (data) => data.toMap(),
//         );

//   /// [_handleError] is an optional helper method that handles errors when calling ASSETS.
//   // ignore: unused_element
//   Future<T?> _handleError<T>(Future<T?> Function() assetsCall) async {
//     try {
//       return await assetsCall();
//     } catch (e) {
//       AppLogger.print(
//         "ASSETS RESULT: Failed request: $e",
//         [SocialsLoggers.instagram],
//         type: LoggerType.error,
//       );
//       return null;
//     }
//   }
// }
