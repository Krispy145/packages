import 'package:authentication/data/models/auth_params.dart';
import 'package:authentication/helpers/exception.dart';
import 'package:authentication/utils/loggers.dart';
import 'package:utilities/data_sources/remote/api.dart';
import 'package:utilities/logger/logger.dart';

import '../models/user_model.dart';
import '_source.dart';

/// [ApiAuthDataSource] is a class that implements [AuthenticationDataSource] interface.
class ApiAuthDataSource extends ApiDataSource<UserModel> implements AuthenticationDataSource {
  final bool logToDatabase;
  UserModel? _currentUserModel;
  UserModel? get currentUserModel => _currentUserModel;

  /// [ApiAuthDataSource] constructor.
  ApiAuthDataSource(super.baseUrl, {this.logToDatabase = true})
      : super(
          sourceSuffix: "authentication",
          convertDataTypeFromMap: UserModel.fromJson,
          convertDataTypeToMap: (data) => data.toJson(),
        );

  @override
  Future<UserModel?> signIn({required AuthParams params}) async {
    return _handleError(() async {
      return requestData(
        requestExtension: 'sign_in',
        requestType: params,
        cancelPreviousRequest: true,
      );
    });
  }

  @override
  Future<UserModel?> signUp({required AuthParams params}) async {
    return _handleError(() async {
      return requestData(
        requestExtension: 'sign_up',
        requestType: params,
        cancelPreviousRequest: true,
      );
    });
  }

  @override
  Future<UserModel?> reauthenticate({required AuthParams params}) async {
    return _handleError(() async {
      return requestData(
        requestExtension: 'reauthenticate',
        requestType: params,
        cancelPreviousRequest: true,
      );
    });
  }

  @override
  Future<void> signOut({required AuthParams params}) async {
    return _handleError(() async {
      _currentUserModel = await requestData(
        requestExtension: 'sign_out',
        requestType: params,
        cancelPreviousRequest: true,
      );
    });
  }

  @override
  Future<void> deleteAccount({required String userId}) async {
    return _handleError(() => delete(userId));
  }

  /// [_handleError] is an optional helper method that handles errors when calling the API.
  // ignore: unused_element
  Future<T?> _handleError<T>(Future<T?> Function() apiCall) async {
    try {
      return await apiCall();
    } catch (e) {
      AppLogger.print(
        "API RESULT: Failed request: $e",
        [AuthenticationPackageLoggers.authentication],
        type: LoggerType.error,
      );
      throw AuthenticationException(e.toString());
    }
  }
}
