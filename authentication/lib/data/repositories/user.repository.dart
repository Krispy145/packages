import "package:authentication/data/models/user_model.dart";
import "package:authentication/data/sources/user/_source.dart";
import "package:authentication/utils/loggers.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/helpers/tuples.dart";
import "package:utilities/logger/logger.dart";

/// [UserDataSourceTypes] is an enum that defines the different data sources.
enum UserDataSourceTypes {
  /// [api] is the remote data source.
  api,

  /// [supabase] is the supabase data source.
  supabase,

  /// [firestore] is the firestore data source.
  firestore,
}

/// [UserDataRepository] is a class that defines the basic CRUD operations for the [UserModel] entity.
class UserDataRepository<T extends UserModel> {
  final String? baseUrl;
  final UserDataSourceTypes source;

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  /// [UserDataRepository] constructor.
  UserDataRepository(
    this.source, {
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
    this.baseUrl,
  });

  /// [getAllUserModels] returns a list of [UserModel]s.
  Future<List<T?>> getAllUserModels() async {
    return _dataSourceByType(source).getAll();
  }

  /// [getPagedUserModels] returns a page of [UserModel]s.
  Future<Pair<ResponseModel?, List<T?>>> getPagedUserModels({
    ResponseModel? lastResponse,
    int? size,
    String? orderBy,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _dataSourceByType(source).getPage(
      size: size,
      orderBy: orderBy,
      lastResponse: lastResponse,
      queryParameters: queryParameters,
    );
  }

  /// [getUserModel] returns a single [UserModel].
  Future<T?> getUserModel({
    required String id,
  }) async {
    return _dataSourceByType(source).get(id);
  }

  /// [addAllUserModels] adds all [UserModel]s to the data source.
  Future<RequestResponse> addAllUserModels({
    required List<T> userModels,
  }) async {
    return _dataSourceByType(source).addAll(userModels);
  }

  /// [addUserModel] addits a single [UserModel] to the data source.
  Future<Pair<RequestResponse, T?>> addUserModel({
    required T userModel,
  }) async {
    return _dataSourceByType(source).add(userModel);
  }

  /// [updateUserModel] updates a single [UserModel] in the data source.
  Future<RequestResponse> updateUserModel({
    required T userModel,
  }) async {
    return _dataSourceByType(source).update(userModel.id, userModel);
  }

  /// [deleteUserModel] deletes a single [UserModel] from the data source.
  Future<RequestResponse> deleteUserModel({
    required String id,
  }) async {
    return _dataSourceByType(source).delete(id);
  }

  /// [_dataSourceByType] returns the appropriate [UserDataSource] based on the given [UserDataSourceTypes].
  /// Default is [FirestoreUserDataSource].
  /// This can be in local, an api, or firestore.
  UserDataSource<ResponseModel, T> _dataSourceByType(UserDataSourceTypes source) {
    switch (source) {
      // case UserDataSourceTypes.api:
      //   return ApiUserDataSource(
      //     baseUrl!,
      //     convertDataTypeFromMap: convertDataTypeFromMap,
      //     convertDataTypeToMap: convertDataTypeToMap,
      //   );
      case UserDataSourceTypes.firestore:
        return FirestoreUserDataSource(
          convertDataTypeFromMap: convertDataTypeFromMap,
          convertDataTypeToMap: convertDataTypeToMap,
        );
      // case UserDataSourceTypes.supabase:
      //   return SupabaseUserDataSource(
      //     convertDataTypeFromMap: convertDataTypeFromMap,
      //     convertDataTypeToMap: convertDataTypeToMap,
      //   );
      default:
        AppLogger.print("UserDataSourceType not found: $source", [AuthenticationLoggers.user], type: LoggerType.error);
        return FirestoreUserDataSource(
          convertDataTypeFromMap: convertDataTypeFromMap,
          convertDataTypeToMap: convertDataTypeToMap,
        );
    }
  }
}
