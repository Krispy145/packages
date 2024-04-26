// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'place_opening_hours_model.dart';

class PlaceOpeningHoursMapper extends ClassMapperBase<PlaceOpeningHours> {
  PlaceOpeningHoursMapper._();

  static PlaceOpeningHoursMapper? _instance;
  static PlaceOpeningHoursMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlaceOpeningHoursMapper._());
      PlaceOpeningHoursPeriodMapper.ensureInitialized();
      PlaceSpecialDayMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlaceOpeningHours';

  static bool? _$openNow(PlaceOpeningHours v) => v.openNow;
  static const Field<PlaceOpeningHours, bool> _f$openNow =
      Field('openNow', _$openNow, key: 'open_now', opt: true);
  static List<PlaceOpeningHoursPeriod>? _$periods(PlaceOpeningHours v) =>
      v.periods;
  static const Field<PlaceOpeningHours, List<PlaceOpeningHoursPeriod>>
      _f$periods = Field('periods', _$periods, opt: true);
  static List<PlaceSpecialDay>? _$specialDays(PlaceOpeningHours v) =>
      v.specialDays;
  static const Field<PlaceOpeningHours, List<PlaceSpecialDay>> _f$specialDays =
      Field('specialDays', _$specialDays, key: 'special_days', opt: true);
  static String? _$type(PlaceOpeningHours v) => v.type;
  static const Field<PlaceOpeningHours, String> _f$type =
      Field('type', _$type, opt: true);
  static List<String>? _$weekdayText(PlaceOpeningHours v) => v.weekdayText;
  static const Field<PlaceOpeningHours, List<String>> _f$weekdayText =
      Field('weekdayText', _$weekdayText, key: 'weekday_text', opt: true);

  @override
  final MappableFields<PlaceOpeningHours> fields = const {
    #openNow: _f$openNow,
    #periods: _f$periods,
    #specialDays: _f$specialDays,
    #type: _f$type,
    #weekdayText: _f$weekdayText,
  };

  static PlaceOpeningHours _instantiate(DecodingData data) {
    return PlaceOpeningHours(
        openNow: data.dec(_f$openNow),
        periods: data.dec(_f$periods),
        specialDays: data.dec(_f$specialDays),
        type: data.dec(_f$type),
        weekdayText: data.dec(_f$weekdayText));
  }

  @override
  final Function instantiate = _instantiate;

  static PlaceOpeningHours fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlaceOpeningHours>(map);
  }

  static PlaceOpeningHours fromJson(String json) {
    return ensureInitialized().decodeJson<PlaceOpeningHours>(json);
  }
}

mixin PlaceOpeningHoursMappable {
  String toJson() {
    return PlaceOpeningHoursMapper.ensureInitialized()
        .encodeJson<PlaceOpeningHours>(this as PlaceOpeningHours);
  }

  Map<String, dynamic> toMap() {
    return PlaceOpeningHoursMapper.ensureInitialized()
        .encodeMap<PlaceOpeningHours>(this as PlaceOpeningHours);
  }

  PlaceOpeningHoursCopyWith<PlaceOpeningHours, PlaceOpeningHours,
          PlaceOpeningHours>
      get copyWith => _PlaceOpeningHoursCopyWithImpl(
          this as PlaceOpeningHours, $identity, $identity);
  @override
  String toString() {
    return PlaceOpeningHoursMapper.ensureInitialized()
        .stringifyValue(this as PlaceOpeningHours);
  }

  @override
  bool operator ==(Object other) {
    return PlaceOpeningHoursMapper.ensureInitialized()
        .equalsValue(this as PlaceOpeningHours, other);
  }

  @override
  int get hashCode {
    return PlaceOpeningHoursMapper.ensureInitialized()
        .hashValue(this as PlaceOpeningHours);
  }
}

extension PlaceOpeningHoursValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlaceOpeningHours, $Out> {
  PlaceOpeningHoursCopyWith<$R, PlaceOpeningHours, $Out>
      get $asPlaceOpeningHours =>
          $base.as((v, t, t2) => _PlaceOpeningHoursCopyWithImpl(v, t, t2));
}

abstract class PlaceOpeningHoursCopyWith<$R, $In extends PlaceOpeningHours,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
      $R,
      PlaceOpeningHoursPeriod,
      PlaceOpeningHoursPeriodCopyWith<$R, PlaceOpeningHoursPeriod,
          PlaceOpeningHoursPeriod>>? get periods;
  ListCopyWith<$R, PlaceSpecialDay,
          PlaceSpecialDayCopyWith<$R, PlaceSpecialDay, PlaceSpecialDay>>?
      get specialDays;
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>? get weekdayText;
  $R call(
      {bool? openNow,
      List<PlaceOpeningHoursPeriod>? periods,
      List<PlaceSpecialDay>? specialDays,
      String? type,
      List<String>? weekdayText});
  PlaceOpeningHoursCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PlaceOpeningHoursCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlaceOpeningHours, $Out>
    implements PlaceOpeningHoursCopyWith<$R, PlaceOpeningHours, $Out> {
  _PlaceOpeningHoursCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlaceOpeningHours> $mapper =
      PlaceOpeningHoursMapper.ensureInitialized();
  @override
  ListCopyWith<
      $R,
      PlaceOpeningHoursPeriod,
      PlaceOpeningHoursPeriodCopyWith<$R, PlaceOpeningHoursPeriod,
          PlaceOpeningHoursPeriod>>? get periods => $value.periods != null
      ? ListCopyWith($value.periods!, (v, t) => v.copyWith.$chain(t),
          (v) => call(periods: v))
      : null;
  @override
  ListCopyWith<$R, PlaceSpecialDay,
          PlaceSpecialDayCopyWith<$R, PlaceSpecialDay, PlaceSpecialDay>>?
      get specialDays => $value.specialDays != null
          ? ListCopyWith($value.specialDays!, (v, t) => v.copyWith.$chain(t),
              (v) => call(specialDays: v))
          : null;
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>>?
      get weekdayText => $value.weekdayText != null
          ? ListCopyWith(
              $value.weekdayText!,
              (v, t) => ObjectCopyWith(v, $identity, t),
              (v) => call(weekdayText: v))
          : null;
  @override
  $R call(
          {Object? openNow = $none,
          Object? periods = $none,
          Object? specialDays = $none,
          Object? type = $none,
          Object? weekdayText = $none}) =>
      $apply(FieldCopyWithData({
        if (openNow != $none) #openNow: openNow,
        if (periods != $none) #periods: periods,
        if (specialDays != $none) #specialDays: specialDays,
        if (type != $none) #type: type,
        if (weekdayText != $none) #weekdayText: weekdayText
      }));
  @override
  PlaceOpeningHours $make(CopyWithData data) => PlaceOpeningHours(
      openNow: data.get(#openNow, or: $value.openNow),
      periods: data.get(#periods, or: $value.periods),
      specialDays: data.get(#specialDays, or: $value.specialDays),
      type: data.get(#type, or: $value.type),
      weekdayText: data.get(#weekdayText, or: $value.weekdayText));

  @override
  PlaceOpeningHoursCopyWith<$R2, PlaceOpeningHours, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PlaceOpeningHoursCopyWithImpl($value, $cast, t);
}
