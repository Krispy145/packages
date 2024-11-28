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

class AuthParamsMapper extends ClassMapperBase<AuthParams> {
  AuthParamsMapper._();

  static AuthParamsMapper? _instance;
  static AuthParamsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AuthParamsMapper._());
      AuthTypeMapper.ensureInitialized();
      AuthStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AuthParams';

  static String _$id(AuthParams v) => v.id;
  static const Field<AuthParams, String> _f$id = Field('id', _$id);
  static String? _$email(AuthParams v) => v.email;
  static const Field<AuthParams, String> _f$email =
      Field('email', _$email, opt: true);
  static String? _$password(AuthParams v) => v.password;
  static const Field<AuthParams, String> _f$password =
      Field('password', _$password, opt: true);
  static String? _$phoneNumber(AuthParams v) => v.phoneNumber;
  static const Field<AuthParams, String> _f$phoneNumber =
      Field('phoneNumber', _$phoneNumber, key: 'phone_number', opt: true);
  static String? _$displayName(AuthParams v) => v.displayName;
  static const Field<AuthParams, String> _f$displayName =
      Field('displayName', _$displayName, key: 'display_name', opt: true);
  static String? _$photoUrl(AuthParams v) => v.photoUrl;
  static const Field<AuthParams, String> _f$photoUrl =
      Field('photoUrl', _$photoUrl, key: 'photo_url', opt: true);
  static String? _$accessToken(AuthParams v) => v.accessToken;
  static const Field<AuthParams, String> _f$accessToken =
      Field('accessToken', _$accessToken, key: 'access_token', opt: true);
  static String? _$code(AuthParams v) => v.code;
  static const Field<AuthParams, String> _f$code =
      Field('code', _$code, opt: true);
  static String? _$idToken(AuthParams v) => v.idToken;
  static const Field<AuthParams, String> _f$idToken =
      Field('idToken', _$idToken, key: 'id_token', opt: true);
  static double? _$expiresIn(AuthParams v) => v.expiresIn;
  static const Field<AuthParams, double> _f$expiresIn =
      Field('expiresIn', _$expiresIn, key: 'expires_in', opt: true);
  static String? _$tokenType(AuthParams v) => v.tokenType;
  static const Field<AuthParams, String> _f$tokenType =
      Field('tokenType', _$tokenType, key: 'token_type', opt: true);
  static bool? _$isAuthorized(AuthParams v) => v.isAuthorized;
  static const Field<AuthParams, bool> _f$isAuthorized =
      Field('isAuthorized', _$isAuthorized, key: 'is_authorized', opt: true);
  static String? _$nonce(AuthParams v) => v.nonce;
  static const Field<AuthParams, String> _f$nonce =
      Field('nonce', _$nonce, opt: true);
  static String? _$refreshToken(AuthParams v) => v.refreshToken;
  static const Field<AuthParams, String> _f$refreshToken =
      Field('refreshToken', _$refreshToken, key: 'refresh_token', opt: true);
  static AuthType _$authType(AuthParams v) => v.authType;
  static const Field<AuthParams, AuthType> _f$authType =
      Field('authType', _$authType, key: 'auth_type');
  static AuthStatus _$status(AuthParams v) => v.status;
  static const Field<AuthParams, AuthStatus> _f$status =
      Field('status', _$status);
  static DateTime? _$createdAtTimestamp(AuthParams v) => v.createdAtTimestamp;
  static const Field<AuthParams, DateTime> _f$createdAtTimestamp = Field(
      'createdAtTimestamp', _$createdAtTimestamp,
      key: 'created_at_timestamp', opt: true);
  static DateTime? _$updatedAtTimestamp(AuthParams v) => v.updatedAtTimestamp;
  static const Field<AuthParams, DateTime> _f$updatedAtTimestamp = Field(
      'updatedAtTimestamp', _$updatedAtTimestamp,
      key: 'updated_at_timestamp', opt: true);

  @override
  final MappableFields<AuthParams> fields = const {
    #id: _f$id,
    #email: _f$email,
    #password: _f$password,
    #phoneNumber: _f$phoneNumber,
    #displayName: _f$displayName,
    #photoUrl: _f$photoUrl,
    #accessToken: _f$accessToken,
    #code: _f$code,
    #idToken: _f$idToken,
    #expiresIn: _f$expiresIn,
    #tokenType: _f$tokenType,
    #isAuthorized: _f$isAuthorized,
    #nonce: _f$nonce,
    #refreshToken: _f$refreshToken,
    #authType: _f$authType,
    #status: _f$status,
    #createdAtTimestamp: _f$createdAtTimestamp,
    #updatedAtTimestamp: _f$updatedAtTimestamp,
  };
  @override
  final bool ignoreNull = true;

  static AuthParams _instantiate(DecodingData data) {
    return AuthParams(
        id: data.dec(_f$id),
        email: data.dec(_f$email),
        password: data.dec(_f$password),
        phoneNumber: data.dec(_f$phoneNumber),
        displayName: data.dec(_f$displayName),
        photoUrl: data.dec(_f$photoUrl),
        accessToken: data.dec(_f$accessToken),
        code: data.dec(_f$code),
        idToken: data.dec(_f$idToken),
        expiresIn: data.dec(_f$expiresIn),
        tokenType: data.dec(_f$tokenType),
        isAuthorized: data.dec(_f$isAuthorized),
        nonce: data.dec(_f$nonce),
        refreshToken: data.dec(_f$refreshToken),
        authType: data.dec(_f$authType),
        status: data.dec(_f$status),
        createdAtTimestamp: data.dec(_f$createdAtTimestamp),
        updatedAtTimestamp: data.dec(_f$updatedAtTimestamp));
  }

  @override
  final Function instantiate = _instantiate;

  static AuthParams fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AuthParams>(map);
  }

  static AuthParams fromJson(String json) {
    return ensureInitialized().decodeJson<AuthParams>(json);
  }
}

