// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'size_model.dart';

class SizeModelMapper extends ClassMapperBase<SizeModel> {
  SizeModelMapper._();

  static SizeModelMapper? _instance;
  static SizeModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SizeModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'SizeModel';

  static double? _$width_double(SizeModel v) => v.width_double;
  static const Field<SizeModel, double> _f$width_double =
      Field('width_double', _$width_double, opt: true);
  static double? _$height_double(SizeModel v) => v.height_double;
  static const Field<SizeModel, double> _f$height_double =
      Field('height_double', _$height_double, opt: true);

  @override
  final MappableFields<SizeModel> fields = const {
    #width_double: _f$width_double,
    #height_double: _f$height_double,
  };

  static SizeModel _instantiate(DecodingData data) {
    return SizeModel(
        width_double: data.dec(_f$width_double),
        height_double: data.dec(_f$height_double));
  }

  @override
  final Function instantiate = _instantiate;

  static SizeModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<SizeModel>(map);
  }

  static SizeModel fromJson(String json) {
    return ensureInitialized().decodeJson<SizeModel>(json);
  }
}

mixin SizeModelMappable {
  String toJson() {
    return SizeModelMapper.ensureInitialized()
        .encodeJson<SizeModel>(this as SizeModel);
  }

  Map<String, dynamic> toMap() {
    return SizeModelMapper.ensureInitialized()
        .encodeMap<SizeModel>(this as SizeModel);
  }

  SizeModelCopyWith<SizeModel, SizeModel, SizeModel> get copyWith =>
      _SizeModelCopyWithImpl(this as SizeModel, $identity, $identity);
  @override
  String toString() {
    return SizeModelMapper.ensureInitialized()
        .stringifyValue(this as SizeModel);
  }

  @override
  bool operator ==(Object other) {
    return SizeModelMapper.ensureInitialized()
        .equalsValue(this as SizeModel, other);
  }

  @override
  int get hashCode {
    return SizeModelMapper.ensureInitialized().hashValue(this as SizeModel);
  }
}

extension SizeModelValueCopy<$R, $Out> on ObjectCopyWith<$R, SizeModel, $Out> {
  SizeModelCopyWith<$R, SizeModel, $Out> get $asSizeModel =>
      $base.as((v, t, t2) => _SizeModelCopyWithImpl(v, t, t2));
}

abstract class SizeModelCopyWith<$R, $In extends SizeModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? width_double, double? height_double});
  SizeModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SizeModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, SizeModel, $Out>
    implements SizeModelCopyWith<$R, SizeModel, $Out> {
  _SizeModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<SizeModel> $mapper =
      SizeModelMapper.ensureInitialized();
  @override
  $R call({Object? width_double = $none, Object? height_double = $none}) =>
      $apply(FieldCopyWithData({
        if (width_double != $none) #width_double: width_double,
        if (height_double != $none) #height_double: height_double
      }));
  @override
  SizeModel $make(CopyWithData data) => SizeModel(
      width_double: data.get(#width_double, or: $value.width_double),
      height_double: data.get(#height_double, or: $value.height_double));

  @override
  SizeModelCopyWith<$R2, SizeModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _SizeModelCopyWithImpl($value, $cast, t);
}
