import "package:authentication/data/models/user_model.dart";
import "package:authentication/data/source/_source.dart";
import "package:authentication/data/source/api_user.source.dart";
import "package:authentication/data/source/firestore_user.source.dart";
import "package:authentication/data/source/supabase_user.source.dart";

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

  /// [getAllUsers] returns a list of [UserModel]s based on the [source].
  Future<List<T?>> getAllUsers() async {
    return _dataSourceByType(source).getAll();
  }

  /// [getUser] returns a [T] based on the [id] and [source].
  Future<T?> getUser(String id) async {
    return _dataSourceByType(source).get(id);
  }

  /// [addUser] adds a [T] based on the [user] and [source].
  Future<T?> addUser(T user) async {
    return _dataSourceByType(source).add(user);
  }

  /// [updateUser] updates a [T] based on the [user] and [source].
  Future<void> updateUser(T user) async {
    return _dataSourceByType(source).update(user.id, user);
  }

  /// [deleteUser] deletes a [T] based on the [id] and [source].
  Future<void> deleteUser({
    required String id,
  }) async {
    return _dataSourceByType(source).delete(id);
  }

  /// [_dataSourceByType] returns the appropriate [UserDataSource] based on the given [UserDataSourceTypes].
  /// Default is [FirestoreUserDataSource].
  /// This can be in local, an api, or firestore.
  UserDataSource<T> _dataSourceByType(UserDataSourceTypes source) {
    switch (source) {
      case UserDataSourceTypes.api:
        return ApiUserDataSource(
          baseUrl!,
          convertDataTypeFromMap: convertDataTypeFromMap,
          convertDataTypeToMap: convertDataTypeToMap,
        );
      case UserDataSourceTypes.firestore:
        return FirestoreUserDataSource(
          convertDataTypeFromMap: convertDataTypeFromMap,
          convertDataTypeToMap: convertDataTypeToMap,
        );
      case UserDataSourceTypes.supabase:
        return SupabaseUserDataSource(
          convertDataTypeFromMap: convertDataTypeFromMap,
          convertDataTypeToMap: convertDataTypeToMap,
        );
    }
  }
}
