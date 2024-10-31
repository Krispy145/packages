// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of '_source.dart';

class UserSearchQueryModelMapper extends ClassMapperBase<UserSearchQueryModel> {
  UserSearchQueryModelMapper._();

  static UserSearchQueryModelMapper? _instance;
  static UserSearchQueryModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserSearchQueryModelMapper._());
      BasicSearchQueryModelMapper.ensureInitialized();
      AuthTypeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserSearchQueryModel';

  static String _$searchTerm(UserSearchQueryModel v) => v.searchTerm;
  static const Field<UserSearchQueryModel, String> _f$searchTerm =
      Field('searchTerm', _$searchTerm, key: 'search_term', opt: true, def: "");
  static AuthType _$authType(UserSearchQueryModel v) => v.authType;
  static const Field<UserSearchQueryModel, AuthType> _f$authType = Field(
      'authType', _$authType,
      key: 'auth_type', opt: true, def: AuthType.anonymous);
  static bool _$mustInclude(UserSearchQueryModel v) => v.mustInclude;
  static const Field<UserSearchQueryModel, bool> _f$mustInclude = Field(
      'mustInclude', _$mustInclude,
      key: 'must_include', opt: true, def: true);
  static bool _$mustExclude(UserSearchQueryModel v) => v.mustExclude;
  static const Field<UserSearchQueryModel, bool> _f$mustExclude = Field(
      'mustExclude', _$mustExclude,
      key: 'must_exclude', opt: true, def: false);
  static bool? _$isAuthorized(UserSearchQueryModel v) => v.isAuthorized;
  static const Field<UserSearchQueryModel, bool> _f$isAuthorized =
      Field('isAuthorized', _$isAuthorized, key: 'is_authorized', opt: true);

  @override
  final MappableFields<UserSearchQueryModel> fields = const {
    #searchTerm: _f$searchTerm,
    #authType: _f$authType,
    #mustInclude: _f$mustInclude,
    #mustExclude: _f$mustExclude,
    #isAuthorized: _f$isAuthorized,
  };

  static UserSearchQueryModel _instantiate(DecodingData data) {
    return UserSearchQueryModel(
        searchTerm: data.dec(_f$searchTerm),
        authType: data.dec(_f$authType),
        mustInclude: data.dec(_f$mustInclude),
        mustExclude: data.dec(_f$mustExclude),
        isAuthorized: data.dec(_f$isAuthorized));
  }

  @override
  final Function instantiate = _instantiate;

  static UserSearchQueryModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserSearchQueryModel>(map);
  }

  static UserSearchQueryModel fromJson(String json) {
    return ensureInitialized().decodeJson<UserSearchQueryModel>(json);
  }
}

mixin UserSearchQueryModelMappable {
  String toJson() {
    return UserSearchQueryModelMapper.ensureInitialized()
        .encodeJson<UserSearchQueryModel>(this as UserSearchQueryModel);
  }

  Map<String, dynamic> toMap() {
    return UserSearchQueryModelMapper.ensureInitialized()
        .encodeMap<UserSearchQueryModel>(this as UserSearchQueryModel);
  }

  UserSearchQueryModelCopyWith<UserSearchQueryModel, UserSearchQueryModel,
          UserSearchQueryModel>
      get copyWith => _UserSearchQueryModelCopyWithImpl(
          this as UserSearchQueryModel, $identity, $identity);
  @override
  String toString() {
    return UserSearchQueryModelMapper.ensureInitialized()
        .stringifyValue(this as UserSearchQueryModel);
  }

  @override
  bool operator ==(Object other) {
    return UserSearchQueryModelMapper.ensureInitialized()
        .equalsValue(this as UserSearchQueryModel, other);
  }

  @override
  int get hashCode {
    return UserSearchQueryModelMapper.ensureInitialized()
        .hashValue(this as UserSearchQueryModel);
  }
}

extension UserSearchQueryModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserSearchQueryModel, $Out> {
  UserSearchQueryModelCopyWith<$R, UserSearchQueryModel, $Out>
      get $asUserSearchQueryModel =>
          $base.as((v, t, t2) => _UserSearchQueryModelCopyWithImpl(v, t, t2));
}

abstract class UserSearchQueryModelCopyWith<
    $R,
    $In extends UserSearchQueryModel,
    $Out> implements BasicSearchQueryModelCopyWith<$R, $In, $Out> {
  @override
  $R call(
      {String? searchTerm,
      AuthType? authType,
      bool? mustInclude,
      bool? mustExclude,
      bool? isAuthorized});
  UserSearchQueryModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _UserSearchQueryModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserSearchQueryModel, $Out>
    implements UserSearchQueryModelCopyWith<$R, UserSearchQueryModel, $Out> {
  _UserSearchQueryModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserSearchQueryModel> $mapper =
      UserSearchQueryModelMapper.ensureInitialized();
  @override
  $R call(
          {String? searchTerm,
          AuthType? authType,
          bool? mustInclude,
          bool? mustExclude,
          Object? isAuthorized = $none}) =>
      $apply(FieldCopyWithData({
        if (searchTerm != null) #searchTerm: searchTerm,
        if (authType != null) #authType: authType,
        if (mustInclude != null) #mustInclude: mustInclude,
        if (mustExclude != null) #mustExclude: mustExclude,
        if (isAuthorized != $none) #isAuthorized: isAuthorized
      }));
  @override
  UserSearchQueryModel $make(CopyWithData data) => UserSearchQueryModel(
      searchTerm: data.get(#searchTerm, or: $value.searchTerm),
      authType: data.get(#authType, or: $value.authType),
      mustInclude: data.get(#mustInclude, or: $value.mustInclude),
      mustExclude: data.get(#mustExclude, or: $value.mustExclude),
      isAuthorized: data.get(#isAuthorized, or: $value.isAuthorized));

  @override
  UserSearchQueryModelCopyWith<$R2, UserSearchQueryModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _UserSearchQueryModelCopyWithImpl($value, $cast, t);
}
