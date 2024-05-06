// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'user_model.dart';

class InstagramUserModelMapper extends ClassMapperBase<InstagramUserModel> {
  InstagramUserModelMapper._();

  static InstagramUserModelMapper? _instance;
  static InstagramUserModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = InstagramUserModelMapper._());
      InstagramAccessTokenModelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'InstagramUserModel';

  static String? _$id(InstagramUserModel v) => v.id;
  static const Field<InstagramUserModel, String> _f$id =
      Field('id', _$id, opt: true);
  static String? _$username(InstagramUserModel v) => v.username;
  static const Field<InstagramUserModel, String> _f$username =
      Field('username', _$username, opt: true);
  static String? _$accountType(InstagramUserModel v) => v.accountType;
  static const Field<InstagramUserModel, String> _f$accountType =
      Field('accountType', _$accountType, key: 'account_type', opt: true);
  static int? _$mediaCount(InstagramUserModel v) => v.mediaCount;
  static const Field<InstagramUserModel, int> _f$mediaCount =
      Field('mediaCount', _$mediaCount, key: 'media_count', opt: true);
  static InstagramAccessTokenModel? _$shortLivedToken(InstagramUserModel v) =>
      v.shortLivedToken;
  static const Field<InstagramUserModel, InstagramAccessTokenModel>
      _f$shortLivedToken = Field('shortLivedToken', _$shortLivedToken,
          key: 'short_lived_token', opt: true);
  static InstagramAccessTokenModel? _$longLivedToken(InstagramUserModel v) =>
      v.longLivedToken;
  static const Field<InstagramUserModel, InstagramAccessTokenModel>
      _f$longLivedToken = Field('longLivedToken', _$longLivedToken,
          key: 'long_lived_token', opt: true);

  @override
  final MappableFields<InstagramUserModel> fields = const {
    #id: _f$id,
    #username: _f$username,
    #accountType: _f$accountType,
    #mediaCount: _f$mediaCount,
    #shortLivedToken: _f$shortLivedToken,
    #longLivedToken: _f$longLivedToken,
  };

  static InstagramUserModel _instantiate(DecodingData data) {
    return InstagramUserModel(
        id: data.dec(_f$id),
        username: data.dec(_f$username),
        accountType: data.dec(_f$accountType),
        mediaCount: data.dec(_f$mediaCount),
        shortLivedToken: data.dec(_f$shortLivedToken),
        longLivedToken: data.dec(_f$longLivedToken));
  }

  @override
  final Function instantiate = _instantiate;

  static InstagramUserModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InstagramUserModel>(map);
  }

  static InstagramUserModel fromJson(String json) {
    return ensureInitialized().decodeJson<InstagramUserModel>(json);
  }
}

mixin InstagramUserModelMappable {
  String toJson() {
    return InstagramUserModelMapper.ensureInitialized()
        .encodeJson<InstagramUserModel>(this as InstagramUserModel);
  }

  Map<String, dynamic> toMap() {
    return InstagramUserModelMapper.ensureInitialized()
        .encodeMap<InstagramUserModel>(this as InstagramUserModel);
  }

  InstagramUserModelCopyWith<InstagramUserModel, InstagramUserModel,
          InstagramUserModel>
      get copyWith => _InstagramUserModelCopyWithImpl(
          this as InstagramUserModel, $identity, $identity);
  @override
  String toString() {
    return InstagramUserModelMapper.ensureInitialized()
        .stringifyValue(this as InstagramUserModel);
  }

  @override
  bool operator ==(Object other) {
    return InstagramUserModelMapper.ensureInitialized()
        .equalsValue(this as InstagramUserModel, other);
  }

  @override
  int get hashCode {
    return InstagramUserModelMapper.ensureInitialized()
        .hashValue(this as InstagramUserModel);
  }
}

extension InstagramUserModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InstagramUserModel, $Out> {
  InstagramUserModelCopyWith<$R, InstagramUserModel, $Out>
      get $asInstagramUserModel =>
          $base.as((v, t, t2) => _InstagramUserModelCopyWithImpl(v, t, t2));
}

abstract class InstagramUserModelCopyWith<$R, $In extends InstagramUserModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  InstagramAccessTokenModelCopyWith<$R, InstagramAccessTokenModel,
      InstagramAccessTokenModel>? get shortLivedToken;
  InstagramAccessTokenModelCopyWith<$R, InstagramAccessTokenModel,
      InstagramAccessTokenModel>? get longLivedToken;
  $R call(
      {String? id,
      String? username,
      String? accountType,
      int? mediaCount,
      InstagramAccessTokenModel? shortLivedToken,
      InstagramAccessTokenModel? longLivedToken});
  InstagramUserModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _InstagramUserModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InstagramUserModel, $Out>
    implements InstagramUserModelCopyWith<$R, InstagramUserModel, $Out> {
  _InstagramUserModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InstagramUserModel> $mapper =
      InstagramUserModelMapper.ensureInitialized();
  @override
  InstagramAccessTokenModelCopyWith<$R, InstagramAccessTokenModel,
          InstagramAccessTokenModel>?
      get shortLivedToken => $value.shortLivedToken?.copyWith
          .$chain((v) => call(shortLivedToken: v));
  @override
  InstagramAccessTokenModelCopyWith<$R, InstagramAccessTokenModel,
          InstagramAccessTokenModel>?
      get longLivedToken => $value.longLivedToken?.copyWith
          .$chain((v) => call(longLivedToken: v));
  @override
  $R call(
          {Object? id = $none,
          Object? username = $none,
          Object? accountType = $none,
          Object? mediaCount = $none,
          Object? shortLivedToken = $none,
          Object? longLivedToken = $none}) =>
      $apply(FieldCopyWithData({
        if (id != $none) #id: id,
        if (username != $none) #username: username,
        if (accountType != $none) #accountType: accountType,
        if (mediaCount != $none) #mediaCount: mediaCount,
        if (shortLivedToken != $none) #shortLivedToken: shortLivedToken,
        if (longLivedToken != $none) #longLivedToken: longLivedToken
      }));
  @override
  InstagramUserModel $make(CopyWithData data) => InstagramUserModel(
      id: data.get(#id, or: $value.id),
      username: data.get(#username, or: $value.username),
      accountType: data.get(#accountType, or: $value.accountType),
      mediaCount: data.get(#mediaCount, or: $value.mediaCount),
      shortLivedToken: data.get(#shortLivedToken, or: $value.shortLivedToken),
      longLivedToken: data.get(#longLivedToken, or: $value.longLivedToken));

  @override
  InstagramUserModelCopyWith<$R2, InstagramUserModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _InstagramUserModelCopyWithImpl($value, $cast, t);
}
