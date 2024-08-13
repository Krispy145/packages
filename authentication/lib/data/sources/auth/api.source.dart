// part of "_source.dart";

// /// [ApiAuthDataSource] is a class that implements [AuthenticationDataSource] interface.
// class ApiAuthDataSource<T extends UserModel, Q> extends ApiDataSource<T, Q>
//     implements AuthenticationDataSource<T, Q> {
  // T? _currentUserModel;
  // T? get currentUserModel => _currentUserModel;

//   /// [ApiAuthDataSource] constructor.
//   ApiAuthDataSource(
//     super.baseUrl, {
//     required super.convertDataTypeFromMap,
//     required super.convertDataTypeToMap,
//   }) : super(sourceSuffix: "authentication");

//   @override
//   Future<T?> signIn({required AuthParams params}) async {
//     return _handleError(() async {
//       return requestData(
//         requestExtension: "sign_in",
//         requestType: params,
//         cancelPreviousRequest: true,
//       );
//     });
//   }

//   @override
//   Future<T?> signUp({required AuthParams params}) async {
//     return _handleError(() async {
//       return requestData(
//         requestExtension: "sign_up",
//         requestType: params,
//         cancelPreviousRequest: true,
//       );
//     });
//   }

//   @override
//   Future<T?> reauthenticate({required AuthParams params}) async {
//     return _handleError(() async {
//       return requestData(
//         requestExtension: "reauthenticate",
//         requestType: params,
//         cancelPreviousRequest: true,
//       );
//     });
//   }

//   @override
//   Future<void> signOut({required AuthParams params}) async {
//     try {
//       await requestData(
//         requestExtension: "sign_out",
//         requestType: params,
//         cancelPreviousRequest: true,
//       );
//     } catch (e) {
//       AppLogger.print(
//         "API RESULT: Failed request: $e",
//         [AuthenticationLoggers.authentication],
//         type: LoggerType.error,
//       );
//       throw AuthenticationException(e.toString());
//     }
//   }

//   @override
//   Future<void> deleteAccount({required String userId}) async {
//     try {
//       await requestData(
//         requestExtension: "delete_account",
//         requestType: userId,
//         cancelPreviousRequest: true,
//       );
//     } catch (e) {
//       AppLogger.print(
//         "API RESULT: Failed request: $e",
//         [AuthenticationLoggers.authentication],
//         type: LoggerType.error,
//       );
//       throw AuthenticationException(e.toString());
//     }
//   }

//   /// [_handleError] is an optional helper method that handles errors when calling the API.
//   // ignore: unused_element
//   Future<T?> _handleError(Future<T?> Function() apiCall) async {
//     try {
//       return await apiCall();
//     } catch (e) {
//       AppLogger.print(
//         "API RESULT: Failed request: $e",
//         [AuthenticationLoggers.authentication],
//         type: LoggerType.error,
//       );
//       throw AuthenticationException(e.toString());
//     }
//   }

//   @override
//   Map<String, dynamic> buildQuery(Q query) {
//     // TODO: implement buildQuery
//     throw UnimplementedError();
//   }
// }
