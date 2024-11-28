import "package:authentication/data/sources/code/_source.dart";
import "package:dart_mappable/dart_mappable.dart";
import "package:utilities/data/typedefs.dart";

part "auth_params.mapper.dart";

@MappableEnum()
enum AuthStatus {
  authenticated,
  unauthenticated;
}

@MappableEnum()
enum AuthType {
  empty,
  email,
  google,
  facebook,
  x,
  apple,
  github,
  microsoft,
  phone,
  anonymous,
  passwordless;
}

/// [AuthParams] is a class that represents the authentication parameters.
@MappableClass(caseStyle: CaseStyle.snakeCase, ignoreNull: true)
class AuthParams with AuthParamsMappable {
  UUID id;
  AuthType authType;
  AuthStatus status;
  String? email;
  String? password;
  String? phoneNumber;
  String? displayName;
  String? photoUrl;
  String? accessToken;
  String? idToken;
  bool? isAuthorized;
  double? expiresIn;
  String? tokenType;
  CODE? code;
  String? nonce;
  String? refreshToken;
  DateTime? createdAtTimestamp;
  DateTime? updatedAtTimestamp;

  AuthParams({
    required this.id,
    this.email,
    this.password,
    this.phoneNumber,
    this.displayName,
    this.photoUrl,
    this.accessToken,
    this.code,
    this.idToken,
    this.expiresIn,
    this.tokenType,
    this.isAuthorized,
    this.nonce,
    this.refreshToken,
    required this.authType,
    required this.status,
    this.createdAtTimestamp,
    this.updatedAtTimestamp,
  });

  AuthParams.email({
    this.id = "",
    required this.email,
    required this.password,
    this.displayName,
    this.photoUrl,
    this.phoneNumber,
    this.code,
    this.isAuthorized,
  })  : authType = AuthType.email,
        status = AuthStatus.unauthenticated;

  AuthParams.google({
    this.id = "",
    this.displayName,
    this.photoUrl,
    this.code,
    this.isAuthorized,
  })  : authType = AuthType.google,
        status = AuthStatus.unauthenticated;

  AuthParams.facebook({
    this.id = "",
    this.displayName,
    this.photoUrl,
    this.code,
    this.isAuthorized,
  })  : authType = AuthType.facebook,
        status = AuthStatus.unauthenticated;

  AuthParams.apple({
    this.id = "",
    this.displayName,
    this.photoUrl,
    this.code,
    this.isAuthorized,
  })  : authType = AuthType.apple,
        status = AuthStatus.unauthenticated;

  AuthParams.github({
    this.id = "",
    this.displayName,
    this.photoUrl,
    this.code,
    this.isAuthorized,
  })  : authType = AuthType.github,
        status = AuthStatus.unauthenticated;

  AuthParams.microsoft({
    this.id = "",
    this.displayName,
    this.photoUrl,
    this.code,
    this.isAuthorized,
  })  : authType = AuthType.microsoft,
        status = AuthStatus.unauthenticated;

  AuthParams.phone({
    this.id = "",
    required this.phoneNumber,
    required this.password,
    this.displayName,
    this.photoUrl,
    this.email,
    this.code,
    this.isAuthorized,
  })  : authType = AuthType.phone,
        status = AuthStatus.unauthenticated;

  AuthParams.anonymous({
    this.id = "",
    this.code,
    this.isAuthorized,
  })  : authType = AuthType.anonymous,
        status = AuthStatus.unauthenticated;

  AuthParams.passwordless({
    this.id = "",
    required this.email,
    required this.password,
    this.displayName,
    this.photoUrl,
    this.code,
    this.isAuthorized,
  })  : authType = AuthType.passwordless,
        status = AuthStatus.unauthenticated;

  AuthParams.empty({
    this.id = "",
    this.email,
    this.password,
    this.phoneNumber,
    this.displayName,
    this.photoUrl,
    this.updatedAtTimestamp,
    this.code,
    this.isAuthorized,
  })  : authType = AuthType.empty,
        status = AuthStatus.unauthenticated;

  AuthParams.fromUserModel({
    required this.id,
    required this.email,
    required this.displayName,
    required this.code,
    required this.isAuthorized,
    required this.photoUrl,
    required this.phoneNumber,
    required this.accessToken,
    required this.idToken,
    required this.refreshToken,
    required this.authType,
    required this.status,
    required this.createdAtTimestamp,
    required this.updatedAtTimestamp,
  });

  static const fromMap = AuthParamsMapper.fromMap;
  static const fromJson = AuthParamsMapper.fromJson;
}
