// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'place_opening_hours_time_model.dart';

class PlaceOpeningHoursTimeMapper
    extends ClassMapperBase<PlaceOpeningHoursTime> {
  PlaceOpeningHoursTimeMapper._();

  static PlaceOpeningHoursTimeMapper? _instance;
  static PlaceOpeningHoursTimeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlaceOpeningHoursTimeMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PlaceOpeningHoursTime';

  static double _$day(PlaceOpeningHoursTime v) => v.day;
  static const Field<PlaceOpeningHoursTime, double> _f$day =
      Field('day', _$day);
  static String _$time(PlaceOpeningHoursTime v) => v.time;
  static const Field<PlaceOpeningHoursTime, String> _f$time =
      Field('time', _$time);
  static String? _$date(PlaceOpeningHoursTime v) => v.date;
  static const Field<PlaceOpeningHoursTime, String> _f$date =
      Field('date', _$date, opt: true);
  static bool? _$truncated(PlaceOpeningHoursTime v) => v.truncated;
  static const Field<PlaceOpeningHoursTime, bool> _f$truncated =
      Field('truncated', _$truncated, opt: true);

  @override
  final MappableFields<PlaceOpeningHoursTime> fields = const {
    #day: _f$day,
    #time: _f$time,
    #date: _f$date,
    #truncated: _f$truncated,
  };

  static PlaceOpeningHoursTime _instantiate(DecodingData data) {
    return PlaceOpeningHoursTime(
        day: data.dec(_f$day),
        time: data.dec(_f$time),
        date: data.dec(_f$date),
        truncated: data.dec(_f$truncated));
  }

  @override
  final Function instantiate = _instantiate;

  static PlaceOpeningHoursTime fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlaceOpeningHoursTime>(map);
  }

  static PlaceOpeningHoursTime fromJson(String json) {
    return ensureInitialized().decodeJson<PlaceOpeningHoursTime>(json);
  }
}

mixin PlaceOpeningHoursTimeMappable {
  String toJson() {
    return PlaceOpeningHoursTimeMapper.ensureInitialized()
        .encodeJson<PlaceOpeningHoursTime>(this as PlaceOpeningHoursTime);
  }

  Map<String, dynamic> toMap() {
    return PlaceOpeningHoursTimeMapper.ensureInitialized()
        .encodeMap<PlaceOpeningHoursTime>(this as PlaceOpeningHoursTime);
  }

  PlaceOpeningHoursTimeCopyWith<PlaceOpeningHoursTime, PlaceOpeningHoursTime,
          PlaceOpeningHoursTime>
      get copyWith => _PlaceOpeningHoursTimeCopyWithImpl(
          this as PlaceOpeningHoursTime, $identity, $identity);
  @override
  String toString() {
    return PlaceOpeningHoursTimeMapper.ensureInitialized()
        .stringifyValue(this as PlaceOpeningHoursTime);
  }

  @override
  bool operator ==(Object other) {
    return PlaceOpeningHoursTimeMapper.ensureInitialized()
        .equalsValue(this as PlaceOpeningHoursTime, other);
  }

  @override
  int get hashCode {
    return PlaceOpeningHoursTimeMapper.ensureInitialized()
        .hashValue(this as PlaceOpeningHoursTime);
  }
}

extension PlaceOpeningHoursTimeValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlaceOpeningHoursTime, $Out> {
  PlaceOpeningHoursTimeCopyWith<$R, PlaceOpeningHoursTime, $Out>
      get $asPlaceOpeningHoursTime =>
          $base.as((v, t, t2) => _PlaceOpeningHoursTimeCopyWithImpl(v, t, t2));
}

abstract class PlaceOpeningHoursTimeCopyWith<
    $R,
    $In extends PlaceOpeningHoursTime,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? day, String? time, String? date, bool? truncated});
  PlaceOpeningHoursTimeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PlaceOpeningHoursTimeCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlaceOpeningHoursTime, $Out>
    implements PlaceOpeningHoursTimeCopyWith<$R, PlaceOpeningHoursTime, $Out> {
  _PlaceOpeningHoursTimeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlaceOpeningHoursTime> $mapper =
      PlaceOpeningHoursTimeMapper.ensureInitialized();
  @override
  $R call(
          {double? day,
          String? time,
          Object? date = $none,
          Object? truncated = $none}) =>
      $apply(FieldCopyWithData({
        if (day != null) #day: day,
        if (time != null) #time: time,
        if (date != $none) #date: date,
        if (truncated != $none) #truncated: truncated
      }));
  @override
  PlaceOpeningHoursTime $make(CopyWithData data) => PlaceOpeningHoursTime(
      day: data.get(#day, or: $value.day),
      time: data.get(#time, or: $value.time),
      date: data.get(#date, or: $value.date),
      truncated: data.get(#truncated, or: $value.truncated));

  @override
  PlaceOpeningHoursTimeCopyWith<$R2, PlaceOpeningHoursTime, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PlaceOpeningHoursTimeCopyWithImpl($value, $cast, t);
}
