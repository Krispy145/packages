import "dart:convert";

import "package:authentication/data/models/user_model.dart";
import "package:authentication/data/sources/code/_source.dart";
import "package:dart_mappable/dart_mappable.dart";

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

class AuthParams {
  String? id;
  String? email;
  String? password;
  String? phoneNumber;
  String? displayName;
  String? photoUrl;
  String? accessToken;
  String? idToken;
  CODE? code;
  String? nonce;
  String? refreshToken;
  AuthType authType;
  AuthStatus authStatus;
  DateTime? createdAt;
  DateTime? updatedAt;

  AuthParams._({
    this.id,
    this.email,
    this.password,
    this.phoneNumber,
    this.displayName,
    this.photoUrl,
    this.accessToken,
    this.code,
    this.idToken,
    this.nonce,
    this.refreshToken,
    required this.authType,
    required this.authStatus,
    this.createdAt,
    this.updatedAt,
  });

  AuthParams.email({
    required this.email,
    required this.password,
    this.displayName,
    this.photoUrl,
    this.phoneNumber,
    this.code,
  })  : authType = AuthType.email,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.google({
    this.displayName,
    this.photoUrl,
    this.code,
  })  : authType = AuthType.google,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.facebook({
    this.displayName,
    this.photoUrl,
    this.code,
  })  : authType = AuthType.facebook,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.apple({
    this.displayName,
    this.photoUrl,
    this.code,
  })  : authType = AuthType.apple,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.github({
    this.displayName,
    this.photoUrl,
    this.code,
  })  : authType = AuthType.github,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.microsoft({
    this.displayName,
    this.photoUrl,
    this.code,
  })  : authType = AuthType.microsoft,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.phone({
    required this.phoneNumber,
    required this.password,
    this.displayName,
    this.photoUrl,
    this.email,
    this.code,
  })  : authType = AuthType.phone,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.anonymous({
    this.code,
  })  : authType = AuthType.anonymous,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.passwordless({
    required this.email,
    required this.password,
    this.displayName,
    this.photoUrl,
    this.code,
  })  : authType = AuthType.passwordless,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.empty({
    this.email,
    this.password,
    this.phoneNumber,
    this.displayName,
    this.photoUrl,
    this.updatedAt,
    this.code,
  })  : authType = AuthType.empty,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.fromUserModel({
    required this.id,
    required this.email,
    required this.displayName,
    required this.code,
    required this.photoUrl,
    required this.phoneNumber,
    required this.accessToken,
    required this.idToken,
    required this.refreshToken,
    required this.authType,
    required this.authStatus,
    required this.createdAt,
    required this.updatedAt,
  });

  UserModel toUserModel() {
    return UserModel(
      id: "defaultId",
      email: email,
      displayName: displayName,
      code: code,
      photoUrl: photoUrl,
      phoneNumber: phoneNumber,
      accessToken: accessToken,
      idToken: idToken,
      refreshToken: refreshToken,
      authType: authType,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  AuthParams copyWith({
    String? email,
    String? password,
    String? phoneNumber,
    String? displayName,
    String? role,
    String? photoUrl,
    String? accessToken,
    String? idToken,
    CODE? code,
    String? nonce,
    String? refreshToken,
    AuthType? authType,
    AuthStatus? authStatus,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return AuthParams._(
      email: email ?? this.email,
      password: password ?? this.password,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      displayName: displayName ?? this.displayName,
      photoUrl: photoUrl ?? this.photoUrl,
      accessToken: accessToken ?? this.accessToken,
      idToken: idToken ?? this.idToken,
      code: code ?? this.code,
      nonce: nonce ?? this.nonce,
      refreshToken: refreshToken ?? this.refreshToken,
      authType: authType ?? this.authType,
      authStatus: authStatus ?? this.authStatus,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "email": email,
      "password": password,
      "phoneNumber": phoneNumber,
      "displayName": displayName,
      "photoUrl": photoUrl,
      "accessToken": accessToken,
      "idToken": idToken,
      "code": code,
      "nonce": nonce,
      "refreshToken": refreshToken,
      "authType": authType.name,
      "authStatus": authStatus.name,
      "createdAt": createdAt?.millisecondsSinceEpoch,
      "updatedAt": updatedAt?.millisecondsSinceEpoch,
    };
  }

  factory AuthParams.fromMap(Map<String, dynamic> map) {
    return AuthParams._(
      id: map["id"] as String?,
      email: map["email"] as String?,
      password: map["password"] as String?,
      phoneNumber: map["phoneNumber"] as String?,
      displayName: map["displayName"] as String?,
      photoUrl: map["photoUrl"] as String?,
      accessToken: map["accessToken"] as String?,
      idToken: map["idToken"] as String?,
      code: map["code"] as CODE?,
      nonce: map["nonce"] as String?,
      refreshToken: map["refreshToken"] as String?,
      authType: AuthType.values.firstWhere((element) => element.name == map["authType"]),
      authStatus: AuthStatus.values.firstWhere((element) => element.name == map["authStatus"]),
      createdAt: map["createdAt"] != null ? DateTime.fromMillisecondsSinceEpoch(map["createdAt"] as int) : null,
      updatedAt: map["updatedAt"] != null ? DateTime.fromMillisecondsSinceEpoch(map["updatedAt"] as int) : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthParams.fromJson(String source) => AuthParams.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return "AuthParams(code: $code id: $id, email: $email, password: $password, phoneNumber: $phoneNumber, displayName: $displayName, photoUrl: $photoUrl, accessToken: $accessToken, idToken: $idToken, nonce: $nonce, refreshToken: $refreshToken, authType: $authType, authStatus: $authStatus, createdAt: $createdAt, updatedAt: $updatedAt)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AuthParams &&
        other.id == id &&
        other.email == email &&
        other.password == password &&
        other.phoneNumber == phoneNumber &&
        other.displayName == displayName &&
        other.photoUrl == photoUrl &&
        other.accessToken == accessToken &&
        other.idToken == idToken &&
        other.code == code &&
        other.nonce == nonce &&
        other.refreshToken == refreshToken &&
        other.authType == authType &&
        other.authStatus == authStatus &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        email.hashCode ^
        password.hashCode ^
        phoneNumber.hashCode ^
        displayName.hashCode ^
        photoUrl.hashCode ^
        accessToken.hashCode ^
        idToken.hashCode ^
        code.hashCode ^
        nonce.hashCode ^
        refreshToken.hashCode ^
        authType.hashCode ^
        authStatus.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
