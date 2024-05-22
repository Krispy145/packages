// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'paginated.dart';

class AssetsResponseModelMapper extends ClassMapperBase<AssetsResponseModel> {
  AssetsResponseModelMapper._();

  static AssetsResponseModelMapper? _instance;
  static AssetsResponseModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AssetsResponseModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'AssetsResponseModel';
  @override
  Function get typeFactory => <T>(f) => f<AssetsResponseModel<T>>();

  static int? _$lastIndex(AssetsResponseModel v) => v.lastIndex;
  static const Field<AssetsResponseModel, int> _f$lastIndex =
      Field('lastIndex', _$lastIndex, opt: true);

  @override
  final MappableFields<AssetsResponseModel> fields = const {
    #lastIndex: _f$lastIndex,
  };

  static AssetsResponseModel<T> _instantiate<T>(DecodingData data) {
    return AssetsResponseModel(lastIndex: data.dec(_f$lastIndex));
  }

  @override
  final Function instantiate = _instantiate;

  static AssetsResponseModel<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AssetsResponseModel<T>>(map);
  }

  static AssetsResponseModel<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<AssetsResponseModel<T>>(json);
  }
}

mixin AssetsResponseModelMappable<T> {
  String toJson() {
    return AssetsResponseModelMapper.ensureInitialized()
        .encodeJson<AssetsResponseModel<T>>(this as AssetsResponseModel<T>);
  }

  Map<String, dynamic> toMap() {
    return AssetsResponseModelMapper.ensureInitialized()
        .encodeMap<AssetsResponseModel<T>>(this as AssetsResponseModel<T>);
  }

  AssetsResponseModelCopyWith<AssetsResponseModel<T>, AssetsResponseModel<T>,
          AssetsResponseModel<T>, T>
      get copyWith => _AssetsResponseModelCopyWithImpl(
          this as AssetsResponseModel<T>, $identity, $identity);
  @override
  String toString() {
    return AssetsResponseModelMapper.ensureInitialized()
        .stringifyValue(this as AssetsResponseModel<T>);
  }

  @override
  bool operator ==(Object other) {
    return AssetsResponseModelMapper.ensureInitialized()
        .equalsValue(this as AssetsResponseModel<T>, other);
  }

  @override
  int get hashCode {
    return AssetsResponseModelMapper.ensureInitialized()
        .hashValue(this as AssetsResponseModel<T>);
  }
}

extension AssetsResponseModelValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, AssetsResponseModel<T>, $Out> {
  AssetsResponseModelCopyWith<$R, AssetsResponseModel<T>, $Out, T>
      get $asAssetsResponseModel =>
          $base.as((v, t, t2) => _AssetsResponseModelCopyWithImpl(v, t, t2));
}

abstract class AssetsResponseModelCopyWith<
    $R,
    $In extends AssetsResponseModel<T>,
    $Out,
    T> implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? lastIndex});
  AssetsResponseModelCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AssetsResponseModelCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, AssetsResponseModel<T>, $Out>
    implements
        AssetsResponseModelCopyWith<$R, AssetsResponseModel<T>, $Out, T> {
  _AssetsResponseModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AssetsResponseModel> $mapper =
      AssetsResponseModelMapper.ensureInitialized();
  @override
  $R call({Object? lastIndex = $none}) => $apply(
      FieldCopyWithData({if (lastIndex != $none) #lastIndex: lastIndex}));
  @override
  AssetsResponseModel<T> $make(CopyWithData data) => AssetsResponseModel(
      lastIndex: data.get(#lastIndex, or: $value.lastIndex));

  @override
  AssetsResponseModelCopyWith<$R2, AssetsResponseModel<T>, $Out2, T>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _AssetsResponseModelCopyWithImpl($value, $cast, t);
}
