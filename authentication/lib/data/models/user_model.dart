import "package:dart_mappable/dart_mappable.dart";

import "auth_params.dart";

part "user_model.mapper.dart";

/// [UserModel] is a class that represents the user entity.
@MappableClass(
  caseStyle: CaseStyle.snakeCase,
  ignoreNull: true,
  includeSubClasses: [AuthType, AuthStatus],
)
class UserModel extends AuthParams with UserModelMappable {
  final DateTime? lastLoginTimestamp;
  final DateTime? lastLogoutTimestamp;
  List<String>? searchCases;

  UserModel({
    required super.id,
    required super.authType,
    required super.status,
    super.email,
    super.phoneNumber,
    super.displayName,
    super.photoUrl,
    super.accessToken,
    super.code,
    super.idToken,
    super.expiresIn,
    super.tokenType,
    super.isAuthorized = false,
    super.nonce,
    super.refreshToken,
    super.createdAtTimestamp,
    super.updatedAtTimestamp,
    super.password,
    this.lastLoginTimestamp,
    this.lastLogoutTimestamp,
    this.searchCases,
  });

  static const fromMap = UserModelMapper.fromMap;
  static const fromJson = UserModelMapper.fromJson;

  static UserModel anonymous = UserModel(
    id: "",
    authType: AuthType.anonymous,
    status: AuthStatus.unauthenticated,
    displayName: "Anonymous",
  );

  List<String>? searchCasesFromName(String? name) {
    if (name == null) return null;
    final cases = <String>[];
    for (var i = 0; i < name.length; i++) {
      cases.add(name.substring(0, i + 1));
    }
    return cases;
  }
}
