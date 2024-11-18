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
  static DateTime? _$createdAtTimestamp(UserModel v) => v.createdAtTimestamp;
  static const Field<UserModel, DateTime> _f$createdAtTimestamp = Field(
      'createdAtTimestamp', _$createdAtTimestamp,
      key: 'created_at_timestamp', opt: true);
  static DateTime? _$lastLoginTimestamp(UserModel v) => v.lastLoginTimestamp;
  static const Field<UserModel, DateTime> _f$lastLoginTimestamp = Field(
      'lastLoginTimestamp', _$lastLoginTimestamp,
      key: 'last_login_timestamp', opt: true);
  static DateTime? _$lastLogoutTimestamp(UserModel v) => v.lastLogoutTimestamp;
  static const Field<UserModel, DateTime> _f$lastLogoutTimestamp = Field(
      'lastLogoutTimestamp', _$lastLogoutTimestamp,
      key: 'last_logout_timestamp', opt: true);
  static DateTime? _$updatedAtTimestamp(UserModel v) => v.updatedAtTimestamp;
  static const Field<UserModel, DateTime> _f$updatedAtTimestamp = Field(
      'updatedAtTimestamp', _$updatedAtTimestamp,
      key: 'updated_at_timestamp', opt: true);
  static List<String>? _$searchCases(UserModel v) => v.searchCases;
  static const Field<UserModel, List<String>> _f$searchCases =
      Field('searchCases', _$searchCases, key: 'search_cases', opt: true);

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
    #createdAtTimestamp: _f$createdAtTimestamp,
    #lastLoginTimestamp: _f$lastLoginTimestamp,
    #lastLogoutTimestamp: _f$lastLogoutTimestamp,
    #updatedAtTimestamp: _f$updatedAtTimestamp,
    #searchCases: _f$searchCases,
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
        createdAtTimestamp: data.dec(_f$createdAtTimestamp),
        lastLoginTimestamp: data.dec(_f$lastLoginTimestamp),
        lastLogoutTimestamp: data.dec(_f$lastLogoutTimestamp),
        updatedAtTimestamp: data.dec(_f$updatedAtTimestamp),
        searchCases: data.dec(_f$searchCases));
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
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get searchCases;
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
      DateTime? createdAtTimestamp,
      DateTime? lastLoginTimestamp,
      DateTime? lastLogoutTimestamp,
      DateTime? updatedAtTimestamp,
      List<String>? searchCases});
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
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get searchCases => $value.searchCases != null
          ? ListCopyWith(
              $value.searchCases!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(searchCases: v))
          : null;
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
          Object? createdAtTimestamp = $none,
          Object? lastLoginTimestamp = $none,
          Object? lastLogoutTimestamp = $none,
          Object? updatedAtTimestamp = $none,
          Object? searchCases = $none}) =>
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
        if (createdAtTimestamp != $none)
          #createdAtTimestamp: createdAtTimestamp,
        if (lastLoginTimestamp != $none)
          #lastLoginTimestamp: lastLoginTimestamp,
        if (lastLogoutTimestamp != $none)
          #lastLogoutTimestamp: lastLogoutTimestamp,
        if (updatedAtTimestamp != $none)
          #updatedAtTimestamp: updatedAtTimestamp,
        if (searchCases != $none) #searchCases: searchCases
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
      createdAtTimestamp:
          data.get(#createdAtTimestamp, or: $value.createdAtTimestamp),
      lastLoginTimestamp:
          data.get(#lastLoginTimestamp, or: $value.lastLoginTimestamp),
      lastLogoutTimestamp:
          data.get(#lastLogoutTimestamp, or: $value.lastLogoutTimestamp),
      updatedAtTimestamp:
          data.get(#updatedAtTimestamp, or: $value.updatedAtTimestamp),
      searchCases: data.get(#searchCases, or: $value.searchCases));

  @override
  UserModelCopyWith<$R2, UserModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserModelCopyWithImpl($value, $cast, t);
}
