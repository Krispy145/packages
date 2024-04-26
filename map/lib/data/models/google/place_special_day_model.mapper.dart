// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'place_special_day_model.dart';

class PlaceSpecialDayMapper extends ClassMapperBase<PlaceSpecialDay> {
  PlaceSpecialDayMapper._();

  static PlaceSpecialDayMapper? _instance;
  static PlaceSpecialDayMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlaceSpecialDayMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PlaceSpecialDay';

  static String? _$date(PlaceSpecialDay v) => v.date;
  static const Field<PlaceSpecialDay, String> _f$date =
      Field('date', _$date, opt: true);
  static bool? _$exceptionalHours(PlaceSpecialDay v) => v.exceptionalHours;
  static const Field<PlaceSpecialDay, bool> _f$exceptionalHours = Field(
      'exceptionalHours', _$exceptionalHours,
      key: 'exceptional_hours', opt: true);

  @override
  final MappableFields<PlaceSpecialDay> fields = const {
    #date: _f$date,
    #exceptionalHours: _f$exceptionalHours,
  };

  static PlaceSpecialDay _instantiate(DecodingData data) {
    return PlaceSpecialDay(
        date: data.dec(_f$date),
        exceptionalHours: data.dec(_f$exceptionalHours));
  }

  @override
  final Function instantiate = _instantiate;

  static PlaceSpecialDay fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlaceSpecialDay>(map);
  }

  static PlaceSpecialDay fromJson(String json) {
    return ensureInitialized().decodeJson<PlaceSpecialDay>(json);
  }
}

mixin PlaceSpecialDayMappable {
  String toJson() {
    return PlaceSpecialDayMapper.ensureInitialized()
        .encodeJson<PlaceSpecialDay>(this as PlaceSpecialDay);
  }

  Map<String, dynamic> toMap() {
    return PlaceSpecialDayMapper.ensureInitialized()
        .encodeMap<PlaceSpecialDay>(this as PlaceSpecialDay);
  }

  PlaceSpecialDayCopyWith<PlaceSpecialDay, PlaceSpecialDay, PlaceSpecialDay>
      get copyWith => _PlaceSpecialDayCopyWithImpl(
          this as PlaceSpecialDay, $identity, $identity);
  @override
  String toString() {
    return PlaceSpecialDayMapper.ensureInitialized()
        .stringifyValue(this as PlaceSpecialDay);
  }

  @override
  bool operator ==(Object other) {
    return PlaceSpecialDayMapper.ensureInitialized()
        .equalsValue(this as PlaceSpecialDay, other);
  }

  @override
  int get hashCode {
    return PlaceSpecialDayMapper.ensureInitialized()
        .hashValue(this as PlaceSpecialDay);
  }
}

extension PlaceSpecialDayValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlaceSpecialDay, $Out> {
  PlaceSpecialDayCopyWith<$R, PlaceSpecialDay, $Out> get $asPlaceSpecialDay =>
      $base.as((v, t, t2) => _PlaceSpecialDayCopyWithImpl(v, t, t2));
}

abstract class PlaceSpecialDayCopyWith<$R, $In extends PlaceSpecialDay, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? date, bool? exceptionalHours});
  PlaceSpecialDayCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PlaceSpecialDayCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlaceSpecialDay, $Out>
    implements PlaceSpecialDayCopyWith<$R, PlaceSpecialDay, $Out> {
  _PlaceSpecialDayCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlaceSpecialDay> $mapper =
      PlaceSpecialDayMapper.ensureInitialized();
  @override
  $R call({Object? date = $none, Object? exceptionalHours = $none}) =>
      $apply(FieldCopyWithData({
        if (date != $none) #date: date,
        if (exceptionalHours != $none) #exceptionalHours: exceptionalHours
      }));
  @override
  PlaceSpecialDay $make(CopyWithData data) => PlaceSpecialDay(
      date: data.get(#date, or: $value.date),
      exceptionalHours:
          data.get(#exceptionalHours, or: $value.exceptionalHours));

  @override
  PlaceSpecialDayCopyWith<$R2, PlaceSpecialDay, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlaceSpecialDayCopyWithImpl($value, $cast, t);
}
