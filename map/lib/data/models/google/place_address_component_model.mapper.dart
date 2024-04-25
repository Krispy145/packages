// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'place_address_component_model.dart';

class PlaceAddressComponentMapper
    extends ClassMapperBase<PlaceAddressComponent> {
  PlaceAddressComponentMapper._();

  static PlaceAddressComponentMapper? _instance;
  static PlaceAddressComponentMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlaceAddressComponentMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PlaceAddressComponent';

  static String _$longName(PlaceAddressComponent v) => v.longName;
  static const Field<PlaceAddressComponent, String> _f$longName =
      Field('longName', _$longName, key: 'long_name');
  static String _$shortName(PlaceAddressComponent v) => v.shortName;
  static const Field<PlaceAddressComponent, String> _f$shortName =
      Field('shortName', _$shortName, key: 'short_name');
  static List<String> _$types(PlaceAddressComponent v) => v.types;
  static const Field<PlaceAddressComponent, List<String>> _f$types =
      Field('types', _$types);

  @override
  final MappableFields<PlaceAddressComponent> fields = const {
    #longName: _f$longName,
    #shortName: _f$shortName,
    #types: _f$types,
  };

  static PlaceAddressComponent _instantiate(DecodingData data) {
    return PlaceAddressComponent(
        longName: data.dec(_f$longName),
        shortName: data.dec(_f$shortName),
        types: data.dec(_f$types));
  }

  @override
  final Function instantiate = _instantiate;

  static PlaceAddressComponent fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlaceAddressComponent>(map);
  }

  static PlaceAddressComponent fromJson(String json) {
    return ensureInitialized().decodeJson<PlaceAddressComponent>(json);
  }
}

mixin PlaceAddressComponentMappable {
  String toJson() {
    return PlaceAddressComponentMapper.ensureInitialized()
        .encodeJson<PlaceAddressComponent>(this as PlaceAddressComponent);
  }

  Map<String, dynamic> toMap() {
    return PlaceAddressComponentMapper.ensureInitialized()
        .encodeMap<PlaceAddressComponent>(this as PlaceAddressComponent);
  }

  PlaceAddressComponentCopyWith<PlaceAddressComponent, PlaceAddressComponent,
          PlaceAddressComponent>
      get copyWith => _PlaceAddressComponentCopyWithImpl(
          this as PlaceAddressComponent, $identity, $identity);
  @override
  String toString() {
    return PlaceAddressComponentMapper.ensureInitialized()
        .stringifyValue(this as PlaceAddressComponent);
  }

  @override
  bool operator ==(Object other) {
    return PlaceAddressComponentMapper.ensureInitialized()
        .equalsValue(this as PlaceAddressComponent, other);
  }

  @override
  int get hashCode {
    return PlaceAddressComponentMapper.ensureInitialized()
        .hashValue(this as PlaceAddressComponent);
  }
}

extension PlaceAddressComponentValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlaceAddressComponent, $Out> {
  PlaceAddressComponentCopyWith<$R, PlaceAddressComponent, $Out>
      get $asPlaceAddressComponent =>
          $base.as((v, t, t2) => _PlaceAddressComponentCopyWithImpl(v, t, t2));
}

abstract class PlaceAddressComponentCopyWith<
    $R,
    $In extends PlaceAddressComponent,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get types;
  $R call({String? longName, String? shortName, List<String>? types});
  PlaceAddressComponentCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PlaceAddressComponentCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlaceAddressComponent, $Out>
    implements PlaceAddressComponentCopyWith<$R, PlaceAddressComponent, $Out> {
  _PlaceAddressComponentCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlaceAddressComponent> $mapper =
      PlaceAddressComponentMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get types =>
      ListCopyWith($value.types, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(types: v));
  @override
  $R call({String? longName, String? shortName, List<String>? types}) =>
      $apply(FieldCopyWithData({
        if (longName != null) #longName: longName,
        if (shortName != null) #shortName: shortName,
        if (types != null) #types: types
      }));
  @override
  PlaceAddressComponent $make(CopyWithData data) => PlaceAddressComponent(
      longName: data.get(#longName, or: $value.longName),
      shortName: data.get(#shortName, or: $value.shortName),
      types: data.get(#types, or: $value.types));

  @override
  PlaceAddressComponentCopyWith<$R2, PlaceAddressComponent, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PlaceAddressComponentCopyWithImpl($value, $cast, t);
}
