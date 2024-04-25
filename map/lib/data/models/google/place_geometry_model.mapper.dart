// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'place_geometry_model.dart';

class PlaceGeometryMapper extends ClassMapperBase<PlaceGeometry> {
  PlaceGeometryMapper._();

  static PlaceGeometryMapper? _instance;
  static PlaceGeometryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlaceGeometryMapper._());
      MapperContainer.globals.useAll([LatLngMapper()]);
      GoogleBoundsMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlaceGeometry';

  static LatLng _$location(PlaceGeometry v) => v.location;
  static const Field<PlaceGeometry, LatLng> _f$location =
      Field('location', _$location);
  static GoogleBounds _$viewport(PlaceGeometry v) => v.viewport;
  static const Field<PlaceGeometry, GoogleBounds> _f$viewport =
      Field('viewport', _$viewport);

  @override
  final MappableFields<PlaceGeometry> fields = const {
    #location: _f$location,
    #viewport: _f$viewport,
  };

  static PlaceGeometry _instantiate(DecodingData data) {
    return PlaceGeometry(
        location: data.dec(_f$location), viewport: data.dec(_f$viewport));
  }

  @override
  final Function instantiate = _instantiate;

  static PlaceGeometry fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlaceGeometry>(map);
  }

  static PlaceGeometry fromJson(String json) {
    return ensureInitialized().decodeJson<PlaceGeometry>(json);
  }
}

mixin PlaceGeometryMappable {
  String toJson() {
    return PlaceGeometryMapper.ensureInitialized()
        .encodeJson<PlaceGeometry>(this as PlaceGeometry);
  }

  Map<String, dynamic> toMap() {
    return PlaceGeometryMapper.ensureInitialized()
        .encodeMap<PlaceGeometry>(this as PlaceGeometry);
  }

  PlaceGeometryCopyWith<PlaceGeometry, PlaceGeometry, PlaceGeometry>
      get copyWith => _PlaceGeometryCopyWithImpl(
          this as PlaceGeometry, $identity, $identity);
  @override
  String toString() {
    return PlaceGeometryMapper.ensureInitialized()
        .stringifyValue(this as PlaceGeometry);
  }

  @override
  bool operator ==(Object other) {
    return PlaceGeometryMapper.ensureInitialized()
        .equalsValue(this as PlaceGeometry, other);
  }

  @override
  int get hashCode {
    return PlaceGeometryMapper.ensureInitialized()
        .hashValue(this as PlaceGeometry);
  }
}

extension PlaceGeometryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlaceGeometry, $Out> {
  PlaceGeometryCopyWith<$R, PlaceGeometry, $Out> get $asPlaceGeometry =>
      $base.as((v, t, t2) => _PlaceGeometryCopyWithImpl(v, t, t2));
}

abstract class PlaceGeometryCopyWith<$R, $In extends PlaceGeometry, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  GoogleBoundsCopyWith<$R, GoogleBounds, GoogleBounds> get viewport;
  $R call({LatLng? location, GoogleBounds? viewport});
  PlaceGeometryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlaceGeometryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlaceGeometry, $Out>
    implements PlaceGeometryCopyWith<$R, PlaceGeometry, $Out> {
  _PlaceGeometryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlaceGeometry> $mapper =
      PlaceGeometryMapper.ensureInitialized();
  @override
  GoogleBoundsCopyWith<$R, GoogleBounds, GoogleBounds> get viewport =>
      $value.viewport.copyWith.$chain((v) => call(viewport: v));
  @override
  $R call({LatLng? location, GoogleBounds? viewport}) =>
      $apply(FieldCopyWithData({
        if (location != null) #location: location,
        if (viewport != null) #viewport: viewport
      }));
  @override
  PlaceGeometry $make(CopyWithData data) => PlaceGeometry(
      location: data.get(#location, or: $value.location),
      viewport: data.get(#viewport, or: $value.viewport));

  @override
  PlaceGeometryCopyWith<$R2, PlaceGeometry, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlaceGeometryCopyWithImpl($value, $cast, t);
}
