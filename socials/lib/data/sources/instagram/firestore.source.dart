// import "package:socials/utils/loggers.dart";
// import "package:utilities/data_sources/firestore/source.dart";
// import "package:utilities/logger/logger.dart";

// import "../../models/instagram/user_model.dart";
// import "_source.dart";

// /// [FirestoreInstagramDataSource] is a class that implements [InstagramDataSource] interface.
// class FirestoreInstagramDataSource extends FirestoreDataSource<InstagramUserModel> implements InstagramDataSource {
//   /// [FirestoreInstagramDataSource] constructor.
//   FirestoreInstagramDataSource()
//       : super(
//           "instagram",
//           convertDataTypeFromMap: InstagramUserModel.fromMap,
//           convertDataTypeToMap: (data) => data.toMap(),
//         );

//   /// [_handleError] is an optional helper method that handles errors when calling the Firestore.
//   // ignore: unused_element
//   Future<T?> _handleError<T>(Future<T?> Function() firestoreCall) async {
//     try {
//       return await firestoreCall();
//     } catch (e) {
//       AppLogger.print(
//         "Firestore RESULT: Failed request: $e",
//         [SocialsLoggers.instagram],
//         type: LoggerType.error,
//       );
//       return null;
//     }
//   }
// }
