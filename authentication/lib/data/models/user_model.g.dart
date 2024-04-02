// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as String,
      accessToken: json['accessToken'] as String?,
      idToken: json['idToken'] as String?,
      email: json['email'] as String?,
      displayName: json['displayName'] as String?,
      photoUrl: json['photoUrl'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      refreshToken: json['refreshToken'] as String?,
      authType: $enumDecode(_$AuthTypeEnumMap, json['authType']),
      status: $enumDecode(_$AuthStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastLoginAt: json['lastLoginAt'] == null
          ? null
          : DateTime.parse(json['lastLoginAt'] as String),
      lastLogoutAt: json['lastLogoutAt'] == null
          ? null
          : DateTime.parse(json['lastLogoutAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'accessToken': instance.accessToken,
      'idToken': instance.idToken,
      'email': instance.email,
      'displayName': instance.displayName,
      'photoUrl': instance.photoUrl,
      'phoneNumber': instance.phoneNumber,
      'refreshToken': instance.refreshToken,
      'authType': _$AuthTypeEnumMap[instance.authType]!,
      'status': _$AuthStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
      'lastLogoutAt': instance.lastLogoutAt?.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

const _$AuthTypeEnumMap = {
  AuthType.empty: 'empty',
  AuthType.email: 'email',
  AuthType.google: 'google',
  AuthType.facebook: 'facebook',
  AuthType.x: 'x',
  AuthType.apple: 'apple',
  AuthType.github: 'github',
  AuthType.microsoft: 'microsoft',
  AuthType.phone: 'phone',
  AuthType.anonymous: 'anonymous',
  AuthType.passwordless: 'passwordless',
};

const _$AuthStatusEnumMap = {
  AuthStatus.authenticated: 'authenticated',
  AuthStatus.unauthenticated: 'unauthenticated',
};
