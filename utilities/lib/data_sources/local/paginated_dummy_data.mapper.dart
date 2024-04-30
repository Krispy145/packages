// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'paginated_dummy_data.dart';

class DummyDataResponseModelMapper
    extends ClassMapperBase<DummyDataResponseModel> {
  DummyDataResponseModelMapper._();

  static DummyDataResponseModelMapper? _instance;
  static DummyDataResponseModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DummyDataResponseModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DummyDataResponseModel';
  @override
  Function get typeFactory => <T>(f) => f<DummyDataResponseModel<T>>();

  static int? _$lastIndex(DummyDataResponseModel v) => v.lastIndex;
  static const Field<DummyDataResponseModel, int> _f$lastIndex =
      Field('lastIndex', _$lastIndex, opt: true);

  @override
  final MappableFields<DummyDataResponseModel> fields = const {
    #lastIndex: _f$lastIndex,
  };

  static DummyDataResponseModel<T> _instantiate<T>(DecodingData data) {
    return DummyDataResponseModel(lastIndex: data.dec(_f$lastIndex));
  }

  @override
  final Function instantiate = _instantiate;

  static DummyDataResponseModel<T> fromMap<T>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DummyDataResponseModel<T>>(map);
  }

  static DummyDataResponseModel<T> fromJson<T>(String json) {
    return ensureInitialized().decodeJson<DummyDataResponseModel<T>>(json);
  }
}

mixin DummyDataResponseModelMappable<T> {
  String toJson() {
    return DummyDataResponseModelMapper.ensureInitialized()
        .encodeJson<DummyDataResponseModel<T>>(
            this as DummyDataResponseModel<T>);
  }

  Map<String, dynamic> toMap() {
    return DummyDataResponseModelMapper.ensureInitialized()
        .encodeMap<DummyDataResponseModel<T>>(
            this as DummyDataResponseModel<T>);
  }

  DummyDataResponseModelCopyWith<DummyDataResponseModel<T>,
          DummyDataResponseModel<T>, DummyDataResponseModel<T>, T>
      get copyWith => _DummyDataResponseModelCopyWithImpl(
          this as DummyDataResponseModel<T>, $identity, $identity);
  @override
  String toString() {
    return DummyDataResponseModelMapper.ensureInitialized()
        .stringifyValue(this as DummyDataResponseModel<T>);
  }

  @override
  bool operator ==(Object other) {
    return DummyDataResponseModelMapper.ensureInitialized()
        .equalsValue(this as DummyDataResponseModel<T>, other);
  }

  @override
  int get hashCode {
    return DummyDataResponseModelMapper.ensureInitialized()
        .hashValue(this as DummyDataResponseModel<T>);
  }
}

extension DummyDataResponseModelValueCopy<$R, $Out, T>
    on ObjectCopyWith<$R, DummyDataResponseModel<T>, $Out> {
  DummyDataResponseModelCopyWith<$R, DummyDataResponseModel<T>, $Out, T>
      get $asDummyDataResponseModel =>
          $base.as((v, t, t2) => _DummyDataResponseModelCopyWithImpl(v, t, t2));
}

abstract class DummyDataResponseModelCopyWith<
    $R,
    $In extends DummyDataResponseModel<T>,
    $Out,
    T> implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? lastIndex});
  DummyDataResponseModelCopyWith<$R2, $In, $Out2, T> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DummyDataResponseModelCopyWithImpl<$R, $Out, T>
    extends ClassCopyWithBase<$R, DummyDataResponseModel<T>, $Out>
    implements
        DummyDataResponseModelCopyWith<$R, DummyDataResponseModel<T>, $Out, T> {
  _DummyDataResponseModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DummyDataResponseModel> $mapper =
      DummyDataResponseModelMapper.ensureInitialized();
  @override
  $R call({Object? lastIndex = $none}) => $apply(
      FieldCopyWithData({if (lastIndex != $none) #lastIndex: lastIndex}));
  @override
  DummyDataResponseModel<T> $make(CopyWithData data) => DummyDataResponseModel(
      lastIndex: data.get(#lastIndex, or: $value.lastIndex));

  @override
  DummyDataResponseModelCopyWith<$R2, DummyDataResponseModel<T>, $Out2, T>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _DummyDataResponseModelCopyWithImpl($value, $cast, t);
}
