part of "_source.dart";

/// [SupabaseUserDataSource] is a class that implements [UserDataSource] interface.
class SupabaseUserDataSource<T extends UserModel> extends SupabaseDataSource<T, BasicSearchQueryModel> implements UserDataSource<T> {
  /// [SupabaseUserDataSource] constructor.
  SupabaseUserDataSource({
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  }) : super("users");

  @override
  SupabaseQueryBuilder buildQuery(BasicSearchQueryModel query, SupabaseQueryBuilder table) {
    // TODO: implement buildQuery
    throw UnimplementedError();
  }

  /// [_handleError] is an optional helper method that handles errors when calling the Supabase database.
  // ignore: unused_element
  Future<T?> _handleError(Future<T?> Function() supabaseCall) async {
    try {
      return await supabaseCall();
    } catch (e) {
      AppLogger.print(
        "Firestore RESULT: Failed request: $e",
        [AuthenticationLoggers.user],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }
}
