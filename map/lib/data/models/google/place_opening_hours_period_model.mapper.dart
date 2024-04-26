// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'place_opening_hours_period_model.dart';

class PlaceOpeningHoursPeriodMapper
    extends ClassMapperBase<PlaceOpeningHoursPeriod> {
  PlaceOpeningHoursPeriodMapper._();

  static PlaceOpeningHoursPeriodMapper? _instance;
  static PlaceOpeningHoursPeriodMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = PlaceOpeningHoursPeriodMapper._());
      PlaceOpeningHoursTimeMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'PlaceOpeningHoursPeriod';

  static PlaceOpeningHoursTime? _$close(PlaceOpeningHoursPeriod v) => v.close;
  static const Field<PlaceOpeningHoursPeriod, PlaceOpeningHoursTime> _f$close =
      Field('close', _$close, opt: true);
  static PlaceOpeningHoursTime? _$open(PlaceOpeningHoursPeriod v) => v.open;
  static const Field<PlaceOpeningHoursPeriod, PlaceOpeningHoursTime> _f$open =
      Field('open', _$open, opt: true);

  @override
  final MappableFields<PlaceOpeningHoursPeriod> fields = const {
    #close: _f$close,
    #open: _f$open,
  };

  static PlaceOpeningHoursPeriod _instantiate(DecodingData data) {
    return PlaceOpeningHoursPeriod(
        close: data.dec(_f$close), open: data.dec(_f$open));
  }

  @override
  final Function instantiate = _instantiate;

  static PlaceOpeningHoursPeriod fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlaceOpeningHoursPeriod>(map);
  }

  static PlaceOpeningHoursPeriod fromJson(String json) {
    return ensureInitialized().decodeJson<PlaceOpeningHoursPeriod>(json);
  }
}

mixin PlaceOpeningHoursPeriodMappable {
  String toJson() {
    return PlaceOpeningHoursPeriodMapper.ensureInitialized()
        .encodeJson<PlaceOpeningHoursPeriod>(this as PlaceOpeningHoursPeriod);
  }

  Map<String, dynamic> toMap() {
    return PlaceOpeningHoursPeriodMapper.ensureInitialized()
        .encodeMap<PlaceOpeningHoursPeriod>(this as PlaceOpeningHoursPeriod);
  }

  PlaceOpeningHoursPeriodCopyWith<PlaceOpeningHoursPeriod,
          PlaceOpeningHoursPeriod, PlaceOpeningHoursPeriod>
      get copyWith => _PlaceOpeningHoursPeriodCopyWithImpl(
          this as PlaceOpeningHoursPeriod, $identity, $identity);
  @override
  String toString() {
    return PlaceOpeningHoursPeriodMapper.ensureInitialized()
        .stringifyValue(this as PlaceOpeningHoursPeriod);
  }

  @override
  bool operator ==(Object other) {
    return PlaceOpeningHoursPeriodMapper.ensureInitialized()
        .equalsValue(this as PlaceOpeningHoursPeriod, other);
  }

  @override
  int get hashCode {
    return PlaceOpeningHoursPeriodMapper.ensureInitialized()
        .hashValue(this as PlaceOpeningHoursPeriod);
  }
}

extension PlaceOpeningHoursPeriodValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PlaceOpeningHoursPeriod, $Out> {
  PlaceOpeningHoursPeriodCopyWith<$R, PlaceOpeningHoursPeriod, $Out>
      get $asPlaceOpeningHoursPeriod => $base
          .as((v, t, t2) => _PlaceOpeningHoursPeriodCopyWithImpl(v, t, t2));
}

abstract class PlaceOpeningHoursPeriodCopyWith<
    $R,
    $In extends PlaceOpeningHoursPeriod,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  PlaceOpeningHoursTimeCopyWith<$R, PlaceOpeningHoursTime,
      PlaceOpeningHoursTime>? get close;
  PlaceOpeningHoursTimeCopyWith<$R, PlaceOpeningHoursTime,
      PlaceOpeningHoursTime>? get open;
  $R call({PlaceOpeningHoursTime? close, PlaceOpeningHoursTime? open});
  PlaceOpeningHoursPeriodCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _PlaceOpeningHoursPeriodCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlaceOpeningHoursPeriod, $Out>
    implements
        PlaceOpeningHoursPeriodCopyWith<$R, PlaceOpeningHoursPeriod, $Out> {
  _PlaceOpeningHoursPeriodCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlaceOpeningHoursPeriod> $mapper =
      PlaceOpeningHoursPeriodMapper.ensureInitialized();
  @override
  PlaceOpeningHoursTimeCopyWith<$R, PlaceOpeningHoursTime,
          PlaceOpeningHoursTime>?
      get close => $value.close?.copyWith.$chain((v) => call(close: v));
  @override
  PlaceOpeningHoursTimeCopyWith<$R, PlaceOpeningHoursTime,
          PlaceOpeningHoursTime>?
      get open => $value.open?.copyWith.$chain((v) => call(open: v));
  @override
  $R call({Object? close = $none, Object? open = $none}) =>
      $apply(FieldCopyWithData(
          {if (close != $none) #close: close, if (open != $none) #open: open}));
  @override
  PlaceOpeningHoursPeriod $make(CopyWithData data) => PlaceOpeningHoursPeriod(
      close: data.get(#close, or: $value.close),
      open: data.get(#open, or: $value.open));

  @override
  PlaceOpeningHoursPeriodCopyWith<$R2, PlaceOpeningHoursPeriod, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _PlaceOpeningHoursPeriodCopyWithImpl($value, $cast, t);
}
