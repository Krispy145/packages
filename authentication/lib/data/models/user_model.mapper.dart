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
      AuthParamsMapper.ensureInitialized();
      AuthTypeMapper.ensureInitialized();
      AuthStatusMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserModel';

  static String _$id(UserModel v) => v.id;
  static const Field<UserModel, String> _f$id = Field('id', _$id);
  static AuthType _$authType(UserModel v) => v.authType;
  static const Field<UserModel, AuthType> _f$authType =
      Field('authType', _$authType, key: 'auth_type');
  static AuthStatus _$status(UserModel v) => v.status;
  static const Field<UserModel, AuthStatus> _f$status =
      Field('status', _$status);
  static String? _$email(UserModel v) => v.email;
  static const Field<UserModel, String> _f$email =
      Field('email', _$email, opt: true);
  static String? _$phoneNumber(UserModel v) => v.phoneNumber;
  static const Field<UserModel, String> _f$phoneNumber =
      Field('phoneNumber', _$phoneNumber, key: 'phone_number', opt: true);
  static String? _$displayName(UserModel v) => v.displayName;
  static const Field<UserModel, String> _f$displayName =
      Field('displayName', _$displayName, key: 'display_name', opt: true);
  static String? _$photoUrl(UserModel v) => v.photoUrl;
  static const Field<UserModel, String> _f$photoUrl =
      Field('photoUrl', _$photoUrl, key: 'photo_url', opt: true);
  static String? _$accessToken(UserModel v) => v.accessToken;
  static const Field<UserModel, String> _f$accessToken =
      Field('accessToken', _$accessToken, key: 'access_token', opt: true);
  static String? _$code(UserModel v) => v.code;
  static const Field<UserModel, String> _f$code =
      Field('code', _$code, opt: true);
  static String? _$idToken(UserModel v) => v.idToken;
  static const Field<UserModel, String> _f$idToken =
      Field('idToken', _$idToken, key: 'id_token', opt: true);
  static double? _$expiresIn(UserModel v) => v.expiresIn;
  static const Field<UserModel, double> _f$expiresIn =
      Field('expiresIn', _$expiresIn, key: 'expires_in', opt: true);
  static String? _$tokenType(UserModel v) => v.tokenType;
  static const Field<UserModel, String> _f$tokenType =
      Field('tokenType', _$tokenType, key: 'token_type', opt: true);
  static bool? _$isAuthorized(UserModel v) => v.isAuthorized;
  static const Field<UserModel, bool> _f$isAuthorized = Field(
      'isAuthorized', _$isAuthorized,
      key: 'is_authorized', opt: true, def: false);
  static String? _$nonce(UserModel v) => v.nonce;
  static const Field<UserModel, String> _f$nonce =
      Field('nonce', _$nonce, opt: true);
  static String? _$refreshToken(UserModel v) => v.refreshToken;
  static const Field<UserModel, String> _f$refreshToken =
      Field('refreshToken', _$refreshToken, key: 'refresh_token', opt: true);
  static DateTime? _$createdAtTimestamp(UserModel v) => v.createdAtTimestamp;
  static const Field<UserModel, DateTime> _f$createdAtTimestamp = Field(
      'createdAtTimestamp', _$createdAtTimestamp,
      key: 'created_at_timestamp', opt: true);
  static DateTime? _$updatedAtTimestamp(UserModel v) => v.updatedAtTimestamp;
  static const Field<UserModel, DateTime> _f$updatedAtTimestamp = Field(
      'updatedAtTimestamp', _$updatedAtTimestamp,
      key: 'updated_at_timestamp', opt: true);
  static String? _$password(UserModel v) => v.password;
  static const Field<UserModel, String> _f$password =
      Field('password', _$password, opt: true);
  static DateTime? _$lastLoginTimestamp(UserModel v) => v.lastLoginTimestamp;
  static const Field<UserModel, DateTime> _f$lastLoginTimestamp = Field(
      'lastLoginTimestamp', _$lastLoginTimestamp,
      key: 'last_login_timestamp', opt: true);
  static DateTime? _$lastLogoutTimestamp(UserModel v) => v.lastLogoutTimestamp;
  static const Field<UserModel, DateTime> _f$lastLogoutTimestamp = Field(
      'lastLogoutTimestamp', _$lastLogoutTimestamp,
      key: 'last_logout_timestamp', opt: true);
  static List<String>? _$searchCases(UserModel v) => v.searchCases;
  static const Field<UserModel, List<String>> _f$searchCases =
      Field('searchCases', _$searchCases, key: 'search_cases', opt: true);

  @override
  final MappableFields<UserModel> fields = const {
    #id: _f$id,
    #authType: _f$authType,
    #status: _f$status,
    #email: _f$email,
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
    #createdAtTimestamp: _f$createdAtTimestamp,
    #updatedAtTimestamp: _f$updatedAtTimestamp,
    #password: _f$password,
    #lastLoginTimestamp: _f$lastLoginTimestamp,
    #lastLogoutTimestamp: _f$lastLogoutTimestamp,
    #searchCases: _f$searchCases,
  };
  @override
  final bool ignoreNull = true;

  static UserModel _instantiate(DecodingData data) {
    return UserModel(
        id: data.dec(_f$id),
        authType: data.dec(_f$authType),
        status: data.dec(_f$status),
        email: data.dec(_f$email),
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
        createdAtTimestamp: data.dec(_f$createdAtTimestamp),
        updatedAtTimestamp: data.dec(_f$updatedAtTimestamp),
        password: data.dec(_f$password),
        lastLoginTimestamp: data.dec(_f$lastLoginTimestamp),
        lastLogoutTimestamp: data.dec(_f$lastLogoutTimestamp),
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
    implements AuthParamsCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get searchCases;
  @override
  $R call(
      {String? id,
      AuthType? authType,
      AuthStatus? status,
      String? email,
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
      DateTime? createdAtTimestamp,
      DateTime? updatedAtTimestamp,
      String? password,
      DateTime? lastLoginTimestamp,
      DateTime? lastLogoutTimestamp,
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
          AuthType? authType,
          AuthStatus? status,
          Object? email = $none,
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
          Object? createdAtTimestamp = $none,
          Object? updatedAtTimestamp = $none,
          Object? password = $none,
          Object? lastLoginTimestamp = $none,
          Object? lastLogoutTimestamp = $none,
          Object? searchCases = $none}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (authType != null) #authType: authType,
        if (status != null) #status: status,
        if (email != $none) #email: email,
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
        if (createdAtTimestamp != $none)
          #createdAtTimestamp: createdAtTimestamp,
        if (updatedAtTimestamp != $none)
          #updatedAtTimestamp: updatedAtTimestamp,
        if (password != $none) #password: password,
        if (lastLoginTimestamp != $none)
          #lastLoginTimestamp: lastLoginTimestamp,
        if (lastLogoutTimestamp != $none)
          #lastLogoutTimestamp: lastLogoutTimestamp,
        if (searchCases != $none) #searchCases: searchCases
      }));
  @override
  UserModel $make(CopyWithData data) => UserModel(
      id: data.get(#id, or: $value.id),
      authType: data.get(#authType, or: $value.authType),
      status: data.get(#status, or: $value.status),
      email: data.get(#email, or: $value.email),
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
      createdAtTimestamp:
          data.get(#createdAtTimestamp, or: $value.createdAtTimestamp),
      updatedAtTimestamp:
          data.get(#updatedAtTimestamp, or: $value.updatedAtTimestamp),
      password: data.get(#password, or: $value.password),
      lastLoginTimestamp:
          data.get(#lastLoginTimestamp, or: $value.lastLoginTimestamp),
      lastLogoutTimestamp:
          data.get(#lastLogoutTimestamp, or: $value.lastLogoutTimestamp),
      searchCases: data.get(#searchCases, or: $value.searchCases));

  @override
  UserModelCopyWith<$R2, UserModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _UserModelCopyWithImpl($value, $cast, t);
}
