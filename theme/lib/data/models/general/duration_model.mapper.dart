// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'duration_model.dart';

class DurationModelMapper extends ClassMapperBase<DurationModel> {
  DurationModelMapper._();

  static DurationModelMapper? _instance;
  static DurationModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DurationModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DurationModel';

  static int? _$days_int(DurationModel v) => v.days_int;
  static const Field<DurationModel, int> _f$days_int =
      Field('days_int', _$days_int, opt: true);
  static int? _$hours_int(DurationModel v) => v.hours_int;
  static const Field<DurationModel, int> _f$hours_int =
      Field('hours_int', _$hours_int, opt: true);
  static int? _$minutes_int(DurationModel v) => v.minutes_int;
  static const Field<DurationModel, int> _f$minutes_int =
      Field('minutes_int', _$minutes_int, opt: true);
  static int? _$seconds_int(DurationModel v) => v.seconds_int;
  static const Field<DurationModel, int> _f$seconds_int =
      Field('seconds_int', _$seconds_int, opt: true);
  static int? _$milliseconds_int(DurationModel v) => v.milliseconds_int;
  static const Field<DurationModel, int> _f$milliseconds_int =
      Field('milliseconds_int', _$milliseconds_int, opt: true);
  static int? _$microseconds_int(DurationModel v) => v.microseconds_int;
  static const Field<DurationModel, int> _f$microseconds_int =
      Field('microseconds_int', _$microseconds_int, opt: true);

  @override
  final MappableFields<DurationModel> fields = const {
    #days_int: _f$days_int,
    #hours_int: _f$hours_int,
    #minutes_int: _f$minutes_int,
    #seconds_int: _f$seconds_int,
    #milliseconds_int: _f$milliseconds_int,
    #microseconds_int: _f$microseconds_int,
  };

  static DurationModel _instantiate(DecodingData data) {
    return DurationModel(
        days_int: data.dec(_f$days_int),
        hours_int: data.dec(_f$hours_int),
        minutes_int: data.dec(_f$minutes_int),
        seconds_int: data.dec(_f$seconds_int),
        milliseconds_int: data.dec(_f$milliseconds_int),
        microseconds_int: data.dec(_f$microseconds_int));
  }

  @override
  final Function instantiate = _instantiate;

  static DurationModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DurationModel>(map);
  }

  static DurationModel fromJson(String json) {
    return ensureInitialized().decodeJson<DurationModel>(json);
  }
}

mixin DurationModelMappable {
  String toJson() {
    return DurationModelMapper.ensureInitialized()
        .encodeJson<DurationModel>(this as DurationModel);
  }

  Map<String, dynamic> toMap() {
    return DurationModelMapper.ensureInitialized()
        .encodeMap<DurationModel>(this as DurationModel);
  }

  DurationModelCopyWith<DurationModel, DurationModel, DurationModel>
      get copyWith => _DurationModelCopyWithImpl(
          this as DurationModel, $identity, $identity);
  @override
  String toString() {
    return DurationModelMapper.ensureInitialized()
        .stringifyValue(this as DurationModel);
  }

  @override
  bool operator ==(Object other) {
    return DurationModelMapper.ensureInitialized()
        .equalsValue(this as DurationModel, other);
  }

  @override
  int get hashCode {
    return DurationModelMapper.ensureInitialized()
        .hashValue(this as DurationModel);
  }
}

extension DurationModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DurationModel, $Out> {
  DurationModelCopyWith<$R, DurationModel, $Out> get $asDurationModel =>
      $base.as((v, t, t2) => _DurationModelCopyWithImpl(v, t, t2));
}

abstract class DurationModelCopyWith<$R, $In extends DurationModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {int? days_int,
      int? hours_int,
      int? minutes_int,
      int? seconds_int,
      int? milliseconds_int,
      int? microseconds_int});
  DurationModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DurationModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DurationModel, $Out>
    implements DurationModelCopyWith<$R, DurationModel, $Out> {
  _DurationModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DurationModel> $mapper =
      DurationModelMapper.ensureInitialized();
  @override
  $R call(
          {Object? days_int = $none,
          Object? hours_int = $none,
          Object? minutes_int = $none,
          Object? seconds_int = $none,
          Object? milliseconds_int = $none,
          Object? microseconds_int = $none}) =>
      $apply(FieldCopyWithData({
        if (days_int != $none) #days_int: days_int,
        if (hours_int != $none) #hours_int: hours_int,
        if (minutes_int != $none) #minutes_int: minutes_int,
        if (seconds_int != $none) #seconds_int: seconds_int,
        if (milliseconds_int != $none) #milliseconds_int: milliseconds_int,
        if (microseconds_int != $none) #microseconds_int: microseconds_int
      }));
  @override
  DurationModel $make(CopyWithData data) => DurationModel(
      days_int: data.get(#days_int, or: $value.days_int),
      hours_int: data.get(#hours_int, or: $value.hours_int),
      minutes_int: data.get(#minutes_int, or: $value.minutes_int),
      seconds_int: data.get(#seconds_int, or: $value.seconds_int),
      milliseconds_int:
          data.get(#milliseconds_int, or: $value.milliseconds_int),
      microseconds_int:
          data.get(#microseconds_int, or: $value.microseconds_int));

  @override
  DurationModelCopyWith<$R2, DurationModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DurationModelCopyWithImpl($value, $cast, t);
}
