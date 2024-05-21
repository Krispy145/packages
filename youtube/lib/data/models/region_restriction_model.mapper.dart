// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'region_restriction_model.dart';

class RegionRestrictionModelMapper
    extends ClassMapperBase<RegionRestrictionModel> {
  RegionRestrictionModelMapper._();

  static RegionRestrictionModelMapper? _instance;
  static RegionRestrictionModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RegionRestrictionModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'RegionRestrictionModel';

  static List<String>? _$allowed(RegionRestrictionModel v) => v.allowed;
  static const Field<RegionRestrictionModel, List<String>> _f$allowed =
      Field('allowed', _$allowed, opt: true);
  static List<String>? _$blocked(RegionRestrictionModel v) => v.blocked;
  static const Field<RegionRestrictionModel, List<String>> _f$blocked =
      Field('blocked', _$blocked, opt: true);

  @override
  final MappableFields<RegionRestrictionModel> fields = const {
    #allowed: _f$allowed,
    #blocked: _f$blocked,
  };

  static RegionRestrictionModel _instantiate(DecodingData data) {
    return RegionRestrictionModel(
        allowed: data.dec(_f$allowed), blocked: data.dec(_f$blocked));
  }

  @override
  final Function instantiate = _instantiate;

  static RegionRestrictionModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RegionRestrictionModel>(map);
  }

  static RegionRestrictionModel fromJson(String json) {
    return ensureInitialized().decodeJson<RegionRestrictionModel>(json);
  }
}

mixin RegionRestrictionModelMappable {
  String toJson() {
    return RegionRestrictionModelMapper.ensureInitialized()
        .encodeJson<RegionRestrictionModel>(this as RegionRestrictionModel);
  }

  Map<String, dynamic> toMap() {
    return RegionRestrictionModelMapper.ensureInitialized()
        .encodeMap<RegionRestrictionModel>(this as RegionRestrictionModel);
  }

  RegionRestrictionModelCopyWith<RegionRestrictionModel, RegionRestrictionModel,
          RegionRestrictionModel>
      get copyWith => _RegionRestrictionModelCopyWithImpl(
          this as RegionRestrictionModel, $identity, $identity);
  @override
  String toString() {
    return RegionRestrictionModelMapper.ensureInitialized()
        .stringifyValue(this as RegionRestrictionModel);
  }

  @override
  bool operator ==(Object other) {
    return RegionRestrictionModelMapper.ensureInitialized()
        .equalsValue(this as RegionRestrictionModel, other);
  }

  @override
  int get hashCode {
    return RegionRestrictionModelMapper.ensureInitialized()
        .hashValue(this as RegionRestrictionModel);
  }
}

extension RegionRestrictionModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, RegionRestrictionModel, $Out> {
  RegionRestrictionModelCopyWith<$R, RegionRestrictionModel, $Out>
      get $asRegionRestrictionModel =>
          $base.as((v, t, t2) => _RegionRestrictionModelCopyWithImpl(v, t, t2));
}

abstract class RegionRestrictionModelCopyWith<
    $R,
    $In extends RegionRestrictionModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get allowed;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get blocked;
  $R call({List<String>? allowed, List<String>? blocked});
  RegionRestrictionModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _RegionRestrictionModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, RegionRestrictionModel, $Out>
    implements
        RegionRestrictionModelCopyWith<$R, RegionRestrictionModel, $Out> {
  _RegionRestrictionModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RegionRestrictionModel> $mapper =
      RegionRestrictionModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get allowed =>
      $value.allowed != null
          ? ListCopyWith(
              $value.allowed!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(allowed: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get blocked =>
      $value.blocked != null
          ? ListCopyWith(
              $value.blocked!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(blocked: v))
          : null;
  @override
  $R call({Object? allowed = $none, Object? blocked = $none}) =>
      $apply(FieldCopyWithData({
        if (allowed != $none) #allowed: allowed,
        if (blocked != $none) #blocked: blocked
      }));
  @override
  RegionRestrictionModel $make(CopyWithData data) => RegionRestrictionModel(
      allowed: data.get(#allowed, or: $value.allowed),
      blocked: data.get(#blocked, or: $value.blocked));

  @override
  RegionRestrictionModelCopyWith<$R2, RegionRestrictionModel, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _RegionRestrictionModelCopyWithImpl($value, $cast, t);
}
