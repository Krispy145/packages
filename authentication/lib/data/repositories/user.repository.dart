import "package:authentication/data/models/user_model.dart";
import "package:authentication/data/repositories/user_permission.repository.dart";
import "package:authentication/data/sources/user/_source.dart";
import "package:authentication/utils/loggers.dart";
import "package:rxdart/rxdart.dart";
import "package:utilities/data/models/permission_model.dart";
import "package:utilities/data/models/user_permissions_model.dart";
import "package:utilities/data/sources/paginated.dart";
import "package:utilities/data/sources/source.dart";
import "package:utilities/data/typedefs.dart";
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
  final bool hasPermissions;

  /// [convertDataTypeFromMap] is the function that will be used to convert the data from [Map<String, dynamic>] to [T]
  final T Function(Map<String, dynamic>) convertDataTypeFromMap;

  /// [convertDataTypeToMap] is the function that will be used to convert the data from [T] to [Map<String, dynamic>
  final Map<String, dynamic> Function(T) convertDataTypeToMap;

  final String Function(T) titleFromType;

  /// [UserDataRepository] constructor.
  UserDataRepository(
    this.source,
    this.hasPermissions, {
    required this.convertDataTypeFromMap,
    required this.convertDataTypeToMap,
    required this.titleFromType,
    this.baseUrl,
  });
  BehaviorSubject<PermissionModel?> currentPermissionModelStream =
      BehaviorSubject<PermissionModel?>.seeded(null);
  UserPermissionDataRepository permissionDataRepository(UUID userId) =>
      UserPermissionDataRepository(
        userDataSourceType: source,
        userId: userId,
      );

  Future<void> setPermissionModel(
    UUID userId,
    List<Pair<String, UserPermissionsModel?>> permissions,
  ) async {
    final permissionsMap = <String, UserPermissionsModel>{};
    for (final element in permissions) {
      permissionsMap[element.first] = element.second!;
    }
    final _currentPermissionModel = currentPermissionModelStream.value;
    if (_currentPermissionModel == null) {
      return permissionDataRepository(userId)
          .getPermissionModel()
          .then((value) {
        currentPermissionModelStream.add(value.second);
      });
    }
    currentPermissionModelStream.add(
      currentPermissionModelStream.value?.copyWith(permissions: permissionsMap),
    );
  }

  Future<RequestResponse> initPermissions(UUID userId) async {
    if (hasPermissions) {
      final result =
          await permissionDataRepository(userId).getPermissionModel();

      if (result.first == RequestResponse.success) {
        currentPermissionModelStream.add(result.second);
      }
      return result.first;
    }
    return RequestResponse.success;
  }

  /// [getAllUserModels] returns a list of [UserModel]s.
  Future<Pair<RequestResponse, List<T?>>> getAllUserModels() async {
    return _dataSourceByType(source).getAll();
  }

  /// [searchUserModelsByAuthType] searches the [UserModel] data source.
  Future<List<T?>> searchUserModelsByAuthType({
    required UserSearchQueryModel query,
  }) async {
    return _dataSourceByType(source).searchAllAuthTypes(query);
  }

  Future<List<T?>> getUsersByIds({
    required List<String> ids,
  }) async {
    return _dataSourceByType(source).getUsersByIds(ids);
  }

  /// [searchPagedUserModels] returns a list of [UserModel]s based on the given [query].
  Future<Pair<RequestResponse, Pair<ResponseModel?, List<T?>>>>
      searchPagedUserModels({
    ResponseModel? lastResponse,
    int? size,
    required UserSearchQueryModel query,
  }) async {
    return _dataSourceByType(source).searchPage(
      query: query,
      lastResponse: lastResponse,
      size: size,
    );
  }

  /// [getPagedUserModels] returns a page of [UserModel]s.
  Future<Pair<RequestResponse, Pair<ResponseModel?, List<T?>>>>
      getPagedUserModels({
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
  Future<Pair<RequestResponse, T?>> getUserModel({
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
  UserDataSource<ResponseModel, T> _dataSourceByType(
    UserDataSourceTypes source,
  ) {
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
          titleFromType: titleFromType,
        );
      // case UserDataSourceTypes.supabase:
      //   return SupabaseUserDataSource(
      //     convertDataTypeFromMap: convertDataTypeFromMap,
      //     convertDataTypeToMap: convertDataTypeToMap,
      //   );
      default:
        AppLogger.print(
          "UserDataSourceType not found: $source",
          [AuthenticationLoggers.user],
          type: LoggerType.error,
        );
        return FirestoreUserDataSource(
          convertDataTypeFromMap: convertDataTypeFromMap,
          convertDataTypeToMap: convertDataTypeToMap,
          titleFromType: titleFromType,
        );
    }
  }
}
