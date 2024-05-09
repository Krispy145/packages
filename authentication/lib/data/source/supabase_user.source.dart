import "package:authentication/helpers/exception.dart";
import "package:authentication/utils/loggers.dart";
import "package:utilities/data/models/search_query_model.dart";
import "package:utilities/data_sources/remote/supabase.dart";
import "package:utilities/logger/logger.dart";

import "../models/user_model.dart";
import "_source.dart";

/// [SupabaseUserDataSource] is a class that implements [UserDataSource] interface.
class SupabaseUserDataSource<T extends UserModel> extends SupabaseDataSource<T, SearchQueryModel> implements UserDataSource<T> {
  /// [SupabaseUserDataSource] constructor.
  SupabaseUserDataSource({
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  }) : super("users");

  /// [_handleError] is an optional helper method that handles errors when calling the Supabase database.
  // ignore: unused_element
  Future<T?> _handleError(Future<T?> Function() supabaseCall) async {
    try {
      return await supabaseCall();
    } catch (e) {
      AppLogger.print(
        "Firestore RESULT: Failed request: $e",
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }
}
