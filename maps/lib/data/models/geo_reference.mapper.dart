// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'geo_reference.dart';

class GeoReferenceMapper extends ClassMapperBase<GeoReference> {
  GeoReferenceMapper._();

  static GeoReferenceMapper? _instance;
  static GeoReferenceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GeoReferenceMapper._());
      MapperContainer.globals.useAll([LatLngMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'GeoReference';

  static LatLng _$geoPoint(GeoReference v) => v.geoPoint;
  static const Field<GeoReference, LatLng> _f$geoPoint =
      Field('geoPoint', _$geoPoint, key: 'geo_point');

  @override
  final MappableFields<GeoReference> fields = const {
    #geoPoint: _f$geoPoint,
  };

  static GeoReference _instantiate(DecodingData data) {
    return GeoReference(geoPoint: data.dec(_f$geoPoint));
  }

  @override
  final Function instantiate = _instantiate;

  static GeoReference fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GeoReference>(map);
  }

  static GeoReference fromJson(String json) {
    return ensureInitialized().decodeJson<GeoReference>(json);
  }
}

mixin GeoReferenceMappable {
  String toJson() {
    return GeoReferenceMapper.ensureInitialized()
        .encodeJson<GeoReference>(this as GeoReference);
  }

  Map<String, dynamic> toMap() {
    return GeoReferenceMapper.ensureInitialized()
        .encodeMap<GeoReference>(this as GeoReference);
  }

  GeoReferenceCopyWith<GeoReference, GeoReference, GeoReference> get copyWith =>
      _GeoReferenceCopyWithImpl(this as GeoReference, $identity, $identity);
  @override
  String toString() {
    return GeoReferenceMapper.ensureInitialized()
        .stringifyValue(this as GeoReference);
  }

  @override
  bool operator ==(Object other) {
    return GeoReferenceMapper.ensureInitialized()
        .equalsValue(this as GeoReference, other);
  }

  @override
  int get hashCode {
    return GeoReferenceMapper.ensureInitialized()
        .hashValue(this as GeoReference);
  }
}

extension GeoReferenceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GeoReference, $Out> {
  GeoReferenceCopyWith<$R, GeoReference, $Out> get $asGeoReference =>
      $base.as((v, t, t2) => _GeoReferenceCopyWithImpl(v, t, t2));
}

abstract class GeoReferenceCopyWith<$R, $In extends GeoReference, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({LatLng? geoPoint});
  GeoReferenceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GeoReferenceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GeoReference, $Out>
    implements GeoReferenceCopyWith<$R, GeoReference, $Out> {
  _GeoReferenceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GeoReference> $mapper =
      GeoReferenceMapper.ensureInitialized();
  @override
  $R call({LatLng? geoPoint}) =>
      $apply(FieldCopyWithData({if (geoPoint != null) #geoPoint: geoPoint}));
  @override
  GeoReference $make(CopyWithData data) =>
      GeoReference(geoPoint: data.get(#geoPoint, or: $value.geoPoint));

  @override
  GeoReferenceCopyWith<$R2, GeoReference, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GeoReferenceCopyWithImpl($value, $cast, t);
}
