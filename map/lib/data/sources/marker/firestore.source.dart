import 'package:map/utils/loggers.dart';
import 'package:utilities/data_sources/remote/firestore.dart';
import 'package:utilities/logger/logger.dart';

import '../../models/marker_model.dart';
import '_source.dart';

/// [FirestoreMarkerDataSource] is a class that implements [MarkerDataSource] interface.
class FirestoreMarkerDataSource extends FirestoreDataSource<MarkerModel> implements MarkerDataSource {
  /// [FirestoreMarkerDataSource] constructor.
  FirestoreMarkerDataSource()
      : super(
          'markers',
          convertDataTypeFromMap: MarkerModel.fromJson,
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
        [MapLoggers.map],
        type: LoggerType.error,
      );
      return null;
    }
  }
}
