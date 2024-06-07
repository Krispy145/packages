// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'paginated.dart';

class SecureResponseModelMapper extends ClassMapperBase<SecureResponseModel> {
  SecureResponseModelMapper._();

  static SecureResponseModelMapper? _instance;
  static SecureResponseModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SecureResponseModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SecureResponseModel';
  @override
  Function get typeFactory => <T>(f) => f<SecureResponseModel<T>>();

  static int? _$lastIndex(SecureResponseModel v) => v.lastIndex;
  static const Field<SecureResponseModel, int> _f$lastIndex =
      Field('lastIndex', _$lastIndex, opt: true);

  @override
  final MappableFields<SecureResponseModel> fields = const {
    #lastIndex: _f$lastIndex,
  };

  static SecureResponseModel<T> _instantiate<T>(DecodingData data) {
    return SecureResponseModel(lastIndex: data.dec(_f$lastIndex));
  }

  @override
  final Function instantiate = _instantiate;

  static SecureResponseModel<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SecureResponseModel<T>>(map);
  }

  static SecureResponseModel<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<SecureResponseModel<T>>(json);
  }
}

mixin SecureResponseModelMappable<T> {
  String toJson() {
    return SecureResponseModelMapper.ensureInitialized()
        .encodeJson<SecureResponseModel<T>>(this as SecureResponseModel<T>);
  }

  Map<String, dynamic> toMap() {
    return SecureResponseModelMapper.ensureInitialized()
        .encodeMap<SecureResponseModel<T>>(this as SecureResponseModel<T>);
  }

  SecureResponseModelCopyWith<SecureResponseModel<T>, SecureResponseModel<T>,
          SecureResponseModel<T>, T>
      get copyWith => _SecureResponseModelCopyWithImpl(
          this as SecureResponseModel<T>, $identity, $identity);
  @override
  String toString() {
    return SecureResponseModelMapper.ensureInitialized()
        .stringifyValue(this as SecureResponseModel<T>);
  }

  @override
  bool operator ==(Object other) {
    return SecureResponseModelMapper.ensureInitialized()
        .equalsValue(this as SecureResponseModel<T>, other);
  }

  @override
  int get hashCode {
    return SecureResponseModelMapper.ensureInitialized()
        .hashValue(this as SecureResponseModel<T>);
  }
}

extension SecureResponseModelValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, SecureResponseModel<T>, $Out> {
  SecureResponseModelCopyWith<$R, SecureResponseModel<T>, $Out, T>
      get $asSecureResponseModel =>
          $base.as((v, t, t2) => _SecureResponseModelCopyWithImpl(v, t, t2));
}

abstract class SecureResponseModelCopyWith<
    $R,
    $In extends SecureResponseModel<T>,
    $Out,
    T> implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? lastIndex});
  SecureResponseModelCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _SecureResponseModelCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, SecureResponseModel<T>, $Out>
    implements
        SecureResponseModelCopyWith<$R, SecureResponseModel<T>, $Out, T> {
  _SecureResponseModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SecureResponseModel> $mapper =
      SecureResponseModelMapper.ensureInitialized();
  @override
  $R call({Object? lastIndex = $none}) => $apply(
      FieldCopyWithData({if (lastIndex != $none) #lastIndex: lastIndex}));
  @override
  SecureResponseModel<T> $make(CopyWithData data) => SecureResponseModel(
      lastIndex: data.get(#lastIndex, or: $value.lastIndex));

  @override
  SecureResponseModelCopyWith<$R2, SecureResponseModel<T>, $Out2, T>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _SecureResponseModelCopyWithImpl($value, $cast, t);
}
