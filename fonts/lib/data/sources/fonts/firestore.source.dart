import 'package:utilities/data_sources/remote/firestore.dart';
import 'package:utilities/logger/logger.dart';

import '../../models/fonts_model.dart';
import '_source.dart';

/// [FirestoreFontsDataSource] is a class that implements [FontsDataSource] interface.
class FirestoreFontsDataSource extends FirestoreDataSource<FontsModel> implements FontsDataSource {
  /// [FirestoreFontsDataSource] constructor.
  FirestoreFontsDataSource()
      : super(
          'fonts',
          convertDataTypeFromMap: FontsModel.fromJson,
          convertDataTypeToMap: (data) => data.toJson(),
        );

  /// [_handleError] is an optional helper method that handles errors when calling the Firestore.
  // ignore: unused_element
  Future<T?> _handleError<T>(Future<T?> Function() firestoreCall) async {
    try {
      return await firestoreCall();
    } catch (e) {
      AppLogger.print(
        "Firestore RESULT: Failed request: $e",
        [PackageFeatures.fonts],
        type: LoggerType.error,
      );
      return null;
    }
  }
}
