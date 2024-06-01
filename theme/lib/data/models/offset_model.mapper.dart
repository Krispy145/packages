// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'offset_model.dart';

class OffsetModelMapper extends ClassMapperBase<OffsetModel> {
  OffsetModelMapper._();

  static OffsetModelMapper? _instance;
  static OffsetModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OffsetModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'OffsetModel';

  static double? _$dx_double(OffsetModel v) => v.dx_double;
  static const Field<OffsetModel, double> _f$dx_double =
      Field('dx_double', _$dx_double, opt: true);
  static double? _$dy_double(OffsetModel v) => v.dy_double;
  static const Field<OffsetModel, double> _f$dy_double =
      Field('dy_double', _$dy_double, opt: true);

  @override
  final MappableFields<OffsetModel> fields = const {
    #dx_double: _f$dx_double,
    #dy_double: _f$dy_double,
  };

  static OffsetModel _instantiate(DecodingData data) {
    return OffsetModel(
        dx_double: data.dec(_f$dx_double), dy_double: data.dec(_f$dy_double));
  }

  @override
  final Function instantiate = _instantiate;

  static OffsetModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OffsetModel>(map);
  }

  static OffsetModel fromJson(String json) {
    return ensureInitialized().decodeJson<OffsetModel>(json);
  }
}

mixin OffsetModelMappable {
  String toJson() {
    return OffsetModelMapper.ensureInitialized()
        .encodeJson<OffsetModel>(this as OffsetModel);
  }

  Map<String, dynamic> toMap() {
    return OffsetModelMapper.ensureInitialized()
        .encodeMap<OffsetModel>(this as OffsetModel);
  }

  OffsetModelCopyWith<OffsetModel, OffsetModel, OffsetModel> get copyWith =>
      _OffsetModelCopyWithImpl(this as OffsetModel, $identity, $identity);
  @override
  String toString() {
    return OffsetModelMapper.ensureInitialized()
        .stringifyValue(this as OffsetModel);
  }

  @override
  bool operator ==(Object other) {
    return OffsetModelMapper.ensureInitialized()
        .equalsValue(this as OffsetModel, other);
  }

  @override
  int get hashCode {
    return OffsetModelMapper.ensureInitialized().hashValue(this as OffsetModel);
  }
}

extension OffsetModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OffsetModel, $Out> {
  OffsetModelCopyWith<$R, OffsetModel, $Out> get $asOffsetModel =>
      $base.as((v, t, t2) => _OffsetModelCopyWithImpl(v, t, t2));
}

abstract class OffsetModelCopyWith<$R, $In extends OffsetModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? dx_double, double? dy_double});
  OffsetModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OffsetModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OffsetModel, $Out>
    implements OffsetModelCopyWith<$R, OffsetModel, $Out> {
  _OffsetModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OffsetModel> $mapper =
      OffsetModelMapper.ensureInitialized();
  @override
  $R call({Object? dx_double = $none, Object? dy_double = $none}) =>
      $apply(FieldCopyWithData({
        if (dx_double != $none) #dx_double: dx_double,
        if (dy_double != $none) #dy_double: dy_double
      }));
  @override
  OffsetModel $make(CopyWithData data) => OffsetModel(
      dx_double: data.get(#dx_double, or: $value.dx_double),
      dy_double: data.get(#dy_double, or: $value.dy_double));

  @override
  OffsetModelCopyWith<$R2, OffsetModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OffsetModelCopyWithImpl($value, $cast, t);
}
