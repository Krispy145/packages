import 'package:map/utils/loggers.dart';
import 'package:utilities/data_sources/remote/firestore.dart';
import 'package:utilities/logger/logger.dart';

import '../../models/map_model.dart';
import '_source.dart';

/// [FirestoreMapDataSource] is a class that implements [MapDataSource] interface.
class FirestoreMapDataSource extends FirestoreDataSource<MapModel> implements MapDataSource {
  /// [FirestoreMapDataSource] constructor.
  FirestoreMapDataSource()
      : super(
          'map',
          convertDataTypeFromMap: MapModel.fromJson,
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
