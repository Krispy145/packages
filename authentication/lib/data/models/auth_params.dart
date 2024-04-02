import 'dart:convert';

enum AuthStatus {
  authenticated,
  unauthenticated;
}

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
  })  : authType = AuthType.email,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.google()
      : authType = AuthType.google,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.facebook()
      : authType = AuthType.facebook,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.apple()
      : authType = AuthType.apple,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.github()
      : authType = AuthType.github,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.microsoft()
      : authType = AuthType.microsoft,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.phone({
    required this.phoneNumber,
    required this.password,
  })  : authType = AuthType.phone,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.anonymous()
      : authType = AuthType.anonymous,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.passwordless({
    required this.email,
    required this.password,
  })  : authType = AuthType.passwordless,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.empty({
    this.email,
    this.password,
    this.phoneNumber,
    this.displayName,
    this.photoUrl,
    this.updatedAt,
  })  : authType = AuthType.empty,
        authStatus = AuthStatus.unauthenticated;

  AuthParams.fromUserModel({
    required this.id,
    required this.email,
    required this.displayName,
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

  AuthParams copyWith({
    String? email,
    String? password,
    String? phoneNumber,
    String? displayName,
    String? photoUrl,
    String? accessToken,
    String? idToken,
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
      'id': id,
      'email': email,
      'password': password,
      'phoneNumber': phoneNumber,
      'displayName': displayName,
      'photoUrl': photoUrl,
      'accessToken': accessToken,
      'idToken': idToken,
      'nonce': nonce,
      'refreshToken': refreshToken,
      'authType': authType,
      'authStatus': authStatus,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
    };
  }

  factory AuthParams.fromMap(Map<String, dynamic> map) {
    return AuthParams._(
      id: map['id'],
      email: map['email'],
      password: map['password'],
      phoneNumber: map['phoneNumber'],
      displayName: map['displayName'],
      photoUrl: map['photoUrl'],
      accessToken: map['accessToken'],
      idToken: map['idToken'],
      nonce: map['nonce'],
      refreshToken: map['refreshToken'],
      authType:
          AuthType.values.firstWhere((element) => element == map['authType']),
      authStatus: AuthStatus.values
          .firstWhere((element) => element == map['authStatus']),
      createdAt: map['createdAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['createdAt'])
          : null,
      updatedAt: map['updatedAt'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['updatedAt'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AuthParams.fromJson(String source) =>
      AuthParams.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AuthParams(id: $id, email: $email, password: $password, phoneNumber: $phoneNumber, displayName: $displayName, photoUrl: $photoUrl, accessToken: $accessToken, idToken: $idToken, nonce: $nonce, refreshToken: $refreshToken, authType: $authType, authStatus: $authStatus, createdAt: $createdAt, updatedAt: $updatedAt)';
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
        nonce.hashCode ^
        refreshToken.hashCode ^
        authType.hashCode ^
        authStatus.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }
}
