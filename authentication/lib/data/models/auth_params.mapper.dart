// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'auth_params.dart';

class AuthStatusMapper extends EnumMapper<AuthStatus> {
  AuthStatusMapper._();

  static AuthStatusMapper? _instance;
  static AuthStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthStatusMapper._());
    }
    return _instance!;
  }

  static AuthStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  AuthStatus decode(dynamic value) {
    switch (value) {
      case 'authenticated':
        return AuthStatus.authenticated;
      case 'unauthenticated':
        return AuthStatus.unauthenticated;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(AuthStatus self) {
    switch (self) {
      case AuthStatus.authenticated:
        return 'authenticated';
      case AuthStatus.unauthenticated:
        return 'unauthenticated';
    }
  }
}

extension AuthStatusMapperExtension on AuthStatus {
  String toValue() {
    AuthStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue<AuthStatus>(this) as String;
  }
}

class AuthTypeMapper extends EnumMapper<AuthType> {
  AuthTypeMapper._();

  static AuthTypeMapper? _instance;
  static AuthTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthTypeMapper._());
    }
    return _instance!;
  }

  static AuthType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  AuthType decode(dynamic value) {
    switch (value) {
      case 'empty':
        return AuthType.empty;
      case 'email':
        return AuthType.email;
      case 'google':
        return AuthType.google;
      case 'facebook':
        return AuthType.facebook;
      case 'x':
        return AuthType.x;
      case 'apple':
        return AuthType.apple;
      case 'github':
        return AuthType.github;
      case 'microsoft':
        return AuthType.microsoft;
      case 'phone':
        return AuthType.phone;
      case 'anonymous':
        return AuthType.anonymous;
      case 'passwordless':
        return AuthType.passwordless;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(AuthType self) {
    switch (self) {
      case AuthType.empty:
        return 'empty';
      case AuthType.email:
        return 'email';
      case AuthType.google:
        return 'google';
      case AuthType.facebook:
        return 'facebook';
      case AuthType.x:
        return 'x';
      case AuthType.apple:
        return 'apple';
      case AuthType.github:
        return 'github';
      case AuthType.microsoft:
        return 'microsoft';
      case AuthType.phone:
        return 'phone';
      case AuthType.anonymous:
        return 'anonymous';
      case AuthType.passwordless:
        return 'passwordless';
    }
  }
}

extension AuthTypeMapperExtension on AuthType {
  String toValue() {
    AuthTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<AuthType>(this) as String;
  }
}
