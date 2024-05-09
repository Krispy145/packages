import "package:authentication/helpers/exception.dart";
import "package:authentication/utils/loggers.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import "package:utilities/data/models/search_query_model.dart";
import "package:utilities/data_sources/remote/firestore.dart";
import "package:utilities/logger/logger.dart";

import "../models/user_model.dart";
import "_source.dart";

/// [FirestoreUserDataSource] is a class that implements [UserDataSource] interface.
class FirestoreUserDataSource<T extends UserModel> extends FirestoreDataSource<T, SearchQueryModel> implements UserDataSource<T> {
  /// [FirestoreUserDataSource] constructor.
  FirestoreUserDataSource({
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  }) : super("users");

  /// [_handleError] is an optional helper method that handles errors when calling the Firestore database.
  // ignore: unused_element
  Future<T?> _handleError(Future<T?> Function() firestoreCall) async {
    try {
      return await firestoreCall();
    } catch (e) {
      AppLogger.print(
        "Firestore RESULT: Failed request: $e",
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }

  @override
  Query<Map<String, dynamic>> buildQuery(SearchQueryModel query, Query<Map<String, dynamic>> collectionReference) {
    return collectionReference.where("display_name", isGreaterThanOrEqualTo: query.searchTerm);
  }
}
