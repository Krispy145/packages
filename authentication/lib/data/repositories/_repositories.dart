import "code.repository.dart";

///END OF IMPORTS

/// [DataRepositories] is a class that defines the different data repositories.
class DataRepositories {
  DataRepositories._();

  /// [instance] is the singleton instance of [DataRepositories].
  static final DataRepositories instance = DataRepositories._();

  /// [code] is the [CodeDataRepository] instance.
  final CodeDataRepository code = CodeDataRepository();

  // /// [permission] is the [PermissionDataRepository] instance.
  // PermissionDataRepository permission(UUID userId, UserDataSourceTypes type) => PermissionDataRepository(
  //       userId: userId,
  //       userDataSourceType: type,
  //     );

  ///END OF REPOSITORIES
}
