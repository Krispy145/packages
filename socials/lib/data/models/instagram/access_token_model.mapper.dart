// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'access_token_model.dart';

class InstagramAccessTokenModelMapper
    extends ClassMapperBase<InstagramAccessTokenModel> {
  InstagramAccessTokenModelMapper._();

  static InstagramAccessTokenModelMapper? _instance;
  static InstagramAccessTokenModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = InstagramAccessTokenModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'InstagramAccessTokenModel';

  static String _$accessToken(InstagramAccessTokenModel v) => v.accessToken;
  static const Field<InstagramAccessTokenModel, String> _f$accessToken =
      Field('accessToken', _$accessToken, key: 'access_token');
  static String? _$tokenType(InstagramAccessTokenModel v) => v.tokenType;
  static const Field<InstagramAccessTokenModel, String> _f$tokenType =
      Field('tokenType', _$tokenType, key: 'token_type', opt: true);
  static int? _$expiresIn(InstagramAccessTokenModel v) => v.expiresIn;
  static const Field<InstagramAccessTokenModel, int> _f$expiresIn =
      Field('expiresIn', _$expiresIn, key: 'expires_in', opt: true);
  static int? _$userId(InstagramAccessTokenModel v) => v.userId;
  static const Field<InstagramAccessTokenModel, int> _f$userId =
      Field('userId', _$userId, key: 'user_id', opt: true);

  @override
  final MappableFields<InstagramAccessTokenModel> fields = const {
    #accessToken: _f$accessToken,
    #tokenType: _f$tokenType,
    #expiresIn: _f$expiresIn,
    #userId: _f$userId,
  };

  static InstagramAccessTokenModel _instantiate(DecodingData data) {
    return InstagramAccessTokenModel(
        accessToken: data.dec(_f$accessToken),
        tokenType: data.dec(_f$tokenType),
        expiresIn: data.dec(_f$expiresIn),
        userId: data.dec(_f$userId));
  }

  @override
  final Function instantiate = _instantiate;

  static InstagramAccessTokenModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<InstagramAccessTokenModel>(map);
  }

  static InstagramAccessTokenModel fromJson(String json) {
    return ensureInitialized().decodeJson<InstagramAccessTokenModel>(json);
  }
}

mixin InstagramAccessTokenModelMappable {
  String toJson() {
    return InstagramAccessTokenModelMapper.ensureInitialized()
        .encodeJson<InstagramAccessTokenModel>(
            this as InstagramAccessTokenModel);
  }

  Map<String, dynamic> toMap() {
    return InstagramAccessTokenModelMapper.ensureInitialized()
        .encodeMap<InstagramAccessTokenModel>(
            this as InstagramAccessTokenModel);
  }

  InstagramAccessTokenModelCopyWith<InstagramAccessTokenModel,
          InstagramAccessTokenModel, InstagramAccessTokenModel>
      get copyWith => _InstagramAccessTokenModelCopyWithImpl(
          this as InstagramAccessTokenModel, $identity, $identity);
  @override
  String toString() {
    return InstagramAccessTokenModelMapper.ensureInitialized()
        .stringifyValue(this as InstagramAccessTokenModel);
  }

  @override
  bool operator ==(Object other) {
    return InstagramAccessTokenModelMapper.ensureInitialized()
        .equalsValue(this as InstagramAccessTokenModel, other);
  }

  @override
  int get hashCode {
    return InstagramAccessTokenModelMapper.ensureInitialized()
        .hashValue(this as InstagramAccessTokenModel);
  }
}

extension InstagramAccessTokenModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, InstagramAccessTokenModel, $Out> {
  InstagramAccessTokenModelCopyWith<$R, InstagramAccessTokenModel, $Out>
      get $asInstagramAccessTokenModel => $base
          .as((v, t, t2) => _InstagramAccessTokenModelCopyWithImpl(v, t, t2));
}

abstract class InstagramAccessTokenModelCopyWith<
    $R,
    $In extends InstagramAccessTokenModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {String? accessToken, String? tokenType, int? expiresIn, int? userId});
  InstagramAccessTokenModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _InstagramAccessTokenModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, InstagramAccessTokenModel, $Out>
    implements
        InstagramAccessTokenModelCopyWith<$R, InstagramAccessTokenModel, $Out> {
  _InstagramAccessTokenModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<InstagramAccessTokenModel> $mapper =
      InstagramAccessTokenModelMapper.ensureInitialized();
  @override
  $R call(
          {String? accessToken,
          Object? tokenType = $none,
          Object? expiresIn = $none,
          Object? userId = $none}) =>
      $apply(FieldCopyWithData({
        if (accessToken != null) #accessToken: accessToken,
        if (tokenType != $none) #tokenType: tokenType,
        if (expiresIn != $none) #expiresIn: expiresIn,
        if (userId != $none) #userId: userId
      }));
  @override
  InstagramAccessTokenModel $make(CopyWithData data) =>
      InstagramAccessTokenModel(
          accessToken: data.get(#accessToken, or: $value.accessToken),
          tokenType: data.get(#tokenType, or: $value.tokenType),
          expiresIn: data.get(#expiresIn, or: $value.expiresIn),
          userId: data.get(#userId, or: $value.userId));

  @override
  InstagramAccessTokenModelCopyWith<$R2, InstagramAccessTokenModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _InstagramAccessTokenModelCopyWithImpl($value, $cast, t);
}
