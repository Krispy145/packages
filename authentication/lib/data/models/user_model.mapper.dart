// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_model.dart';

class UserModelMapper extends ClassMapperBase<UserModel> {
  UserModelMapper._();

  static UserModelMapper? _instance;
  static UserModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserModelMapper._());
      AuthTypeMapper.ensureInitialized();
      AuthStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserModel';

  static String _$id(UserModel v) => v.id;
  static const Field<UserModel, String> _f$id = Field('id', _$id);
  static String? _$accessToken(UserModel v) => v.accessToken;
  static const Field<UserModel, String> _f$accessToken =
      Field('accessToken', _$accessToken, key: 'access_token', opt: true);
  static bool _$isAuthorized(UserModel v) => v.isAuthorized;
  static const Field<UserModel, bool> _f$isAuthorized = Field(
      'isAuthorized', _$isAuthorized,
      key: 'is_authorized', opt: true, def: false);
  static String? _$idToken(UserModel v) => v.idToken;
  static const Field<UserModel, String> _f$idToken =
      Field('idToken', _$idToken, key: 'id_token', opt: true);
  static String? _$email(UserModel v) => v.email;
  static const Field<UserModel, String> _f$email =
      Field('email', _$email, opt: true);
  static String? _$displayName(UserModel v) => v.displayName;
  static const Field<UserModel, String> _f$displayName =
      Field('displayName', _$displayName, key: 'display_name', opt: true);
  static String? _$code(UserModel v) => v.code;
  static const Field<UserModel, String> _f$code =
      Field('code', _$code, opt: true);
  static String? _$photoUrl(UserModel v) => v.photoUrl;
  static const Field<UserModel, String> _f$photoUrl =
      Field('photoUrl', _$photoUrl, key: 'photo_url', opt: true);
  static String? _$phoneNumber(UserModel v) => v.phoneNumber;
  static const Field<UserModel, String> _f$phoneNumber =
      Field('phoneNumber', _$phoneNumber, key: 'phone_number', opt: true);
  static String? _$refreshToken(UserModel v) => v.refreshToken;
  static const Field<UserModel, String> _f$refreshToken =
      Field('refreshToken', _$refreshToken, key: 'refresh_token', opt: true);
  static AuthType? _$authType(UserModel v) => v.authType;
  static const Field<UserModel, AuthType> _f$authType =
      Field('authType', _$authType, key: 'auth_type', opt: true);
  static AuthStatus? _$status(UserModel v) => v.status;
  static const Field<UserModel, AuthStatus> _f$status =
      Field('status', _$status, opt: true);
  static DateTime? _$createdAt(UserModel v) => v.createdAt;
  static const Field<UserModel, DateTime> _f$createdAt =
      Field('createdAt', _$createdAt, key: 'created_at', opt: true);
  static DateTime? _$lastLoginAt(UserModel v) => v.lastLoginAt;
  static const Field<UserModel, DateTime> _f$lastLoginAt =
      Field('lastLoginAt', _$lastLoginAt, key: 'last_login_at', opt: true);
  static DateTime? _$lastLogoutAt(UserModel v) => v.lastLogoutAt;
  static const Field<UserModel, DateTime> _f$lastLogoutAt =
      Field('lastLogoutAt', _$lastLogoutAt, key: 'last_logout_at', opt: true);
  static DateTime? _$updatedAt(UserModel v) => v.updatedAt;
  static const Field<UserModel, DateTime> _f$updatedAt =
      Field('updatedAt', _$updatedAt, key: 'updated_at', opt: true);

  @override
  final MappableFields<UserModel> fields = const {
    #id: _f$id,
    #accessToken: _f$accessToken,
    #isAuthorized: _f$isAuthorized,
    #idToken: _f$idToken,
    #email: _f$email,
    #displayName: _f$displayName,
    #code: _f$code,
    #photoUrl: _f$photoUrl,
    #phoneNumber: _f$phoneNumber,
    #refreshToken: _f$refreshToken,
    #authType: _f$authType,
    #status: _f$status,
    #createdAt: _f$createdAt,
    #lastLoginAt: _f$lastLoginAt,
    #lastLogoutAt: _f$lastLogoutAt,
    #updatedAt: _f$updatedAt,
  };
  @override
  final bool ignoreNull = true;

  static UserModel _instantiate(DecodingData data) {
    return UserModel(
        id: data.dec(_f$id),
        accessToken: data.dec(_f$accessToken),
        isAuthorized: data.dec(_f$isAuthorized),
        idToken: data.dec(_f$idToken),
        email: data.dec(_f$email),
        displayName: data.dec(_f$displayName),
        code: data.dec(_f$code),
        photoUrl: data.dec(_f$photoUrl),
        phoneNumber: data.dec(_f$phoneNumber),
        refreshToken: data.dec(_f$refreshToken),
        authType: data.dec(_f$authType),
        status: data.dec(_f$status),
        createdAt: data.dec(_f$createdAt),
        lastLoginAt: data.dec(_f$lastLoginAt),
        lastLogoutAt: data.dec(_f$lastLogoutAt),
        updatedAt: data.dec(_f$updatedAt));
  }

  @override
  final Function instantiate = _instantiate;

  static UserModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserModel>(map);
  }

  static UserModel fromJson(String json) {
    return ensureInitialized().decodeJson<UserModel>(json);
  }
}

