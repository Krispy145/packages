import "package:authentication/helpers/exception.dart";
import "package:authentication/utils/loggers.dart";
import "package:utilities/data/models/basic_search_query_model.dart";
import "package:utilities/data_sources/api/source.dart";
import "package:utilities/logger/logger.dart";

import "../models/user_model.dart";
import "_source.dart";

/// [ApiUserDataSource] is a class that implements [UserDataSource] interface.
class ApiUserDataSource<T extends UserModel> extends ApiDataSource<T, BasicSearchQueryModel> implements UserDataSource<T> {
  /// [ApiUserDataSource] constructor.
  ApiUserDataSource(
    super.baseUrl, {
    required super.convertDataTypeFromMap,
    required super.convertDataTypeToMap,
  }) : super(sourceSuffix: "users");

  /// [_handleError] is an optional helper method that handles errors when calling the API.
  // ignore: unused_element
  Future<T?> _handleError(Future<T?> Function() apiCall) async {
    try {
      return await apiCall();
    } catch (e) {
      AppLogger.print(
        "API RESULT: Failed request: $e",
        [AuthenticationLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }

  @override
  Map<String, dynamic> buildQuery(BasicSearchQueryModel query) {
    return {
      "display_name": query.searchTerm,
    };
  }
}