mixin AuthParamsMappable {
  String toJson() {
    return AuthParamsMapper.ensureInitialized()
        .encodeJson<AuthParams>(this as AuthParams);
  }

  Map<String, dynamic> toMap() {
    return AuthParamsMapper.ensureInitialized()
        .encodeMap<AuthParams>(this as AuthParams);
  }

  AuthParamsCopyWith<AuthParams, AuthParams, AuthParams> get copyWith =>
      _AuthParamsCopyWithImpl(this as AuthParams, $identity, $identity);
  @override
  String toString() {
    return AuthParamsMapper.ensureInitialized()
        .stringifyValue(this as AuthParams);
  }

  @override
  bool operator ==(Object other) {
    return AuthParamsMapper.ensureInitialized()
        .equalsValue(this as AuthParams, other);
  }

  @override
  int get hashCode {
    return AuthParamsMapper.ensureInitialized().hashValue(this as AuthParams);
  }
}

extension AuthParamsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AuthParams, $Out> {
  AuthParamsCopyWith<$R, AuthParams, $Out> get $asAuthParams =>
      $base.as((v, t, t2) => _AuthParamsCopyWithImpl(v, t, t2));
}

abstract class AuthParamsCopyWith<$R, $In extends AuthParams, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? email,
      String? password,
      String? phoneNumber,
      String? displayName,
      String? photoUrl,
      String? accessToken,
      String? code,
      String? idToken,
      double? expiresIn,
      String? tokenType,
      bool? isAuthorized,
      String? nonce,
      String? refreshToken,
      AuthType? authType,
      AuthStatus? status,
      DateTime? createdAtTimestamp,
      DateTime? updatedAtTimestamp});
  AuthParamsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AuthParamsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AuthParams, $Out>
    implements AuthParamsCopyWith<$R, AuthParams, $Out> {
  _AuthParamsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AuthParams> $mapper =
      AuthParamsMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          Object? email = $none,
          Object? password = $none,
          Object? phoneNumber = $none,
          Object? displayName = $none,
          Object? photoUrl = $none,
          Object? accessToken = $none,
          Object? code = $none,
          Object? idToken = $none,
          Object? expiresIn = $none,
          Object? tokenType = $none,
          Object? isAuthorized = $none,
          Object? nonce = $none,
          Object? refreshToken = $none,
          AuthType? authType,
          AuthStatus? status,
          Object? createdAtTimestamp = $none,
          Object? updatedAtTimestamp = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (email != $none) #email: email,
        if (password != $none) #password: password,
        if (phoneNumber != $none) #phoneNumber: phoneNumber,
        if (displayName != $none) #displayName: displayName,
        if (photoUrl != $none) #photoUrl: photoUrl,
        if (accessToken != $none) #accessToken: accessToken,
        if (code != $none) #code: code,
        if (idToken != $none) #idToken: idToken,
        if (expiresIn != $none) #expiresIn: expiresIn,
        if (tokenType != $none) #tokenType: tokenType,
        if (isAuthorized != $none) #isAuthorized: isAuthorized,
        if (nonce != $none) #nonce: nonce,
        if (refreshToken != $none) #refreshToken: refreshToken,
        if (authType != null) #authType: authType,
        if (status != null) #status: status,
        if (createdAtTimestamp != $none)
          #createdAtTimestamp: createdAtTimestamp,
        if (updatedAtTimestamp != $none) #updatedAtTimestamp: updatedAtTimestamp
      }));
  @override
  AuthParams $make(CopyWithData data) => AuthParams(
      id: data.get(#id, or: $value.id),
      email: data.get(#email, or: $value.email),
      password: data.get(#password, or: $value.password),
      phoneNumber: data.get(#phoneNumber, or: $value.phoneNumber),
      displayName: data.get(#displayName, or: $value.displayName),
      photoUrl: data.get(#photoUrl, or: $value.photoUrl),
      accessToken: data.get(#accessToken, or: $value.accessToken),
      code: data.get(#code, or: $value.code),
      idToken: data.get(#idToken, or: $value.idToken),
      expiresIn: data.get(#expiresIn, or: $value.expiresIn),
      tokenType: data.get(#tokenType, or: $value.tokenType),
      isAuthorized: data.get(#isAuthorized, or: $value.isAuthorized),
      nonce: data.get(#nonce, or: $value.nonce),
      refreshToken: data.get(#refreshToken, or: $value.refreshToken),
      authType: data.get(#authType, or: $value.authType),
      status: data.get(#status, or: $value.status),
      createdAtTimestamp:
          data.get(#createdAtTimestamp, or: $value.createdAtTimestamp),
      updatedAtTimestamp:
          data.get(#updatedAtTimestamp, or: $value.updatedAtTimestamp));

  @override
  AuthParamsCopyWith<$R2, AuthParams, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AuthParamsCopyWithImpl($value, $cast, t);
}