mixin UserModelMappable {
  String toJson() {
    return UserModelMapper.ensureInitialized()
        .encodeJson<UserModel>(this as UserModel);
  }

  Map<String, dynamic> toMap() {
    return UserModelMapper.ensureInitialized()
        .encodeMap<UserModel>(this as UserModel);
  }

  UserModelCopyWith<UserModel, UserModel, UserModel> get copyWith =>
      _UserModelCopyWithImpl(this as UserModel, $identity, $identity);
  @override
  String toString() {
    return UserModelMapper.ensureInitialized()
        .stringifyValue(this as UserModel);
  }

  @override
  bool operator ==(Object other) {
    return UserModelMapper.ensureInitialized()
        .equalsValue(this as UserModel, other);
  }

  @override
  int get hashCode {
    return UserModelMapper.ensureInitialized().hashValue(this as UserModel);
  }
}

extension UserModelValueCopy<$R, $Out> on ObjectCopyWith<$R, UserModel, $Out> {
  UserModelCopyWith<$R, UserModel, $Out> get $asUserModel =>
      $base.as((v, t, t2) => _UserModelCopyWithImpl(v, t, t2));
}

abstract class UserModelCopyWith<$R, $In extends UserModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? id,
      String? accessToken,
      bool? isAuthorized,
      String? idToken,
      String? email,
      String? displayName,
      String? code,
      String? photoUrl,
      String? phoneNumber,
      String? refreshToken,
      AuthType? authType,
      AuthStatus? status,
      DateTime? createdAt,
      DateTime? lastLoginAt,
      DateTime? lastLogoutAt,
      DateTime? updatedAt});
  UserModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _UserModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserModel, $Out>
    implements UserModelCopyWith<$R, UserModel, $Out> {
  _UserModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserModel> $mapper =
      UserModelMapper.ensureInitialized();
  @override
  $R call(
          {String? id,
          Object? accessToken = $none,
          bool? isAuthorized,
          Object? idToken = $none,
          Object? email = $none,
          Object? displayName = $none,
          Object? code = $none,
          Object? photoUrl = $none,
          Object? phoneNumber = $none,
          Object? refreshToken = $none,
          Object? authType = $none,
          Object? status = $none,
          Object? createdAt = $none,
          Object? lastLoginAt = $none,
          Object? lastLogoutAt = $none,
          Object? updatedAt = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (accessToken != $none) #accessToken: accessToken,
        if (isAuthorized != null) #isAuthorized: isAuthorized,
        if (idToken != $none) #idToken: idToken,
        if (email != $none) #email: email,
        if (displayName != $none) #displayName: displayName,
        if (code != $none) #code: code,
        if (photoUrl != $none) #photoUrl: photoUrl,
        if (phoneNumber != $none) #phoneNumber: phoneNumber,
        if (refreshToken != $none) #refreshToken: refreshToken,
        if (authType != $none) #authType: authType,
        if (status != $none) #status: status,
        if (createdAt != $none) #createdAt: createdAt,
        if (lastLoginAt != $none) #lastLoginAt: lastLoginAt,
        if (lastLogoutAt != $none) #lastLogoutAt: lastLogoutAt,
        if (updatedAt != $none) #updatedAt: updatedAt
      }));
  @override
  UserModel $make(CopyWithData data) => UserModel(
      id: data.get(#id, or: $value.id),
      accessToken: data.get(#accessToken, or: $value.accessToken),
      isAuthorized: data.get(#isAuthorized, or: $value.isAuthorized),
      idToken: data.get(#idToken, or: $value.idToken),
      email: data.get(#email, or: $value.email),
      displayName: data.get(#displayName, or: $value.displayName),
      code: data.get(#code, or: $value.code),
      photoUrl: data.get(#photoUrl, or: $value.photoUrl),
      phoneNumber: data.get(#phoneNumber, or: $value.phoneNumber),
      refreshToken: data.get(#refreshToken, or: $value.refreshToken),
      authType: data.get(#authType, or: $value.authType),
      status: data.get(#status, or: $value.status),
      createdAt: data.get(#createdAt, or: $value.createdAt),
      lastLoginAt: data.get(#lastLoginAt, or: $value.lastLoginAt),
      lastLogoutAt: data.get(#lastLogoutAt, or: $value.lastLogoutAt),
      updatedAt: data.get(#updatedAt, or: $value.updatedAt));

  @override
  UserModelCopyWith<$R2, UserModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserModelCopyWithImpl($value, $cast, t);
}
