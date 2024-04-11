import 'package:authentication/helpers/exception.dart';
import 'package:authentication/utils/loggers.dart';
import 'package:utilities/data_sources/remote/supabase.dart';
import 'package:utilities/logger/logger.dart';

import '../models/user_model.dart';
import '_source.dart';

/// [SupabaseUserDataSource] is a class that implements [UserDataSource] interface.
class SupabaseUserDataSource extends SupabaseDataSource<UserModel> implements UserDataSource {
  /// [SupabaseUserDataSource] constructor.
  SupabaseUserDataSource()
      : super(
          'users',
          convertDataTypeFromMap: UserModel.fromJson,
          convertDataTypeToMap: (data) => data.toJson(),
        );

  /// [_handleError] is an optional helper method that handles errors when calling the Supabase database.
  // ignore: unused_element
  Future<T?> _handleError<T>(Future<T?> Function() supabaseCall) async {
    try {
      return await supabaseCall();
    } catch (e) {
      AppLogger.print(
        "Firestore RESULT: Failed request: $e",
        [AuthenticationPackageLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }
}
