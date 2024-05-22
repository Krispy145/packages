// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'paginated.dart';

class HiveResponseModelMapper extends ClassMapperBase<HiveResponseModel> {
  HiveResponseModelMapper._();

  static HiveResponseModelMapper? _instance;
  static HiveResponseModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HiveResponseModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'HiveResponseModel';
  @override
  Function get typeFactory => <T>(f) => f<HiveResponseModel<T>>();

  static int? _$lastIndex(HiveResponseModel v) => v.lastIndex;
  static const Field<HiveResponseModel, int> _f$lastIndex =
      Field('lastIndex', _$lastIndex, opt: true);

  @override
  final MappableFields<HiveResponseModel> fields = const {
    #lastIndex: _f$lastIndex,
  };

  static HiveResponseModel<T> _instantiate<T>(DecodingData data) {
    return HiveResponseModel(lastIndex: data.dec(_f$lastIndex));
  }

  @override
  final Function instantiate = _instantiate;

  static HiveResponseModel<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HiveResponseModel<T>>(map);
  }

  static HiveResponseModel<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<HiveResponseModel<T>>(json);
  }
}

mixin HiveResponseModelMappable<T> {
  String toJson() {
    return HiveResponseModelMapper.ensureInitialized()
        .encodeJson<HiveResponseModel<T>>(this as HiveResponseModel<T>);
  }

  Map<String, dynamic> toMap() {
    return HiveResponseModelMapper.ensureInitialized()
        .encodeMap<HiveResponseModel<T>>(this as HiveResponseModel<T>);
  }

  HiveResponseModelCopyWith<HiveResponseModel<T>, HiveResponseModel<T>,
          HiveResponseModel<T>, T>
      get copyWith => _HiveResponseModelCopyWithImpl(
          this as HiveResponseModel<T>, $identity, $identity);
  @override
  String toString() {
    return HiveResponseModelMapper.ensureInitialized()
        .stringifyValue(this as HiveResponseModel<T>);
  }

  @override
  bool operator ==(Object other) {
    return HiveResponseModelMapper.ensureInitialized()
        .equalsValue(this as HiveResponseModel<T>, other);
  }

  @override
  int get hashCode {
    return HiveResponseModelMapper.ensureInitialized()
        .hashValue(this as HiveResponseModel<T>);
  }
}

extension HiveResponseModelValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, HiveResponseModel<T>, $Out> {
  HiveResponseModelCopyWith<$R, HiveResponseModel<T>, $Out, T>
      get $asHiveResponseModel =>
          $base.as((v, t, t2) => _HiveResponseModelCopyWithImpl(v, t, t2));
}

abstract class HiveResponseModelCopyWith<$R, $In extends HiveResponseModel<T>,
    $Out, T> implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? lastIndex});
  HiveResponseModelCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HiveResponseModelCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, HiveResponseModel<T>, $Out>
    implements HiveResponseModelCopyWith<$R, HiveResponseModel<T>, $Out, T> {
  _HiveResponseModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HiveResponseModel> $mapper =
      HiveResponseModelMapper.ensureInitialized();
  @override
  $R call({Object? lastIndex = $none}) => $apply(
      FieldCopyWithData({if (lastIndex != $none) #lastIndex: lastIndex}));
  @override
  HiveResponseModel<T> $make(CopyWithData data) =>
      HiveResponseModel(lastIndex: data.get(#lastIndex, or: $value.lastIndex));

  @override
  HiveResponseModelCopyWith<$R2, HiveResponseModel<T>, $Out2, T>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _HiveResponseModelCopyWithImpl($value, $cast, t);
}
