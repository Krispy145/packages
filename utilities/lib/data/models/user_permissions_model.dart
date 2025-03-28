import "package:dart_mappable/dart_mappable.dart";

part "user_permissions_model.mapper.dart";

@MappableEnum()
enum PermissionLevel {
  yes,
  no,
  review;
}

@MappableClass(
  caseStyle: CaseStyle.snakeCase,
  includeSubClasses: [PermissionLevel],
)
class UserPermissionsModel with UserPermissionsModelMappable {
  /// [canCreate] is the permission to create.
  final PermissionLevel canCreate;

  /// [canRead] is the permission to read.
  final PermissionLevel canRead;

  /// [canUpdate] is the permission to update.
  final PermissionLevel canUpdate;

  /// [canDelete] is the permission to delete.
  final PermissionLevel canDelete;

  const UserPermissionsModel({
    this.canCreate = PermissionLevel.no,
    this.canRead = PermissionLevel.no,
    this.canUpdate = PermissionLevel.no,
    this.canDelete = PermissionLevel.no,
  });

  static const fromMap = UserPermissionsModelMapper.fromMap;
  static const fromJson = UserPermissionsModelMapper.fromJson;

  @override
  String toString() {
    return "\nUserPermissionsModel(\ncanCreate: $canCreate\ncanRead: $canRead\ncanUpdate: $canUpdate\ncanDelete: $canDelete)\n";
  }

  static const UserPermissionsModel viewer = UserPermissionsModel(
    canRead: PermissionLevel.yes,
  );

  static const UserPermissionsModel admin = UserPermissionsModel(
    canCreate: PermissionLevel.yes,
    canRead: PermissionLevel.yes,
    canUpdate: PermissionLevel.yes,
    canDelete: PermissionLevel.yes,
  );

  static const UserPermissionsModel creator = UserPermissionsModel(
    canCreate: PermissionLevel.review,
    canRead: PermissionLevel.yes,
    canUpdate: PermissionLevel.review,
  );

  static const UserPermissionsModel editor = UserPermissionsModel(
    canRead: PermissionLevel.yes,
    canUpdate: PermissionLevel.review,
  );

  static const UserPermissionsModel destroyer = UserPermissionsModel(
    canDelete: PermissionLevel.yes,
  );

  static final List<UserPermissionsModel> fakeData = [
    viewer,
    admin,
    creator,
    editor,
    destroyer,
  ];
}
