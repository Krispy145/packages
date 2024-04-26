// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'google_bounds_model.dart';

class GoogleBoundsMapper extends ClassMapperBase<GoogleBounds> {
  GoogleBoundsMapper._();

  static GoogleBoundsMapper? _instance;
  static GoogleBoundsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = GoogleBoundsMapper._());
      MapperContainer.globals.useAll([LatLngMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'GoogleBounds';

  static LatLng _$northeast(GoogleBounds v) => v.northeast;
  static const Field<GoogleBounds, LatLng> _f$northeast =
      Field('northeast', _$northeast);
  static LatLng _$southwest(GoogleBounds v) => v.southwest;
  static const Field<GoogleBounds, LatLng> _f$southwest =
      Field('southwest', _$southwest);

  @override
  final MappableFields<GoogleBounds> fields = const {
    #northeast: _f$northeast,
    #southwest: _f$southwest,
  };

  static GoogleBounds _instantiate(DecodingData data) {
    return GoogleBounds(
        northeast: data.dec(_f$northeast), southwest: data.dec(_f$southwest));
  }

  @override
  final Function instantiate = _instantiate;

  static GoogleBounds fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<GoogleBounds>(map);
  }

  static GoogleBounds fromJson(String json) {
    return ensureInitialized().decodeJson<GoogleBounds>(json);
  }
}

mixin GoogleBoundsMappable {
  String toJson() {
    return GoogleBoundsMapper.ensureInitialized()
        .encodeJson<GoogleBounds>(this as GoogleBounds);
  }

  Map<String, dynamic> toMap() {
    return GoogleBoundsMapper.ensureInitialized()
        .encodeMap<GoogleBounds>(this as GoogleBounds);
  }

  GoogleBoundsCopyWith<GoogleBounds, GoogleBounds, GoogleBounds> get copyWith =>
      _GoogleBoundsCopyWithImpl(this as GoogleBounds, $identity, $identity);
  @override
  String toString() {
    return GoogleBoundsMapper.ensureInitialized()
        .stringifyValue(this as GoogleBounds);
  }

  @override
  bool operator ==(Object other) {
    return GoogleBoundsMapper.ensureInitialized()
        .equalsValue(this as GoogleBounds, other);
  }

  @override
  int get hashCode {
    return GoogleBoundsMapper.ensureInitialized()
        .hashValue(this as GoogleBounds);
  }
}

extension GoogleBoundsValueCopy<$R, $Out>
    on ObjectCopyWith<$R, GoogleBounds, $Out> {
  GoogleBoundsCopyWith<$R, GoogleBounds, $Out> get $asGoogleBounds =>
      $base.as((v, t, t2) => _GoogleBoundsCopyWithImpl(v, t, t2));
}

abstract class GoogleBoundsCopyWith<$R, $In extends GoogleBounds, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({LatLng? northeast, LatLng? southwest});
  GoogleBoundsCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _GoogleBoundsCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, GoogleBounds, $Out>
    implements GoogleBoundsCopyWith<$R, GoogleBounds, $Out> {
  _GoogleBoundsCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<GoogleBounds> $mapper =
      GoogleBoundsMapper.ensureInitialized();
  @override
  $R call({LatLng? northeast, LatLng? southwest}) => $apply(FieldCopyWithData({
        if (northeast != null) #northeast: northeast,
        if (southwest != null) #southwest: southwest
      }));
  @override
  GoogleBounds $make(CopyWithData data) => GoogleBounds(
      northeast: data.get(#northeast, or: $value.northeast),
      southwest: data.get(#southwest, or: $value.southwest));

  @override
  GoogleBoundsCopyWith<$R2, GoogleBounds, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _GoogleBoundsCopyWithImpl($value, $cast, t);
}
