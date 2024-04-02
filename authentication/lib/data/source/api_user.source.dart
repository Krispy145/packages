import 'package:authentication/helpers/exception.dart';
import 'package:utilities/data_sources/remote/api.dart';
import 'package:utilities/logger/logger.dart';

import '../models/user_model.dart';
import '_source.dart';

/// [ApiUserDataSource] is a class that implements [UserDataSource] interface.
class ApiUserDataSource extends ApiDataSource<UserModel>
    implements UserDataSource {
  final bool logToDatabase;

  /// [ApiUserDataSource] constructor.
  ApiUserDataSource(super.baseUrl, {this.logToDatabase = true})
      : super(
          sourceSuffix: "users",
          convertDataTypeFromMap: UserModel.fromJson,
          convertDataTypeToMap: (data) => data.toJson(),
        );

  /// [_handleError] is an optional helper method that handles errors when calling the API.
  // ignore: unused_element
  Future<T?> _handleError<T>(Future<T?> Function() apiCall) async {
    try {
      return await apiCall();
    } catch (e) {
      AppLogger.print(
        "API RESULT: Failed request: $e",
        [PackageFeatures.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }
}
