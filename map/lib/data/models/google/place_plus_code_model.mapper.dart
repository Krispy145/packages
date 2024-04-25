// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'place_plus_code_model.dart';

class PlacePlusCodeMapper extends ClassMapperBase<PlacePlusCode> {
  PlacePlusCodeMapper._();

  static PlacePlusCodeMapper? _instance;
  static PlacePlusCodeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlacePlusCodeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PlacePlusCode';

  static String _$globalCode(PlacePlusCode v) => v.globalCode;
  static const Field<PlacePlusCode, String> _f$globalCode =
      Field('globalCode', _$globalCode, key: 'global_code');
  static String? _$compoundCode(PlacePlusCode v) => v.compoundCode;
  static const Field<PlacePlusCode, String> _f$compoundCode =
      Field('compoundCode', _$compoundCode, key: 'compound_code', opt: true);

  @override
  final MappableFields<PlacePlusCode> fields = const {
    #globalCode: _f$globalCode,
    #compoundCode: _f$compoundCode,
  };

  static PlacePlusCode _instantiate(DecodingData data) {
    return PlacePlusCode(
        globalCode: data.dec(_f$globalCode),
        compoundCode: data.dec(_f$compoundCode));
  }

  @override
  final Function instantiate = _instantiate;

  static PlacePlusCode fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlacePlusCode>(map);
  }

  static PlacePlusCode fromJson(String json) {
    return ensureInitialized().decodeJson<PlacePlusCode>(json);
  }
}

mixin PlacePlusCodeMappable {
  String toJson() {
    return PlacePlusCodeMapper.ensureInitialized()
        .encodeJson<PlacePlusCode>(this as PlacePlusCode);
  }

  Map<String, dynamic> toMap() {
    return PlacePlusCodeMapper.ensureInitialized()
        .encodeMap<PlacePlusCode>(this as PlacePlusCode);
  }

  PlacePlusCodeCopyWith<PlacePlusCode, PlacePlusCode, PlacePlusCode>
      get copyWith => _PlacePlusCodeCopyWithImpl(
          this as PlacePlusCode, $identity, $identity);
  @override
  String toString() {
    return PlacePlusCodeMapper.ensureInitialized()
        .stringifyValue(this as PlacePlusCode);
  }

  @override
  bool operator ==(Object other) {
    return PlacePlusCodeMapper.ensureInitialized()
        .equalsValue(this as PlacePlusCode, other);
  }

  @override
  int get hashCode {
    return PlacePlusCodeMapper.ensureInitialized()
        .hashValue(this as PlacePlusCode);
  }
}

extension PlacePlusCodeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlacePlusCode, $Out> {
  PlacePlusCodeCopyWith<$R, PlacePlusCode, $Out> get $asPlacePlusCode =>
      $base.as((v, t, t2) => _PlacePlusCodeCopyWithImpl(v, t, t2));
}

abstract class PlacePlusCodeCopyWith<$R, $In extends PlacePlusCode, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? globalCode, String? compoundCode});
  PlacePlusCodeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlacePlusCodeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlacePlusCode, $Out>
    implements PlacePlusCodeCopyWith<$R, PlacePlusCode, $Out> {
  _PlacePlusCodeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlacePlusCode> $mapper =
      PlacePlusCodeMapper.ensureInitialized();
  @override
  $R call({String? globalCode, Object? compoundCode = $none}) =>
      $apply(FieldCopyWithData({
        if (globalCode != null) #globalCode: globalCode,
        if (compoundCode != $none) #compoundCode: compoundCode
      }));
  @override
  PlacePlusCode $make(CopyWithData data) => PlacePlusCode(
      globalCode: data.get(#globalCode, or: $value.globalCode),
      compoundCode: data.get(#compoundCode, or: $value.compoundCode));

  @override
  PlacePlusCodeCopyWith<$R2, PlacePlusCode, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlacePlusCodeCopyWithImpl($value, $cast, t);
}
