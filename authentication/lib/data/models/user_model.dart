import "package:dart_mappable/dart_mappable.dart";

import "auth_params.dart";

part "user_model.mapper.dart";

/// [UserModel] is a class that represents the user entity.
@MappableClass(
    caseStyle: CaseStyle.snakeCase,
    ignoreNull: true,
    includeSubClasses: [AuthType, AuthStatus])
class UserModel with UserModelMappable {
  final String id;
  final String? accessToken;
  final String? idToken;
  final String? email;
  final String? displayName;
  final String? photoUrl;
  final String? phoneNumber;
  final String? refreshToken;
  final AuthType? authType;
  final AuthStatus? status;
  final DateTime? createdAt;
  final DateTime? lastLoginAt;
  final DateTime? lastLogoutAt;
  final DateTime? updatedAt;

  const UserModel({
    required this.id,
    this.accessToken,
    this.idToken,
    this.email,
    this.displayName,
    this.photoUrl,
    this.phoneNumber,
    this.refreshToken,
    this.authType,
    this.status,
    this.createdAt,
    this.lastLoginAt,
    this.lastLogoutAt,
    this.updatedAt,
  });

  static const fromMap = UserModelMapper.fromMap;
  static const fromJson = UserModelMapper.fromJson;

  UserModel reference() {
    return UserModel(
      id: id,
      displayName: displayName,
      email: email,
    );
  }

  static const UserModel anonymous = UserModel(
    id: "anonymous",
    authType: AuthType.anonymous,
    status: AuthStatus.unauthenticated,
    displayName: "Anonymous",
  );

  AuthParams toAuthParams() => AuthParams.fromUserModel(
        id: id,
        email: email,
        displayName: displayName,
        photoUrl: photoUrl,
        phoneNumber: phoneNumber,
        accessToken: accessToken,
        idToken: idToken,
        refreshToken: refreshToken,
        authType: authType ?? AuthType.anonymous,
        authStatus: status ?? AuthStatus.unauthenticated,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );
}
