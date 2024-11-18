import "package:authentication/data/sources/code/_source.dart";
import "package:dart_mappable/dart_mappable.dart";

import "auth_params.dart";

part "user_model.mapper.dart";

/// [UserModel] is a class that represents the user entity.
@MappableClass(caseStyle: CaseStyle.snakeCase, ignoreNull: true, includeSubClasses: [AuthType, AuthStatus])
class UserModel with UserModelMappable {
  final String id;
  final String? accessToken;
  final bool isAuthorized;
  final String? idToken;
  final String? email;
  final String? displayName;
  final CODE? code;
  final String? photoUrl;
  final String? phoneNumber;
  final String? refreshToken;
  final AuthType? authType;
  final AuthStatus? status;
  final DateTime? createdAtTimestamp;
  final DateTime? lastLoginTimestamp;
  final DateTime? lastLogoutTimestamp;
  final DateTime? updatedAtTimestamp;
  List<String>? searchCases;

  UserModel({
    required this.id,
    this.accessToken,
    this.isAuthorized = false,
    this.idToken,
    this.email,
    this.displayName,
    this.code,
    this.photoUrl,
    this.phoneNumber,
    this.refreshToken,
    this.authType,
    this.status,
    this.createdAtTimestamp,
    this.lastLoginTimestamp,
    this.lastLogoutTimestamp,
    this.updatedAtTimestamp,
    this.searchCases,
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

  static UserModel anonymous = UserModel(
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
        code: code,
        idToken: idToken,
        isAuthorized: isAuthorized,
        refreshToken: refreshToken,
        authType: authType ?? AuthType.anonymous,
        authStatus: status ?? AuthStatus.unauthenticated,
        createdAtTimestamp: createdAtTimestamp,
        updatedAtTimestamp: updatedAtTimestamp,
      );

  List<String> searchCasesFromName(String name) {
    final cases = <String>[];
    for (var i = 0; i < name.length; i++) {
      cases.add(name.substring(0, i + 1));
    }
    return cases;
  }
}
