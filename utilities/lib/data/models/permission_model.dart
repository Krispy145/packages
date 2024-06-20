// ignore_for_file: prefer_constructors_over_static_methods

import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data/typedefs.dart";
import "package:utilities/helpers/extensions/string.dart";

import "user_permissions_model.dart";

part "permission_model.mapper.dart";

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PermissionModel with PermissionModelMappable {
  final UUID id;
  final String role;
  final Map<String, UserPermissionsModel> permissions;
  final Map<String, bool>? reviews;

  const PermissionModel({
    required this.id,
    required this.role,
    required this.permissions,
    this.reviews,
  });

  static const fromMap = PermissionModelMapper.fromMap;
  static const fromJson = PermissionModelMapper.fromJson;

  static PermissionModel collectionViewer(String collectionName) => PermissionModel(
        id: generateUniqueId(),
        role: "viewer",
        permissions: {
          "$collectionName/all": UserPermissionsModel.viewer,
        },
      );

  static const anonymous = PermissionModel(
    id: "",
    role: "anonymous",
    permissions: {},
  );

  static final permissionOne = PermissionModel(
    id: generateUniqueId(),
    role: "admin",
    permissions: {
      "users/all": UserPermissionsModel.admin,
      "users/b3J8PzDkErTUnFEb9h0gwFWiH5b2": UserPermissionsModel.viewer,
    },
  );

  static final permissionTwo = PermissionModel(
    id: generateUniqueId(),
    role: "admin",
    permissions: {
      "users/all": UserPermissionsModel.admin,
      "users/b3J8PzDkErTUnFEb9h0gwFWiH5b2": UserPermissionsModel.viewer,
    },
  );
  static final permissionThree = PermissionModel(
    id: generateUniqueId(),
    role: "admin",
    permissions: {
      "users/all": UserPermissionsModel.admin,
      "users/b3J8PzDkErTUnFEb9h0gwFWiH5b2": UserPermissionsModel.viewer,
    },
  );

  static final List<PermissionModel> fakeData = [
    permissionOne,
    permissionTwo,
    permissionThree,
  ];
}
